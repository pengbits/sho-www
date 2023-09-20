#!/usr/bin/env node
'use strict';

const path = require('path');
const execSync = require('child_process').execSync; 
const projectRoot = path.join(__dirname, '..');

// this is just a wrapper for consolidating all the flags we have to send to webpack cli,
// managing this in a package.json was getting a little tedious
const entryFlag = process.env.entry ?  `  --env.entry=${process.env.entry}` : ''
const envFlag   = process.env.production ? ` --mode production --env.production` : ` --mode=development --env.development`
const watchFlag = process.env.production || process.env.nowatch ? '' : ` --progress --watch`
const cmd = `cd ${projectRoot} && webpack --colors ${entryFlag}${envFlag}${watchFlag}`

console.log(`|webpack| ${cmd}`)
execSync(cmd, {
stdio: [0, 1, 2]
});