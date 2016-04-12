var entry = './src/app/main.coffee',
output = {
  path: __dirname,
  filename: 'main.js'
};

var webpack = require('webpack');

module.exports.development = {
  debug : true,
  devtool : 'eval',
  entry: entry,
  output: output,
  module : {
    loaders : [
      { test: /\.js?$/, exclude: /node_modules/, loader: 'babel-loader' },
      { test: /\.coffee$/, exclude: /node_modules/, loader: "coffee-loader" },
      { test: /\.hbs$/, loader: 'handlebars-loader' },
      { test: /\.jade/, loader: 'jade-loader' }
    ]
  },
  resolve: {
    extensions: ['', '.js', '.json', '.coffee']
  },
  plugins: [
    new webpack.ProvidePlugin({
      $: 'jquery',
      jQuery: 'jquery',
      'window.jQuery': 'jquery'
    })
  ]
};

module.exports.production = {
  debug: false,
  entry: entry,
  output: output,
  module : {
    loaders : [
      { test: /\.js?$/, exclude: /node_modules/, loader: 'babel-loader' },
      { test: /\.hbs$/, loader: 'handlebars-loader' },
      { test: /\.jade/, loader: 'jade-loader' }
    ]
  },
  resolve: {
    extensions: ['', '.js', '.json', '.coffee']
  }
};
