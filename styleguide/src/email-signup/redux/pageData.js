// this reducer contains the configuration data that is loaded in from the html layer at load-time;
// previously this was just mixed in to the root reducer in an ad-hoc manner,
// but that created issues when moving to webpack
export const SET_PAGE_DATA = 'page-data/SET_PAGE_DATA'

export const setPageData = data => {
  return {
    type: SET_PAGE_DATA,
    payload: data
  }
}

export const initialState = {
  pubId           : null,
  trackingContext : null,
  headline        : null,
  cta             : null,
  host            : null,
  isVideo         : null,
  videoName       : null,
  emailHash       : null,
  signupErrorList : []
}
  
// reducer
export const pageData = (state=initialState, action={}) => {
  if(!action.type) {
    return initialState
  }
  switch(action.type){
    case SET_PAGE_DATA:
      return {...action.payload}
    default:
      return state
  }
}