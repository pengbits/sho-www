#!/usr/bin/env node
'use strict';

const path = require('path')
const paths = require('../webpack.paths')
const execSync = require('child_process').execSync; // TODO should this be async and return a promise?

// using a child process to invoke 'cp' command, and not fse.copySync because 
// the lib folder appears as a symolic-link, and doing it this way results in an actual clone/copy
// which is better for historic reasons i am fuzzy on, put maybe it's safer when deploying to other environments?
const copyFolder = (src, dest) => {
  const cmd = `cp -fr ${src} ${dest}`
  console.log(`|copy| ${cmd}`)
  execSync(cmd, {
    stdio: [0, 1, 2]
  });
}

try {
  copyFolder(
    path.resolve(paths.styleguide.source, 'lib'),
    path.resolve(paths.projectRoot, 'sho')
  );
  copyFolder(
    path.resolve(paths.styleguide.source, 'assets'),
    path.resolve(paths.projectRoot, 'sho', 'lib'),
  );
}
catch (e) {
  console.error(e.message)
}

