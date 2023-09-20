#!/usr/bin/env node
'use strict';

var fs = require('fs'),
    path = require('path'),
    execSync = require('child_process').execSync;

const project_root = path.join(__dirname, '..');
const package_json = path.join(__dirname, '../package.json');
const app_config = JSON.parse(fs.readFileSync(package_json));
const app_node_version = app_config.engines.node;
const runtime_node_version = process.version.substring(1); // removing the v
// const has_nvm = (execSync('echo "$NVM_DIR"').toString().length > 1); // you get one character on an empty string .. maybe a newline or something


/**
 * Check for correct Node version
 */
if(app_node_version !== runtime_node_version) {
  console.warn(`Incompatible Node Version. Application expects v${app_node_version} and your runtime uses v${runtime_node_version}`);
  console.info('You can find the proper Node version on the download page. [https://nodejs.org/en/download/]');
  console.info('Or you can use nvm [https://github.com/creationix/nvm]');
  process.exitCode = 1;
  throw new Error('cannot continue')
}

/**
 * Run an npm install
 */
execSync(`cd ${project_root} && npm install` ,{
  stdio:[0,1,2]
});