const express = require('express');
const bodyParser = require('body-parser');

const app = express();
app.use(bodyParser.json());

app.get('/', function (request, response) {
	response.json({'Student Number':'12'});

});

app.post('/', function(request, response){
	console.log(request.body);
	if(request.body["whoami" == "id"]) {
		response.json({'I am' : '12'});
	}
	else if(request.body['action'] == "id") {
		response.json(12);
	}
});

app.listen(2012, function () {
	console.log('Example app listening on port 2012!');
});