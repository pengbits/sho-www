import $ from 'jquery';
import VideoPlay7r from './player'
import brightcovePlayerLoader from '@brightcove/player-loader';
import Modal, { modal_events } from './modal'
import VideoPlayerAgeGate from '../video-player/age-gate-react/';
import AgeGateComponent from '../video-player/age-gate-react/';
import { kebabify } from '../utils/string';

export const brightcove_account_id = '63128';
const player_namespace = 'video-play7r';

const brightcove_player_ids = {
  dev: '7JuE5DqUiM', // to test geo-lockout use 'oDHnMHj9z'
  prod: 'WAPuItek9'
}
// TODO dont use data-attr for player-name
const brightcove_player_names = {
  dev: 'Sho.com Edge Dev&Qa',
  prod: 'Sho.com 7 Prod'
}

const player_types = {
  modal: 'modal',
  placeholder: 'placeholder'
}

let player_instances = []
let modal_instances = []
let playerAttrs = {}
let modalPlayerEventFunctions = {}

export const player_event_names = {
  'created'           : 'created',
  'destroyed'         : 'destroyed',
  'error'             : 'error',
  'metadata_loaded'   : 'metadata_loaded',
  'metadata_rejected' : 'metadata_rejected',
  'ended'             : 'ended',
  'fullscreen_changed': 'fullscreen_changed',
  'fullscreen_change_rejected': 'fullscreen_change_rejected'
}
export const player_events = Object.keys(player_event_names).reduce((store,eventName) => {
  store[eventName] = new Event(`video-player:${eventName}`)
  return store
}, {})

Object.keys(player_events).map(k => {
  player_events[k].initEvent(`video-player:${k}`, true, true)
})

class Factory {
  static trigger(eventName, data = {}) {
    const e = player_events[eventName]
    // console.log(`|factory| trigger('${eventName}')`)
    e.data = data
    document.dispatchEvent(e)
  }

  static on(eventName, fn) {
    // console.log(`|factory| on('${eventName}') called`)
    if (player_event_names[eventName]) {
      document.addEventListener(`video-player:${player_event_names[eventName]}`, fn)
    }
  }

  static off(eventName, fn) {
    // console.log(`|factory| off('${eventName}') called`)
    if (player_event_names[eventName]) {
      document.removeEventListener(`video-player:${player_event_names[eventName]}`, fn)
    }
  } 

  static decorate({el}){

    const {
      videoId,
      defer,
      ageGate,
      autoplay,
      ...attrs
    } = $(el).data()

    const opts = {
      el,
      id:videoId,
      insertMode:'replace',
      autoplay,
      type: player_types.placeholder,
      ...attrs
    }
    
    if (ageGate && !AgeGateComponent.getSuccessCookie()){
      const ageGateContainer = $(el).find(`.${player_namespace}__age-gate-container`)[0]
      VideoPlayerAgeGate.factory(ageGateContainer, ageGate)
      $(window).on('videoAgeGateSuccess', (e => Factory.create(opts))) // TODO enforce defer if mobile, ie in onAgeGateSuccess callback
    } else if(defer){
      $(el).one('click', (e => Factory.create(opts)))
    }
    else {
      Factory.create(opts)
    }
  }

  static create({
    el,
    id,
    insertMode,
    fullscreen,
    autoplay,
    ...attrs
  }){ 
    try {
      if(!el) throw new Error('no container element provided')

      const instanceId = getUniquePlayerId({ id })
      const shouldFullscreen = Factory.shouldAttemptFullscreen(fullscreen),
      
      playerAttrs = {
        instanceId,
        fullscreen: shouldFullscreen,
        ...attrs 
      }

      console.log('|factory| create shouldFullscreen=' + shouldFullscreen)
      brightcovePlayerLoader({  
        refNode: el,
        refNodeInsert: (insertMode || 'append'),
        accountId: brightcove_account_id,
        playerId: getPlayerIdForEnvironment(getEnvironment()),
        embedId: 'default',
        videoId: id,  
        onEmbedCreated: (el => Factory.onEmbedCreated(el, playerAttrs))
      })
      .then(function({ref}){
        const opts = {
          player: ref, 
          type: attrs.type,
          id, // videoId
          instanceId,
          autoplay,
          fullscreen: shouldFullscreen
        }

        const p = new VideoPlay7r(opts)
        Factory.trigger('created', opts)
        player_instances.push({
          'player': p,
          'type'  : attrs.type,
          // the instance id is set on the player embed and it is the key for getting the player 
          // when using videojs.getAllPlayers()... we may not need it here at all?
          'id'    : instanceId
        })
      })
      .catch(function(e){
        throw new Error(e.message)
      })
    }
    catch (e){
      console.error(e, '!')
    }
  }
  
