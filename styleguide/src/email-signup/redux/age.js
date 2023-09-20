import { ageInYears } from '../../utils/date';

const MINIMUM_ALLOWED_AGE = 18;

//action types
export const AGE_VALID = 'VALIDATION/AGE_VALID';
export const AGE_INVALID = 'VALIDATION/AGE_INVALID';

//action creactors for age
const ageValid = dob => ({
	type: AGE_VALID,
	payload: dob
});

const ageInvalid = dob => ({
	type: AGE_INVALID,
	payload: dob
});

export const ageValidation = dob => (dispatch) => {
	const age = ageInYears(dob);
	if ( !isNaN(age) && age >= MINIMUM_ALLOWED_AGE) {
		dispatch(ageValid(dob));
		return true;
	}
	dispatch(ageInvalid(dob));
	return false;
};
	
//age reducer
export const initialAgeState = {eligible: null, dob: null};

export const age = (state = initialAgeState, action={}) => {  
  if (!action.type) return initialAgeState

	switch (action.type) {
		case AGE_VALID:
			return {...state, 
				eligible: true,
				dob: action.payload.dob
			};
		case AGE_INVALID:
			return {...state, 
				eligible: false,
				dob: action.payload.dob
			};
		default:
			return state;
	}
};
 