express = require 'express'

app = express.createServer express.logger()

app.get '/', (request, response) ->
	response.send 'Hello, Mocha-fied World!'

port = process.env.PORT or 3000

app.listen port, ->
	console.log "Listening on #{port}"