  static onEmbedCreated(el, attrs){
    $(el).addClass(`${player_namespace} vjs-fluid`)
    attrs.playerName = brightcove_player_names[getEnvironment()]
    Factory.setEmbedAttributes(el, attrs)
    if(attrs.type == player_types.placeholder) {
      Factory.setPlaceholderPlayerListeners(el)
    }
  }
  
  static setEmbedAttributes(el, {autoplay, instanceId, ...attrs}){
    // set element id to the unique player instance id so videojs reference will be intact for MediaHeartbeatDelegate integration
    el.id = instanceId
    
    // set playsinline=true if fullscreen explicitly set to false (not desirable in in-page player)
    if(!attrs.fullscreen) {
      console.log('|factory| found !fs, setting playsinline to true')
      $(el).attr('playsinline', true)
    }

    // set data attrs - any other attributes are passed to heartbeat media-delegate via data-{propety-name} on container
    for (const k in attrs) {
      const key = kebabify(k)  // assetId -> asset-id 
      el.setAttribute(`data-${key}`, attrs[k])
    }

    // console.log('setEmbedAttributes', el)
  }


  static modal({id,ageGate, ...attrs}){
    console.log(`|factory| modal({id:${id}, ageGate:${ageGate} shouldFullscreen: ${attrs.fullscreen}})`)
    const modal = Factory.createOrShowModal({id,ageGate, ...attrs})
    const el = getPlaceholderElement(modal.getInnerContent(), attrs)
    const opts= {
      el,
      id,
      insertMode: 'append',
      type: player_types.modal,
      ...attrs
    }

    if (ageGate && !AgeGateComponent.getSuccessCookie()) {
      VideoPlayerAgeGate.factory(opts.el, ageGate);
      $(window).on('videoAgeGateSuccess', Factory.beforeAttemptPlayback.bind(Factory, {modal,opts}))
    } 
    else {
      console.log('|factory| no age-gate, or else success cookie found, call beforeAttemptPlayback()')
      Factory.beforeAttemptPlayback({modal,opts})
    }
  }

  static createOrShowModal({ id, ageGate, ...attrs }) {
    if (!modal_instances.length) {
      console.log('|factory| creating new modal w/ awaitOnClose()')
      modal_instances.push(new Modal({
        awaitOnClose: Factory.awaitOnClose,
        disableTransitions: Factory.isMobile(),
        ageGate
      }))
    } else {
      console.log('|factory| found prexisting modal, setting to visible')
      modal_instances[0].show()
    }
    return modal_instances[0]
  }

  // 1,2 these methods are only used in modal context, conside renaming
  // beforeAttemptPlayback (beforeAttemptModalPlayback), attemptPlayback (atemptModalPlayback)
  // 1
  static beforeAttemptPlayback  ({modal,opts}) {
    modal && Factory.setModalPlayerListeners({ })

    if (opts.id) {
      console.log('|factory| id was provided, attempting playback')
      Factory.attemptPlayback(opts)
    } else {
      console.log('|factory| id was not provided, pre-instantiating for eager-load')
      modal.hide()
    }
  }

  // 2
  static attemptPlayback({ id, el, ...attrs }) {
    console.log('|factory| attemptPlayback')
    try {
      if (!id) throw new Error('no video id provided')
      if (player_instances.length && player_instances.find(p => p.type == player_types.modal)) {
        console.log('|factory| player already exists, and it\'s a modal type, update the video', player_instances[0])
        const player = player_instances.find(p => p.type == player_types.modal).player
        player.stop()
        player.setVideo({ id })
        // TODO how to update player attributes for this case,
        // where player already exists and onEmbedCreated is not called?
      } else {
        console.log('|factory| creating new player')
        return Factory.create({ id, el, ...attrs })
      }
    } catch (e) {
      console.log('|factory| attemptPlayback encountered an error', e)
    }
  }

  static shouldAttemptFullscreen(preference){
    return !!preference && Factory.isMobile()
  }

  static isMobile() {
    return navigator.maxTouchPoints > 1
  }

