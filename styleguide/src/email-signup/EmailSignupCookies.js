import cookies from "../utils/cookies";
import AgeGateComponent from '../video-player/age-gate-react' 

// TODO normalize across the board for all age-gate cases and for the cases where cookie is set by backend
// for more on cookie renaming/normalizing, check the age-gate component's internals
const EMAIL_SIGNUP_SUCCESS_COOKIE_NAME = 'generic'
const EMAIL_SIGNUP_FAILURE_COOKIE_NAME = 'email_lockout'

// userAlreadySignedUp()
// return true if the obfuscated cookie containing hash of user's email is present
// internally, it is the trigger to remove the email signup widget, ideally it would make its way into application state
// externally, it is used in the sho context to create static helpers for use by the video-player,
// resulting in a trigger to auto-play the video when conditions are met(look in video_player.jsp)
export const userAlreadySignedUp = (() => {
  return !!cookies.get(EMAIL_SIGNUP_SUCCESS_COOKIE_NAME)
});


// userIsLockedoutOut()
// return true if the obfuscated cookie representing a lockedout user (if cookies contains any value)
// note that this value was historically a string 'undefined' as the original implentation tried to capture the 
// user's date of birth but it was out of scope/undefined, our simplfied helper below just writes 'true'
export const userIsLockedOut = (() => {
  return !!cookies.get(EMAIL_SIGNUP_FAILURE_COOKIE_NAME)
});

// performLockout()
// set a cookie that represents a failed email signup for underage submission with a truthy value (any value other than 'false' or '' will do)
// and even though it's not really our business to do so, clear any pre-existing success cookie left by the age-gate component!
export const performLockout = (() => {
  cookies.set('email_lockout', 'true', 1) // was 'undefined'
  AgeGateComponent.unsetSuccess()
})