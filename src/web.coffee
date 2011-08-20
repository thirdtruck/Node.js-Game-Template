server = new GameServer

express = require 'express'

app = express.createServer express.logger()

app.use app.router
app.use express.static __dirname + '/static'

app.get '/', (request, response) ->
	response.send server.exampleMessage()

port = process.env.PORT or 3000

app.listen port, ->
	console.log "Listening on #{port}"
