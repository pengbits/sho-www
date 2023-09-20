import React from 'react';
import ReactDOM from 'react-dom';
import AgeGateComponent, { AGE_GATE_SUCCESS_COOKIE_NAME } from './AgeGateComponent';
import cookies from '../../utils/cookies';

export const factory = (el, age) => {
  return ReactDOM.render(
      <AgeGateComponent el={el} age={age} />,
      el
  )
}
AgeGateComponent.factory = factory;

// for use by other components ie email signup widget - when user is locked out in other contexts,
// we have to clear the success cookie or we'll get into a strange state
AgeGateComponent.unsetSuccess = (() => cookies.set(AGE_GATE_SUCCESS_COOKIE_NAME, 'false'));

// statically exporting these component methods so the video-player can know if the user has the success or lockout cookies before initializing the player
['getSuccessCookie','getLockoutCookie'].map(k => {
  AgeGateComponent[k] = AgeGateComponent.prototype[k]
})

export default AgeGateComponent