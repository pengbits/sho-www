import Factory, { 
  brightcove_account_id, 
  getPlayerIdForEnvironment,
  getEnvironment
} from './factory'

export default Factory
export const trigger = (eventName, data) => {
  Factory.trigger(eventName, data)
}
export const getPlayerId = () => {
  return getPlayerIdForEnvironment(getEnvironment())
}

export const getScriptURL = () => {
  const embedId = 'default';
  const playerId = getPlayerId()
  return [
    "//players.brightcove.net/",
    brightcove_account_id,
    '/',
    playerId,
    '_',
    embedId,
    '/',
    "index.min.js"
  ].join('')
}
