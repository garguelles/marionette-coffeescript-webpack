_ = require('lodash')
{history} = require('backbone')
{View} = require('backbone.marionette')
template = require('./template.jade')

class HeaderView extends View

  template: template

  tagName: 'nav'

  className: 'header navbar navbar-default navbar-fixed-top'

  attributes:
    role: 'navigation'

  collectionEvents:
    all: 'render'

  ui:
    'collpase': '#navbar-collapse'

  templateContext: ->
    menus: @collection.toJSON()

  events:
    'show.bs.collapse @ui.collapse': 'onCollapseShow'

  onCollpaseShow: ->
    @listenToOnce 'history', =>
      @ui.collapse.collapse('hide')

module.exports = HeaderView
