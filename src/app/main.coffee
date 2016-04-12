require './plugins'
Application = require('./application/application')

app = new Application()
window.App = app

Backbone.history.start()
