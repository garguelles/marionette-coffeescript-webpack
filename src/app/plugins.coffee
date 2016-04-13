Backbone = require('backbone')
Marionette = require('backbone.marionette')
bootstrap = require("bootstrap")

if window.__agent
  window.__agent.start(Backbone, Marionette)
