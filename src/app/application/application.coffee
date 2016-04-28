{history} = require('backbone')
Radio = require('backbone.radio')
Marionette = require('backbone.marionette')
LayoutView = require('./layout-view')
_ = require('lodash')

routerChannel = Radio.channel('router')
servicesChannel = Radio.channel('services')

class Application extends Marionette.Application

  initialize: ->
    @body = $('body')
    @layout = new LayoutView()
    @layout.render()
    @_services = {}
    @_routers = {}

  onStart: ->
    history.start() if history

  invokeService: (serviceId, method, options) ->
    channel = Radio.channel("services:#{serviceId}")
    channel.request(method, options)

  registerService: (service) ->
    @_services[service.id] = service

  use: (module) ->
    throw new Error('module must have a name') unless module.name

module.exports = Application
