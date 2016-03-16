$ = require('jquery')
Marionette = require('backbone.marionette')
AppController = require('../controllers/main-controller')

class MainRouter extends Marionette.AppRouter

  initialize: ->
    @controller = new AppController()
    console.log('appcontroller', @controller)

  appRoutes:
    '': 'dashboard'

module.exports = MainRouter

###
// import $ from 'jquery';
// import Marionette from 'backbone.marionette';
// import AppController from '../controllers/main-controller';
//
// export default Marionette.AppRouter.extend({
//
//   initialize() {
//     this.controller = new AppController();
//     console.log('appcontroller', this.controller);
//   },
//
//   appRoutes: {
//     '': 'dashboard'
//   }
// });
//
###
