import ReadMoreInline from './read-more-inline'
import ReadMoreBlock from './read-more-block'

class ReadMoreAdapter {

  constructor(cfg) {
    if(!cfg.el){
      throw new Error('must provide an element in config object')
    }

    const {mode} = cfg.el.dataset 
    if(mode == 'inline'){
      return new ReadMoreInline(cfg)
    }

    else if(mode == 'block'){
      // console.log('sorry, block mode not in service rn')
      return new ReadMoreBlock(cfg)
    }
    
    else throw new Error(`invalid mode found, expected either 'block' or 'inline', got '${mode}' ${cfg.el.className}`)
  }
}

export default ReadMoreAdapter

// these helpers could be used by both components, but only used by inline
// block mode assumes marked up element in html layer
export const trackingAttributes = (mode) => {
  return {
    'data-track': 'true',
    'data-label': (mode == 'less' ? 'read less' : 'read more'),
  }
}

export const trackingAttributesString = (mode) => {
  const attrs = trackingAttributes(mode)
  return Object.keys(attrs).map(key => `${key}="${attrs[key]}"`).join(" ")
}
