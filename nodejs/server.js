var http = require("http");
var url = require("url");

// http.createServer(function(request, response) {
// 	response.writeHead(200, {"content-type": "text/plain"});
// 	response.write("Hello World nodejs");
// 	response.end();
// }).listen(8888);

function start(route, handle) {
	function onRequest(request, response) {
		console.log("Request for " + pathname + " received");
		var pathname = url.parse(request.url).pathname;
		var content = route(handle, pathname);
		response.writeHead(200, {'content-type': 'text/plain'});
		// response.write("Welcome! NodeJs server is now running");
		response.write(content);
		response.end();
	}
	http.createServer(onRequest).listen(8888);
	console.log('Starting server... success!');
}

exports.start = start;