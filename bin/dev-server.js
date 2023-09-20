#!/usr/bin/env node
'use strict';

const paths = require('./../webpack.paths')
const Browsersync = require('browser-sync')
const path = require('path')
const metalsmith = require('../scripts/metalsmith')
const Webpack = require('webpack')
const MiniCssExtractPlugin =require('mini-css-extract-plugin')
const stripAnsi = require('strip-ansi')
const debug = require('debug')
const m =   debug('metalsmith')
const w = debug('webpack')
const bs = debug('browsersync')

// Store last webpack hash to avoid unnecessary Metalsmith rebuilds
let lastWebpackBuildHash
const browserSync = Browsersync.create()

// Run metalsmith and reload browsers
// or send a fullscreen error message to the browser instead
function buildMetalsmith(rebuild) {
  m('Building Metalsmith')

  metalsmith.build((err) => {
    if (err) {
      m('Metalsmith build error:')
      m(stripAnsi(`${err.message}\n\n${err.stack}`))
      return browserSync.sockets.emit('fullscreen:message', {
        title: 'Metalsmith Error:',
        body: stripAnsi(err.message),//stripAnsi(`${err.message}\n\n${err.stack}`),
        timeout: 100000
      })
    }
    m('Metalsmith build successfully finished!')
    setTimeout(() => {
      bs('reloading browsers')
      browserSync.reload()
    }, 2000)
  })
}

// Reload all devices when webpack bundle is complete
// or send a fullscreen error message to the browser instead
// https://github.com/alligatorio/bundlesize-webpack-plugin/blob/aligator-post/bundlesize-webpack-plugin/index.js
class WebpackDoneCompileMetalsmithPlugin {
  apply(compiler){
    compiler.hooks.done.tap('|WebpackDoneCompileMetalsmithPlugin', stats => {
      if(stats.hasErrors()){
        console.error(`\nWebpack Error\n\n${stripAnsi(stats.toString())}`)
        return browserSync.sockets.emit('fullscreen:message', {
          title: 'Webpack Error',
          body: stripAnsi(stats.toString()),
          timeout: 100000
        })
      }
      else {
        w('Webpack finished')
        w(stats.toString({ colors: true, chunks: false }))
        buildMetalsmith()
      }
    })
  }
}


// init the webpack instance and inject our custom plugin for the metalsmith stuff
const getConfig = require('../webpack.config')
const webpackConfig = getConfig({ entry: 'styleguide' })
if (webpackConfig.entry && webpackConfig.entry.styleguide && webpackConfig.output && webpackConfig.output.path){ 
  w(`starting webpack with entrypoint '${webpackConfig.entry.styleguide}'\nand outputting to \n'${webpackConfig.output.path}'\n\n`)
} else {
  throw new Error('fatal error reading webpack config')
}
const compiler = Webpack({
  ...webpackConfig,
  mode: 'development',
  plugins: [
    new MiniCssExtractPlugin({
      filename: '[name].css'
    }),
    (new WebpackDoneCompileMetalsmithPlugin())
  ]
})

const watching = compiler.watch({
    ignored: ['node_modules', '.git'],
    aggregateTimeout: 300,
    poll: 1000
}, (err, stats) => {
  if(err) {
    w(err.stack || err)
    if(err.details) {
      w(err.details)
    }
    return
  }
  
// DONT need to check for errors in both plugin above and in callback here
  // if(stats.hasErrors()) {
  //   browserSync.sockets.emit('fullscreen:message', {
  //     title: 'CALLBACK Webpack Error:',
  //     body: stripAnsi(stats.toString()),
  //     timeout: 100000
  //   })
  // }

  // if(stats.hasWarnings()) {
  //   w(stats.toJson().warnings);
  // }

})

// Run Browsersync for server and watching
browserSync.init({
  server: paths.styleguide.public,
  open: false,
  port:4000,
  logFileChanges: true,
  plugins: ['bs-fullscreen-message'],
  watchOptions: {
    ignoreInitial: true,
    ignored: ['node_modules','.git']
  },
  files: [
    {
      match: [
        path.resolve(paths.styleguide.source, '**', '*.md'),
        path.resolve(paths.styleguide.source, '**', '*.html'),
      ],
      fn: function (event, file) {
        bs(file)
        buildMetalsmith()
      }
    }
  ]
})
