Marionette = require('backbone.marionette')
tpl = require ('../templates/index.jade')

class MainLayoutView extends Marionette.View

  template: tpl,

  regions:
    contentRegion: '.content'

  onRender: ->

module.exports = MainLayoutView
