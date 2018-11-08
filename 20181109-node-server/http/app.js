var http = require('http');
var url = require('url');
var port = 3000;

function processGetRequest(request, response) {
  response.writeHead(200, {
    'Content-Type' : 'application/json'
  });
  var query = url.parse(request.url, true).query;
  var object = {};
  for (var arg in query)
  {	  
	  object[arg] = query[arg];
	  console.log(arg + ':' + query[arg]);	  
  }
  
  response.end(JSON.stringify(object));
}

function processPostRequest(request, response) {
  response.writeHead(200, {
    'Content-Type' : 'application/json'    	
  });
  
  //var data = '';
  var data = [];
  request.on('data', function(chunk) {
	  data.push(chunk);
	  //data+=chunk;
	    	  
  });
  request.on('end', function(){
	  
		  console.log(data.toString());	  
		  
		  var object = JSON.parse(data);
		  object.processed = true;		  
		  response.end(JSON.stringify(object));
	  
  });
  request.on('error', function(err){
	  console.log('error');
  })
}

function processPutRequest(request, response) {
  response.writeHead(200, {
    'Content-Type' : 'text/plain'
  });
  response.end('Put action was requested');
}

function processHeadRequest(request, response) {
  response.writeHead(200, {
    'Content-Type' : 'text/plain'
  });
  response.end('Head action was requested');
}

function processDeleteRequest(request, response) {
  response.writeHead(200, {
    'Content-Type' : 'text/plain'
  });
  response.end('Delete action was requested');
}

function processBadRequest(response) {
  response.writeHead(400, {
    'Content-Type' : 'text/plain'
  });
  response.end('Bad request');
}

function processRequest(request, response) {
	
  console.log(request.method + ' ' + request.url);
  
  switch (request.method) {
    case 'GET':
      processGetRequest(request, response);
      break;
    case 'POST':
      processPostRequest(request, response);
      break;
    case 'PUT':
      processPutRequest(request, response);
      break;
    case 'DELETE':
      processDeleteRequest(request, response); 
      break;
    case 'HEAD':
      processHeadRequest(request, response);
      break;
    default:
      processBadRequest(response);
      break;
  }
  console.log('Request processing ended');
}

http.createServer(processRequest).listen(port);

console.log('Started Node.js http server at http://127.0.0.1:' + port);