const http = require('http');
const todayModule = require('./modules/today');

const port = 3013;

function handleGetRequest(response) {
    response.writeHead(200, {'Content-Type' : 'text/plain'});
    response.end(todayModule.today());
}

function handleRequest(request, response) {
    switch (request.method) {
        case 'GET':
            handleGetRequest(response);
            break;
    }
}

http.createServer(handleRequest).listen(port, '127.0.0.1', () => {
    console.log("Server listening on port " + port);
});
