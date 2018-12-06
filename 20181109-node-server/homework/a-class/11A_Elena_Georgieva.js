const express = require('express');
const bodyParser = require('body-parser');

const app = express();

app.use(bodyParser.json());

app.listen(2011, function(){
	console.log("Listening on port 2011");
});

app.get('/', function(request, response){
	response.json({'StudentNr':'11'});
});

app.post('/', function(request, response){
	var result={};
	result=request.body;
	if(result['whoami']==='id'){
		response.json({'I am':'11'});
	}
	else if(result['action']==='id'){
		response.json(11);
	}
});