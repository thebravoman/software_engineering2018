const express = require('express');
const bodyParser = require('body-parser');

const app = express();

app.use(bodyParser.json());

app.get('/', function (request, response){
	response.json({'studentNr':'19'});

});

app.post('/', function(request,response){
	if(request.body["whoami"] == "id")
		respose.json({'I am' : '19'});
	else if(request.body["action"] == "id")
		request.json(19);
	else{
		response.status(404).json({"error" : "not found"});
	}
	
});

	app.listen(2019, function(){
		console.log('Example app listening on port 2019!');

});