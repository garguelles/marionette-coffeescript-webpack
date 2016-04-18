Marionette = require('backbone.marionette')
{Collection} = require('backbone')
View = require('./view')
Radio = require('backbone.radio')

##
## @description: works as a facade. all modules that
## will talk to the header will pass thorugh this Object
##
class HeaderService extends Marionette.Object

  id: 'header'

  initialize: (options = {}) ->
    @channel = Radio.channel("services:#{@id}")
    @container = options.container
    @setup()
    @listeners()

  setup: ->
    @collection = new Collection()
    @view = new View collection: @collection
    @container.show(@view)

  listeners: ->
    @channel.reply
      add: @add
      remove: @remove
      activate: @activate
      test: @test
    , this

  # void: adds items to the header
  # collection (menus)
  add: (model) ->
    @collection.add(model)

  # void: remove menu item
  remove: (model) ->
    _model = @collection.findWhere(model)
    @collection.remove(_model)

  # void: set menu item as active
  activate: (model) ->
    @collection.set('active', false)
    _model = @collection.findWhere(model)
    model.set('active', true) if model

  test: (param) ->
    console.log(param)

module.exports = HeaderService
