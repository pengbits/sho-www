const path = require('path')

const projectRoot = path.resolve(__dirname)
module.exports = {
  projectRoot,
  styleguide: {
    source: path.resolve(projectRoot, 'styleguide', 'src'),
    public: path.resolve(projectRoot, 'styleguide', 'dist')
  }
}