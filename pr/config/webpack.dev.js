var webpack = require('webpack');
var webpackMerge = require('webpack-merge');
var HtmlWebpackPlugin = require('html-webpack-plugin');
var ExtractTextPlugin = require('extract-text-webpack-plugin');
var WriteFilePlugin = require('write-file-webpack-plugin');
var commonConfig = require('./webpack.common.js');
var helpers = require('./helpers');

const ENV = process.env.NODE_ENV = process.env.ENV = 'development';

module.exports = webpackMerge(commonConfig, {
  devtool: 'cheap-module-eval-source-map',

  output: {
    path: helpers.root('dist'),
    publicPath: 'http://localhost:3333/',
    filename: '[name].js',
    chunkFilename: '[id].chunk.js'
  },

  plugins: [
    new webpack.DefinePlugin({
      'process.env': {
        'ENV': JSON.stringify(ENV),
        'VERSION': JSON.stringify(require("../package.json").version),
        'CONFIG': {
          'sho_pr': JSON.stringify(require("./config.sho-pr.json")),
          'sho_private': JSON.stringify(require("./config.private.json")),
          'sho_fyc': JSON.stringify(require("./config.fyc.json")),
          'partner': JSON.stringify(require("./config.partner.json")),
          'distribution': JSON.stringify(require("./config.distribution.json")),
          'distributor': JSON.stringify(require("./config.distributor.json")),
          'digital-media': JSON.stringify(require("./config.digital-media.json")),
          'product': JSON.stringify(require("./config.product.json"))
        }
      }
    }),

    new HtmlWebpackPlugin({
      template: 'showtime.html',
      filename: 'showtime.html'
    }),

    new HtmlWebpackPlugin({
      template: 'private.html',
      filename: 'private.html'
    }),

    new HtmlWebpackPlugin({
      template: 'showtime_singlepage.html',
      filename: 'showtime_singlepage.html'
    }),

    new HtmlWebpackPlugin({
      template: 'fyc.html',
      filename: 'fyc.html'
    }),

    new HtmlWebpackPlugin({
      template: 'partner.html',
      filename: 'partner.html'
    }),

    new HtmlWebpackPlugin({
      template: 'digital_media.html',
      filename: 'digital_media.html'
    }),

    new HtmlWebpackPlugin({
      template: 'distributor.html',
      filename: 'distributor.html'
    }),

    new HtmlWebpackPlugin({
      template: 'distribution.html',
      filename: 'distribution.html'
    }),

    new HtmlWebpackPlugin({
      template: 'product.html',
      filename: 'product.html'
    })
  ],

  devServer: {
    historyApiFallback: {
      index: 'index.html',
      rewrites: [
        { from: /\/dev\/pr\/showtime\/app/, to: '/showtime.html'},
        { from: /\/dev\/pr\/private\/app/, to: '/private.html'},
        { from: /\/dev\/pr\/fyc\/app/, to: '/fyc.html'},
        { from: /\/dev\/pr\/showtime\/sp/, to: '/showtime_singlepage.html'},
        { from: /\/dev\/pr\/partner\/app/, to: '/partner.html'},
        { from: /\/dev\/pr\/digital-media\/app/, to: '/digital_media.html'},
        { from: /\/dev\/pr\/distributor\/app/, to: '/distributor.html'},
        { from: /\/dev\/pr\/distribution\/app/, to: '/distribution.html'},
        { from: /\/dev\/pr\/product\/app/, to: '/product.html'}
      ]
    },
    stats: 'minimal',
    outputPath: helpers.root('dist')
  }
});
