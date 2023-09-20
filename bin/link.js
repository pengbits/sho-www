#!/usr/bin/env node
'use strict';

// the styleguide is linked into each project that makes uses of it
// as ./src -> ./styleguide
// this script creates the symlinks


const path = require('path')
const paths = require('../webpack.paths')
const {links} = require('../config/styleguide-links')

const fs = require('fs')

const createSymlinkForEntry = (src, dest) => {
  try {
    console.log(`|link| creating sym-link ${src} -> ${dest}`)
    fs.symlinkSync(paths.styleguide.source, dest)
  }
  catch(e){
    console.error(e.message)
  }
}


const createSymlinks = function(){
  links.dest.map(entry => {
    const src =  path.resolve(paths.projectRoot, links.src)
    const dest = path.resolve(paths.projectRoot, entry, 'styleguide')
    createSymlinkForEntry(src, dest)
  })
}


createSymlinks()