Marionette = require('backbone.marionette')
tpl = require ('./layout-template.jade')

class MainLayoutView extends Marionette.View
  el: '.application'
  template: tpl,

  regions:
    content: '.content__region'
    header: '.header__region'
    footer: '.footer__region'

module.exports = MainLayoutView
