import { combineReducers } from 'redux'
import {submission} from './submission'; 
import {validation} from './validation';
import {values} from './values';
import {age} from './age';
import {emailHash} from './emailHash';
import {pageData} from './pageData';

// must use combineReducers since switch to webpac
export const rootReducer = combineReducers({
  age,
  emailHash,
  validation,
  submission,
  values,
  data: pageData
})
 
export default rootReducer