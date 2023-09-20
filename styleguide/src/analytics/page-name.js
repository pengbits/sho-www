function PageName() {
  let meta = document.querySelector('meta[name="page-tracking"]');
  let pageName = (meta ? meta.getAttribute('content').toLowerCase() : null);
  return pageName;
}

export default PageName;