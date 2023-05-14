var http = require('http');
var httpServer = http.createServer(function (req, resp) {
    resp.writeHead(200, {'Access-Control-Allow-Origin':'*','Content-Type': 'text/plain'});
    resp.write("Welcome to my server:ielmakhf.42.fr");
    resp.end();
});

// Start http server listen on port 3000.
httpServer.listen(3000);
// console.log("Use browser to get url 'http://localhost:3000/server.js'");