  // the purpose of this async blocking function is to ensure we have the chance to properly dispose of the bc player
  // that is tied to the modal currently open, before the modal's container element is removed from the dom, since it houses the player
  // the modal accepts an optional async blocking function as a config option, and will await its resolution before calling the internal close() method
  static awaitOnClose(){
    // the modal uses jquery-style $(document).trigger/$.event.trigget calls, so native event listener won't work
    // document.addEventListener(modal_events.close, Factory.onModalClosed)
    return new Promise(r => {
      console.log('|factory| awaitOnClose() setting 1time listener on modal.close')
      $(document).one(modal_events.close, Factory.onModalClosed)
      Factory.destroy('modal')
      console.log('|factory| awaitOnClose() destroy has occurred')
      r(true)
    })
    
  }

  static onModalClosed(e){
    console.log('|factory| onModalClosed() modal closed, null out the instance')
    modal_instances = []
  }

  static destroy(filter=null) {
    console.log('|factory| destroy player and perform cleanup')
    if (!player_instances.length) {
      console.log('|factory| destroy called before a player was created... must be age-gate lockout')
      return false
    }
    if(filter && filter == 'modal'){
      console.log('|factory| destroy filter provided, only destroy and null out instance with type=' + filter)
      player_instances.filter(filterPlayersByIsModal).map(({player}) => player.destroy())
      player_instances = player_instances.filter(filterPlayersByIsNotModal)
    } else {
      console.log('|factory| destroy no filter, remove all')
      player_instances.map(({ player }) => player.destroy())
      player_instances = []
    }
    console.log('|factory| player_instances remaining:'+player_instances.length)
    Factory.trigger('destroyed')
    // lost access to the result (returned value from player.destroy()) w/ these changes
  }


  static destroyAll(){
    // todo?
  }

  static async resetModal(){
    console.log(`|factory| resetModal() before close`)
    await modal_instances[0].close()
    console.log(`|factory| resetModal() after close`)
    Factory.unsetModalPlayerListeners()
  }

  static setModalPlayerListeners({}) {
    modalPlayerEventFunctions['ended'] = function(e){
      console.log('|factory| ended fired, close the modal', e)
      Factory.resetModal()
    }
    Factory.on('ended', modalPlayerEventFunctions['ended'])

    modalPlayerEventFunctions['fullscreen_changed'] = function(e){
      console.log('|factory| fullscreen_changed fired, if was fullscreen and now is not on mobile, close the modal', e.data)
      if (e.data.isFullscreen !== undefined && !e.data.isFullscreen && Factory.isMobile()) {
        Factory.resetModal()
      }
    }
    Factory.on('fullscreen_changed', modalPlayerEventFunctions['fullscreen_changed'])

    modalPlayerEventFunctions['error'] = function(e){
      (modal_instances[0]).renderError(e.data)
    }
    Factory.on('error', modalPlayerEventFunctions['error'])
  }

  static unsetModalPlayerListeners(){
    console.log('|factory| unset modal player event listeners!')
    Object.keys(modalPlayerEventFunctions).map(k => Factory.off(k, modalPlayerEventFunctions[k]))
  }

  static setPlaceholderPlayerListeners(el){
    Factory.on('error', function(e){
      $(el).after(`<div class="${player_namespace}__error">
        <p class="${player_namespace}__error__message">${e.data.message}</p>
      </div>`)
    })
  }
}

const getUniquePlayerId = ({id}) => {
  const i = (id == undefined ? new Date().valueOf() : id)
  return `${player_namespace}-${i}`
}

const getPlaceholderElement = (el, attrs={}) => {
  const placeholder =  $(el).find(`.${player_namespace}-modal__placeholder`)
  if(attrs.poster) placeholder.css('backgroundImage', `url(${attrs.poster})`);
  return placeholder[0]
}

export const getPlayerIdForEnvironment = (env) => {
  if(env !== 'dev' && env !== 'prod') throw new Error('invalid environment passed to getPlayerIdForEnvironment:'+env)
  console.log(`|factory| getPlayerIdForEnvironment: ${env} => ${brightcove_player_ids[env]}`)
  return brightcove_player_ids[env]
}

export const getEnvironment = () => {
  return window.location.host == 'www.sho.com' ? 'prod' : 'dev'
} 

const filterPlayersByIsModal    = (({type}) => type ==  player_types.modal)
const filterPlayersByIsNotModal = (({type}) => type !== player_types.modal);

export const trigger = Factory.trigger
export default Factory

