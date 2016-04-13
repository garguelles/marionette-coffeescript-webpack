require './plugins'
Application = require('./application/application')
HeaderService = require('./features/header/service')
IndexRouter = require('./features/index/router')

app = new Application()
window.App = app

# initialize services
app.services.headerService = new HeaderService
  container: app.layout.getRegion('header')

# initialize routers
app.index = new IndexRouter
  container: app.layout.getRegion('content')

app.start();
