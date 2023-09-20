#!/usr/bin/env node
'use strict';

// the styleguide is linked into each project that makes uses of it
// as ./src -> ./styleguide
// this script removes them

const path = require('path')
const paths = require('../webpack.paths')
const fs = require('fs')
const {links} = require('../config/styleguide-links')

const destroySymlinkForEntry = (entryName) => {
  try {
    const link = path.resolve(paths.projectRoot, entryName, 'styleguide')
    console.log(`|unlink| rm sym-link ${link}`);
    fs.unlinkSync(link)
  }
  catch (e) {
    console.error(e.message)
  }
}


const destroySymlinks = function () {
  links.dest.map(entry => destroySymlinkForEntry(entry))
}


destroySymlinks()