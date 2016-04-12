{Router} = require('backbone-routing')
IndexRoute = require('./route')

class IndexRouter extends Router

  initialize: (options = {}) ->
    console.log('index router')
    @container = options.container

  routes:
    '': 'index'

  index: ->
    console.log('index route')
    new IndexRoute
      container: @container

module.exports = IndexRouter
