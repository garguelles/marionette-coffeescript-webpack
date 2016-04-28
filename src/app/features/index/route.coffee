{Route} = require('backbone-routing')
View = require('./view')

class IndexRoute extends Route

  initialize: (options) ->
    @container = options.container

  render: ->
    @view = new View()
    @container.show(@view)

module.exports = IndexRoute
