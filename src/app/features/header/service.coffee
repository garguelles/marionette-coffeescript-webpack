Marionette = require('backbone.marionette')
{Collection} = require('backbone')
View = require('./view')

##
## @description: works as a facade. all modules that
## will talk to the header will pass thorugh this Object
##
class HeaderService extends Marionette.Object

  initialize: (options = {}) ->
    @container = options.container
    @setup()

  setup: ->
    @collection = new Collection()
    @view = new View collection: @collection
    @container.show(@view)

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

module.exports = HeaderService
