import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import EmailSignupWrapper from './EmailSignupWrapper';
import {userAlreadySignedUp,userIsLockedOut} from './EmailSignupCookies'
export {userAlreadySignedUp, userIsLockedOut}

import {
  formSubmit,
  trackEvent,
  videoSuccess
} from './redux/submission/actions';

import {
  emailValidation,
  monthValidation,
  dayValidation,
  yearValidation,
  tosValidation
} from './redux/validation';

import {
  ageValidation
} from './redux/age';

import {
  initEmailHash
} from './redux/emailHash';

const mapStateToProps = (state) => {
  return state
} 

const mapDispatchToProps = dispatch => bindActionCreators(
  {
    emailValidation,
    monthValidation,
    dayValidation,
    yearValidation,
    tosValidation,
    ageValidation,
    formSubmit,
    trackEvent,
    videoSuccess,
    initEmailHash
  },
  dispatch
);

export default connect(mapStateToProps, mapDispatchToProps)(EmailSignupWrapper);