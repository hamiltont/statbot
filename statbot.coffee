#!/usr/bin/env coffee

#irc     = require('irc')
express = require('express')

records =
  '#elementary-web': {}
  '#ruby': {}
  '#kittybot': {}



app = express.createServer(express.logger())

app.get '/', (req, res) ->
  res.send('Hello world!')

port = process.env.PORT || 3000
app.listen port, ->
  console.log "Listening on #{port}"



# client = new irc.Client 'irc.freenode.net', 'statbot'
#   channels: ['#kittybot', '#ruby'] #['#elementary-web', '#ruby', '#kittybot']

# client.addListener 'join', (channel, nick, message) ->
#   records[channel][nick] = [] unless records[channel][nick]

#   data =
#     action:'join'
#     date: Date.now()
#   records[channel][nick].push data

#   console.log "#{nick} joined #{channel}"

# client.addListener 'part', (channel, nick, reason, message) ->
#   records[channel][nick] = [] unless records[channel][nick]

#   data =
#     action:'part'
#     date: Date.now()
#   records[channel][nick].push data

#   console.log "#{nick} left #{channel}"

# client.addListener 'message', (from, to, message) ->
#   if message == '!printlogs'
#     console.log JSON.stringify(records)
