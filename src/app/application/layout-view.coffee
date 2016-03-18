Marionette = require('backbone.marionette')
tpl = require ('./layout-template.jade')

class MainLayoutView extends Marionette.View

  template: tpl,

  regions:
    contentRegion: '.content'

  onRender: ->

module.exports = MainLayoutView
