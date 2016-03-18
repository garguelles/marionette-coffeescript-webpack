$ = require('jquery')
Marionette = require('backbone.marionette')
MainRouter = require('../routers/main')
LayoutView = require('./layout-view')

class Application extends Marionette.Application

  initialize: ->
    console.log('App Initialize')
    router = new MainRouter()

  start: ->
    Backbone.history.start() if Backbone.history
    $body = $('body')
    $body.html(new LayoutView().render().el)

module.exports = Application


