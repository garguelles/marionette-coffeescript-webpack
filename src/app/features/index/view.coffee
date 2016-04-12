{View} = require('backbone.marionette')
template = require('./template.jade')

class IndexView extends View
  template: template
  className: 'index'

module.exports = IndexView
