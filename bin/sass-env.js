#!/usr/bin/env node
'use strict';

const path = require('path')
const paths = require('../webpack.paths')
const fs = require('fs')

// rename the sass file with environment-specific variables for the environemnt specified
const environments = ['development','production','production-styleguide']
const env = process.argv.pop()

if(!environments.includes(env)){
  throw new Error('unregonized environment: `' + env + '`');
}

console.log(`|sass-env| set contents of _variables.env.scss to values needed for ${env}`)
const src  = path.resolve(paths.styleguide.source, `_variables.${env}.scss`)
const dest = path.resolve(paths.styleguide.source, `_variables.env.scss`)
fs.copyFileSync(src, dest)