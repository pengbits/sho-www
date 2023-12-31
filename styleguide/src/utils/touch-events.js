// replacement for Modernizr.isTouchDevice
// https://stackoverflow.com/questions/4817029/whats-the-best-way-to-detect-a-touch-screen-device-using-javascript/4819886#4819886

export const isTouchDevice = () => (
  ('ontouchstart' in window)  ||
  (navigator.maxTouchPoints > 0) ||
  (navigator.msMaxTouchPoints > 0)
)

export default isTouchDevice