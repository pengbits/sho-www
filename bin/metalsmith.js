#!/usr/bin/env node
'use strict';


const metalsmith = require('../scripts/metalsmith')
const stripAnsi = require('strip-ansi')
const debug = require('debug')
const m = debug('metalsmith')

function buildMetalsmith(rebuild) {
  m('Building Metalsmith')

  metalsmith.build((err) => {
    if (err) {
      m('Metalsmith build error:')
      m(stripAnsi(`${err.message}\n\n${err.stack}`))
      return
      // return browserSync.sockets.emit('fullscreen:message', {
      //   title: 'Metalsmith Error:',
      //   body: stripAnsi(`${err.message}\n\n${err.stack}`),
      //   timeout: 100000
      // })
    }
    m('Metalsmith build successfully finished!')
  })
}

buildMetalsmith()
