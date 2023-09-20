import cookies from './cookies'
import VariationsControls from '../variations/controls'
import {COOKIE_NAME as VARIATIONS_COOKIE_NAME} from '../variations/controls'
import {COOKIE_NAME as ABANDONED_CART_COOKIE_NAME} from '../abandoned-cart-modal'
// these don't do much except see if our utility has fallen apart,
// and describe all the expected use-cases for where we set cookies

describe('CookiesUtil', () => {
  let value, doc;
  
  beforeAll(() => {
    Object.defineProperty(window.document, 'cookie', {
      writable: true,
    });
  })

  beforeEach(() => {
    document.cookie = ''
    value=null;
    doc=null;
  })

  test('set cookie with length of ten years', () => {
    cookies.set('agegateLockout', '12948598609', 'forever')
    const d = new Date()
    const y = parseInt(d.getFullYear())
    const expectedYear = y+10
    expect(document.cookie).toMatch(` ${expectedYear}`)
  })

  test('set cookie for session', () => {
    cookies.set('agegateSuccess', true, 'session')
    expect(document.cookie).toMatch(/agegateSuccess=true;\s+path=\/;/)
  })

  test('set cookie for session with null', () => {
    cookies.set('agegateSuccess', true, null)
    expect(document.cookie).toMatch(/agegateSuccess=true;\s+path=\/;/)
  })
  
  test('read email-signup email hash cookie', () => {
    document.cookie = 'generic=c9e11db0e1cd59bc95e6baa2c28d2f6e; path=/;'
    value = cookies.get('generic') 
    expect(value).toMatch(/c9e11db0e1cd59bc95e6baa2c28d2f6e$/)
  })
  
  test('write email-signup email hash cookie', () => {
    cookies.set('generic', 'c9e11db0e1cd59bc95e6baa2c28d2f6e','forever') 
    doc = document.cookie.split('; ')
    value = doc.find((entry) => {
      return entry.indexOf('generic') > -1 
    })
    expect(value).toMatch(/c9e11db0e1cd59bc95e6baa2c28d2f6e$/)
  })
  
  test('read user lockout cookie', () => {  
    document.cookie = 'email_lockout=undefined; path=/;'
    value = cookies.get('email_lockout') 
    expect(value).toMatch(/undefined$/)
  })
  
  test('write user lockout cookie', () => {  
    cookies.set('email_lockout','undefined',1)
    doc = document.cookie.split('; ')
    value = doc.find((entry) => {
      return entry.indexOf('email_lockout') > -1 
    })
    expect(value).toMatch(/undefined$/)
  })
  
  test('read variations cookie', () => {
    expect(VARIATIONS_COOKIE_NAME).toBe('sho_allow_optimizely_variations')
    document.cookie = 'sho_allow_optimizely_variations=true; path=/;'
    value = cookies.get(VARIATIONS_COOKIE_NAME)
    expect(value).toBe('true')
  })
  
  test('write variations cookie', () => {
    const mockComponent = {
      'allow_variations' : true,
      'isProduction' : (() => true)
    }
    
    VariationsControls.prototype.writeState.call(mockComponent)
    doc = document.cookie.split('; ')
    value = doc.find((entry) => {
      return entry.indexOf(VARIATIONS_COOKIE_NAME) > -1 
    })
    expect(value).toMatch(/true$/)
  })
  
  test('read abandoned cart was opened', () => {
    expect(ABANDONED_CART_COOKIE_NAME).toBe('abandoned_cart_opened')
    document.cookie = 'abandoned_cart_opened=true; path=/;'
    value = cookies.get(ABANDONED_CART_COOKIE_NAME)
    expect(value).toBe('true')
  })
  
  test('write abandoned cart was opened', () => {  
    cookies.set(ABANDONED_CART_COOKIE_NAME,'true','forever')
    doc = document.cookie.split('; ')
    value = doc.find((entry) => {
      return entry.indexOf('abandoned_cart_opened') > -1 
    })
    expect(value).toMatch(/true/)
  })
})