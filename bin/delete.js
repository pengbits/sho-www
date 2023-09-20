#!/usr/bin/env node
'use strict';

// put local environment in pristine state by cleaning old files, syncing, and regenerating
const paths = require('../webpack.paths')
const rimraf = require('rimraf')

// delete styleguide build
const deleteLastBuild = () => {
  const path = paths.styleguide.public
  console.log(`|delete| removing ${path}...`)
  rimraf(path, {glob:false}, function(error){
    if(error){
      throw new Error(error)
    }

    console.log('|delete| complete')

  })

  }

module.exports = deleteLastBuild
deleteLastBuild()