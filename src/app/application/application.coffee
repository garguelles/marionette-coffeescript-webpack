{history} = require('backbone')
Radio = require('backbone.radio')
Marionette = require('backbone.marionette')
LayoutView = require('./layout-view')

routerChannel = Radio.channel('router')
servicesChannel = Radio.channel('services')

class Application extends Marionette.Application

  initialize: ->
    @body = $('body')
    @layout = new LayoutView()
    @layout.render()
    @services = {}

  onStart: ->
    history.start() if history

  invokeService: ->

module.exports = Application
