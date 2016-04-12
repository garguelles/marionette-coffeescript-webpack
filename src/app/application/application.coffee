Radio = require('backbone.radio')
Marionette = require('backbone.marionette')
LayoutView = require('./layout-view')

routerChannel = Radio.channel('router')

class Application extends Marionette.Application

  initialize: ->
    @body = $('body')
    @layout = new LayoutView()
    @layout.render()

  onStart: ->
    console.log('app starting')
    if Backbone.history
      Backbone.history.start()

module.exports = Application
