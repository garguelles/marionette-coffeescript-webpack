{Route} = require('backbone-routing')
View = require('./view')

class IndexRoute extends Route

  initialize: (options) ->
    console.log 'initialize index route'
    @container = options.container

  render: ->
    console.log('sample')
    @view = new View()
    @container.show(@view)

module.exports = IndexRoute
