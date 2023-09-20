var webpack = require('webpack');
var webpackMerge = require('webpack-merge');
var ExtractTextPlugin = require('extract-text-webpack-plugin');
var OptimizeCssAssetsPlugin = require('optimize-css-assets-webpack-plugin');
var commonConfig = require('./webpack.common.js');
var helpers = require('./helpers');

const ENV = process.env.NODE_ENV = process.env.ENV = 'production';

module.exports = webpackMerge(commonConfig, {
  devtool: 'source-map',

  output: {
    path: helpers.root('dist'),
    publicPath: '/',
    filename: '[name].js',
    chunkFilename: '[id].[hash].chunk.js'
  },

  sassLoader: {
    data: "$icon-base-path: '/www/pr/assets/svg';"
  },

  htmlLoader: {
    minimize: false // workaround for ng2
  },

  plugins: [
    new webpack.NoErrorsPlugin(),
    new webpack.optimize.DedupePlugin(),
    new webpack.optimize.UglifyJsPlugin({ // https://github.com/angular/angular/issues/10618
      mangle: {
        keep_fnames: true
      }
    }),

    new ExtractTextPlugin("styles.css"),
    new OptimizeCssAssetsPlugin({
      assetNameRegExp: /\.css$/g,
      cssProcessor: require('cssnano'),
      cssProcessorOptions: {
        discardComments: { removeAll: true },
        autoprefixer: { remove: false },
        normalizeUrl: {
          stripWWW: false
        }
       },
      canPrint: true
    }),

    new webpack.DefinePlugin({
      'process.env': {
        'ENV': JSON.stringify(ENV),
        'VERSION': JSON.stringify(require("../package.json").version),
        'CONFIG': {
          'sho_pr': JSON.stringify(require("./config.sho-pr.json")),
          'sho_private': JSON.stringify(require("./config.private.json")),
          'sho_fyc': JSON.stringify(require("./config.fyc.json")),
          'partner': JSON.stringify(require("./config.partner.json")),
          'distributor': JSON.stringify(require("./config.distributor.json")),
          'distribution': JSON.stringify(require("./config.distribution.json")),
          'digital-media': JSON.stringify(require("./config.digital-media.json")),
          'product': JSON.stringify(require("./config.product.json"))
        }
      }
    }),
  ]
});
