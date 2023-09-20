// fix duplicate entries in collections 
// https://destinmoulton.com/blog/2018/metalsmith-collections-solving-the-duplication-bug/
module.exports = (collectionNames) => {
  return function (files, metalsmith, done) {
    "use strict";
    let meta = metalsmith.metadata();

    for (let collection of collectionNames) {
      if (collection in meta) {
        meta[collection] = [];
      }
    }
    metalsmith.metadata(meta);
    done();
  };
};