Marionette = require('backbone.marionette')
tpl = require ('./layout-template.jade')

class MainLayoutView extends Marionette.View
  el: '.application'
  template: tpl,

  regions:
    contentRegion: '.content__region'
    headerRegion: '.header__region'
    footerRegion: '.footer__region'

module.exports = MainLayoutView
