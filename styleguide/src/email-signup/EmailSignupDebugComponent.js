// temp replacement for EmailSignupWrapper
import React, { Component } from 'react';
import $ from 'jquery';
import EmailSignup from './EmailSignup';
import cookies from '../utils/cookies';
import {userAlreadySignedUp, userIsLockedOut, performLockout} from './EmailSignupCookies'

class EmailSignupDebugComponent extends Component {
  componentWillUpdate(nextProps){
    console.log(nextProps.submission)
  }

  render() {

    const { submission, data, videoSuccess } = this.props;
    return (
      <div style={{ outline: 'green solid 2px', padding: '10px' }}></div>
    )
  }

}

export default EmailSignupDebugComponent