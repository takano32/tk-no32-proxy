#! /usr/bin/env node_modules/coffee-script/bin/coffee
# author: takano32 <tak@no32 dot tk>
# vim: noet sts=4:ts=4:sw=4
#

coffee = require 'coffee-script'

http = require 'http'
httpProxy = require 'http-proxy'

source =
	host: '0.0.0.0'
	port: 80

router =
	'no32.tk':   '192.168.32.32'
	'localhost': '127.0.0.1:9000'
	'yabai':     'no32.tk:3000'

options =
	source: source
	router: router

proxy = new httpProxy.createServer(options)
proxy.listen 80

# Hello http server
http.createServer (req, res) ->
	headers =
		'Content-Type': 'text/plain'

	res.writeHead 200, headers
	res.write 'Hi'
	res.end()
.listen 9000, '0.0.0.0'

