const path = require('path');
const webpack = require('webpack');
const Metalsmith = require('metalsmith')
const markdown = require('metalsmith-markdown')
const layouts = require('metalsmith-layouts')
const assets = require('metalsmith-assets')
const collections = require('metalsmith-collections')
const prefix = require('metalsmith-prefix')
const packagejson = require('metalsmith-packagejson')
const readFileSync = require('fs').readFileSync
const clearCollections = require('./metalsmith/clear-collections')
const COLLECTIONS_NAMES = ['articles', 'vendor', 'base', 'elements', 'components', 'order']
const COLLECTIONS_OPTS_SORTBY = { sortBy: 'name' }
const COLLECTIONS_OPTS = COLLECTIONS_NAMES.reduce((opts, k) => {
  opts[k] = COLLECTIONS_OPTS_SORTBY
  return opts
}, {})

const versionString = readFileSync(path.join(__dirname, '../../../resources/version.properties')).toString()
const versionNumber = (versionString || '').split('=').pop()
const versionNumberPlugin = function(){
  return function(files,metalsmith,done) {
    for (let file in files) {
      let f = files[file];
      f.versionNumber = versionNumber
    }
    done();
  }
}

module.exports = Metalsmith(__dirname)
  .clean(false) // needs to be true but with metalsmith-assets to deliver css/js
  .source('../styleguide/src')
  .destination('../styleguide/dist')
  .use(assets({
    source: '../styleguide/src/assets',
    destination: './styleguide/assets',
  }))
  .ignore([
    'layouts',
    'javascripts',
    'styles',
    'styleguide/lib'
  ])
  .use(packagejson())
  .use(clearCollections(COLLECTIONS_NAMES))
  .use(collections(COLLECTIONS_OPTS))
  .use(function (files, metalsmith, done) {
    for (let file in files) {
      let f = files[file];
      f.dirname = path.dirname(file);
      f.filepath = file.replace('.md', '.html')
    }
    done();
  })
  .use(versionNumberPlugin())
  .use(markdown())
  .use(layouts({
    directory: "../styleguide/site/layouts",
    engine: 'handlebars',
    default: 'default.html',
    pattern: '**/*.html'
  }))
