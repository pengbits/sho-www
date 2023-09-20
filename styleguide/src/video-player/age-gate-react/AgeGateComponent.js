import React, { Component } from 'react';
import $ from 'jquery';
import cn from 'classnames';
import { isValidDate, ageInYears } from '../../utils/date.js';
import cookies from '../../utils/cookies.js'; 

export const AGE_GATE_SUCCESS = 'videoAgeGateSuccess'
export const AGE_GATE_SUCCESS_COOKIE_NAME = 'SHO_STORE_BROTHERHOOD'
export const AGE_GATE_FAILURE_COOKIE_NAME = 'email_lockout' // was `ageGateCookie`, renamed here for parity with email signup widget,
// but this should ideally be renamed to something similarly generic/branded as the success state ie `SHO_STORE_DEXTER` when backend can do the same
class AgeGateComponent extends Component {
	constructor(props) {
		super(props);

		this.state = {
			month: '',
			day: '',
			year: '',
			errors: '',
      success: this.getSuccessCookie()
		};
		this.age = this.props.age;
		this.handleChangeMonth= this.handleChangeMonth.bind(this);
		this.handleChangeDay = this.handleChangeDay.bind(this);
		this.handleChangeYear = this.handleChangeYear.bind(this);
		this.handleSubmit = this.handleSubmit.bind(this);
	}

	componentWillMount() {
    if(this.getLockoutCookie()) {			
			this.setState({ errors: { ...this.state.errors, errormsg: 'We\'re sorry. You are ineligible to watch this video.', lockout:true}});				
		}
	}

	handleChangeMonth (event){
		this.setState({month: event.target.value});
	}
	
	handleChangeDay  (event){
		this.setState({day: event.target.value});
	}
	
	handleChangeYear (event){
		this.setState({year: event.target.value});
  }

  handleSubmit (event){
		event.preventDefault();
		this.validate();	
	}

	validate() {
		this.checkDateFormat();
	}
	
	checkDateFormat () {
		const dob = [this.pad(this.state.month), this.pad(this.state.day), this.state.year].join('/');
		if(!isValidDate(dob)) {
			this.setState({ errors: { ...this.state.errors, errormsg: 'That is not a valid date of birth'}});	
		} else {			
			this.checkForUnderageUser(dob);
		}
	}

	//padding single digit month and day by checking the length then adding 0 if more than 1
	pad(datevalue)
  {
		if ((datevalue.toString().length) === 1)
		{
	 		datevalue = ('0' + datevalue);
		}	
		return datevalue;
	}

	checkForUnderageUser(dob) 
  {
		const age = ageInYears(dob);
    if ( !isNaN(age) && age >= this.age) {
			this.setState({ errors: {}, success: true} );	 // I think this was previously a typo/incorrect spread assigment that 
      this.setSuccessCookie(true)                    // lead to the success state being nested inside the errors object
      $.event.trigger({ type: AGE_GATE_SUCCESS });
    }
    else {		
			this.setLockoutCookie();
    }
  }

  setLockoutCookie() 
  {
    cookies.set(AGE_GATE_FAILURE_COOKIE_NAME, true, 2); // 2 days
    this.setSuccessCookie(false)
    this.setState({ errors: { ...this.state.errors, errormsg: 'We\'re sorry. You are ineligible to watch this video.', lockout:true}});
  }
  
  setSuccessCookie(state){
    cookies.set(AGE_GATE_SUCCESS_COOKIE_NAME, state, 'session')
  }
	
  getSuccessCookie(){
    const c = cookies.get(AGE_GATE_SUCCESS_COOKIE_NAME)
    return c && c !== 'false'
  }

	getLockoutCookie(){
    // no need to ensure truthiness here, the presence of any value is enough to trigger a lockout
    return !!cookies.get(AGE_GATE_FAILURE_COOKIE_NAME);
  }

	render() {
    if (this.state.success) {
      return null;
		}
    else if (this.state.errors.lockout) {
      return (
        <div className="video-playr__age-gate">
          <div className="video-playr__age-gate__inner">
            <h5 className="video-playr__age-gate__message">{this.state.errors.errormsg} </h5>
          </div>
        </div>
      )
    }		
    return (
		<div className="video-playr__age-gate">
      <div className="video-playr__age-gate__inner">
        <h5 className={cn('video-playr__age-gate__message', {'has_errors': this.state.errors})}>{this.state.errors ? "Invalid date of birth" :"Please enter your date of birth to watch this video:"}</h5>
        <form action="#" onSubmit={this.handleSubmit} className={cn("video-playr__age-gate__form",{'has_errors': this.state.errors})}>
          <p className="video-playr__age-gate__date-of-birth">
          <input name="month" type="text" size="2" placeholder="MM" value={this.state.month} onChange={this.handleChangeMonth}/>
          <input name="day" type="text" size="2" placeholder="DD" value={this.state.day} onChange={this.handleChangeDay}/>
          <input name="year" type="text" size="4" placeholder="YYYY" value={this.state.year} onChange={this.handleChangeYear}/>
          </p><button className="button--outline-white btn-submit">Submit</button>
        </form>
      </div>
    </div>
		)
	}
}

export default AgeGateComponent