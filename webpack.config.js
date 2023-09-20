var path = require('path'),
  fs = require('fs'),
  MiniCssExtractPlugin = require('mini-css-extract-plugin'),
  LiveReloadPlugin = require('webpack-livereload-plugin'),
  UglifyJsPlugin = require('uglifyjs-webpack-plugin'),
  OptimizeCSSAssetsPlugin = require('optimize-css-assets-webpack-plugin'),
  cssnano = require('cssnano'),
  webpack = require('webpack')
;
const entries = {
  'sho': './sho/javascripts/index.js',
  'stream-showtime': './sho/javascripts/stream_showtime.index.js',
  'shoplace': './shoplace/javascripts/index.js',
  'styleguide': './styleguide/site/javascripts/site.js' 
}


module.exports = (env={}) => {
  // by default, monitor and build all entries
  let entry = entries

  // ...unless a single key is specified
  if(env.entry && entries[env.entry]){
    entry = {[env.entry] : entries[env.entry]}
  }
  
  // or it's production mode, in which case, skip the styleguide
  else if(env.production){
    const {styleguide, ...entriesEdited} = entries
    entry = entriesEdited
  }
  
  // all projects get built to sho/dist
  let output = path.resolve(__dirname, 'sho', 'dist')
  
  // ... except for styleguide, which has its own file structure
  if(env.entry == 'styleguide') {
    output = path.resolve(__dirname, 'styleguide', 'dist')
  }


  return {
    entry,
    output: {
      filename: env.production && env.entry != 'styleguide' ? '[name].min.js' : '[name].js',
      path: output
    },
    stats: {
      children: false
    },
    module: {
      rules: [
        {
          test: /\.m?js$/,
          exclude: /node_modules/,
          use: {
            loader: 'babel-loader',
            options: {
              presets: ['@babel/preset-env']
            }
          }
        },
        {
          test: /\.(sa|sc|c)ss$/,
          use: [
            {
              loader: MiniCssExtractPlugin.loader
            },
            'css-loader',
            'sass-loader'
          ]
        }
      ]
    },
    optimization: {
      minimizer: [new OptimizeCSSAssetsPlugin({
        cssProcessor: cssnano
      }), new UglifyJsPlugin()]
    },
    plugins: env.production && env.entry != 'styleguide' ? [
      new MiniCssExtractPlugin({
        filename: '[name].min.css' 
      }),
      versionBanner()
    ] : [
      new MiniCssExtractPlugin({
        filename: '[name].css'
      }),
      new LiveReloadPlugin(),
      versionBanner()

    ],
    node: { // copied from tools' webpack cfg. i suspect this is needed for the min-requirements script
      fs: "empty"
    },
    devtool: env.production ? false : 'eval-cheap-module-source-map' 
    // this devtools option ensures that the corrent line numbers are shown when errors are thrown,
    // as it maps back to our untranspiled original code.
    // it might result in slightly slower build times, so keep an eye on it and consider swapping for a different option as neeed
    // https://webpack.js.org/configuration/devtool/#devtool
    // we would never use anything other than a hidden/private 'source-map' option for production builds
  }
}

const versionBanner = () => {
  const version = fs.readFileSync(path.join(__dirname, '..', '..', 'resources', 'version.properties'))
  return new webpack.BannerPlugin('sho.com build '+version)
}