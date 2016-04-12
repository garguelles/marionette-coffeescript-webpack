require './plugins'
Application = require('./application/application')
IndexRouter = require('./features/index/router')

app = new Application()
window.App = app

app.index = new IndexRouter
  container: app.layout.getRegion('content')

app.start();
