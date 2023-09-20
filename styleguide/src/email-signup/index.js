// redux + store
import { combineReducers, createStore, applyMiddleware, compose } from 'redux';
import { composeWithDevTools } from 'redux-devtools-extension';
import promiseMiddleware from 'redux-promise-middleware';
import thunk from 'redux-thunk';
import cookies from '../utils/cookies';

// react
import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux';

//imports:app
import SubmissionMiddleWare from './middleware/submission-middleware'

// component source
import EmailSignup, {userAlreadySignedUp,userIsLockedOut} from './EmailSignupContainer';
import rootReducer from './redux/reducer';
import { setPageData } from './redux/pageData';
// set up store
const k = '__REDUX_DEVTOOLS_EXTENSION_COMPOSE__';
const composeEnhancers = window[k] ? window[k]({ 'name':'Email Signup Module' }) : compose;  

const getStore = (reducer,preloadedState={}) => createStore(reducer, preloadedState,
  composeEnhancers(applyMiddleware(SubmissionMiddleWare, thunk, promiseMiddleware())) 
);  
 
// begin component
export const factory = (el) => {
  // configure widget by grabbing data attributes from page or deferring to defaults
  const dataAttrs = {
    pubId           : el.getAttribute('data-pub-id') || '46169',
    trackingContext : el.getAttribute('data-tracking-context') || 'email signup:',
    headline        : el.getAttribute('data-headline') || 'Get Showtime Email Updates',
    cta             : el.getAttribute('data-cta') || 'Sign Up',
    host            : el.getAttribute('data-host') || '',
    isVideo         : Boolean(el.getAttribute('data-is-video') === 'true'),
    videoName       : el.getAttribute('data-video-title') || '',
    emailHash       : cookies.get('generic'),
    signupErrorList : []
  };
  
  const store = getStore(rootReducer)
  // pass the page-data directly to reducer by dispatching on store before initial render
  store.dispatch(setPageData(dataAttrs))

  return ReactDOM.render(
    <Provider store={store}>
      <EmailSignup />
    </Provider>,
    el
  )
}

EmailSignup.factory             = factory;
EmailSignup.userAlreadySignedUp = userAlreadySignedUp;
EmailSignup.userIsLockedOut     = userIsLockedOut
export default EmailSignup;
