var webpack = require('webpack');
var ExtractTextPlugin = require('extract-text-webpack-plugin');
var helpers = require('./helpers');
var path = require('path');

module.exports = {
  entry: {
    'polyfills': './src/polyfills.ts',
    'vendor': './src/vendor.ts',
    'app': './src/main.ts',
    'styles': './styles/index.scss',
  },

  resolve: {
    alias: {
      styleguide: path.join(__dirname, '../../styleguide/src')
    },
    extensions: ['', '.js', '.ts']
  },


  module: {
    exprContextCritical: false,
    loaders: [
      {
        test: /\.ts$/,
        loaders: ['awesome-typescript-loader', 'angular2-template-loader']
      },
      {
        test: /\.html$/,
        loader: 'html'
      },
      {
        test: /\.(png|jpe?g|gif|svg|woff|woff2|ttf|eot|ico)$/,
        loader: 'file?name=assets/[name].[hash].[ext]'
      },
      {
        test: /\.scss$/,
        exclude: /node_modules/,
        loader: ExtractTextPlugin.extract({fallbackLoader: 'style-loader', loader: 'css!sass?sourceMap'})
      },
      {
        test: /\.css$/,
        include: helpers.root('src', 'app'),
        loader: 'raw'
      }
    ]
  },

  plugins: [
    new webpack.optimize.CommonsChunkPlugin({
      name: ['app', 'vendor', 'polyfills']
    }),

    new ExtractTextPlugin({ filename: 'styles.css', disable: false, allChunks: true })
  ]
};
