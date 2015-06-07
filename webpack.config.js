module.exports =
{
  entry: './src/curry.coffee',
  output: {
    filename: 'index.js',
    library: 'curry',
    libraryTarget: 'umd'
  },
  module: {
    loaders: [
      { test: /\.coffee$/, loader: 'coffee' }
    ]
  }
}
