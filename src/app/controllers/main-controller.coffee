Marionette = require('backbone.marionette')

class MainController extends Marionette.Object

  initialize: (options) ->
    console.log('main controller', options)

  dashboard: ->
    console.log('dashboard action')

module.exports = MainController
###
// import Marionette from 'backbone.marionette';
//
// export default Marionette.Object.extend({
//
//   initialize(options) {
//   },
//
//   dashboard() {
//
//   }
//
//
// });
//
###
