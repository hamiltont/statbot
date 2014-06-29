events  = require 'events'
config  = require './config/config'
bot     = new events.EventEmitter()

for module in config.statbot.modules
  console.log "loading #{module}"
  require("./modules/#{module}")(bot, config[module])
