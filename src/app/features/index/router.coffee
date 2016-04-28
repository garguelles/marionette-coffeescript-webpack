{Router} = require('backbone-routing')
IndexRoute = require('./route')

class IndexRouter extends Router

  initialize: (options = {}) ->
    @container = options.container

  routes:
    '': 'index'

  index: ->
    new IndexRoute
      container: @container

module.exports = IndexRouter
