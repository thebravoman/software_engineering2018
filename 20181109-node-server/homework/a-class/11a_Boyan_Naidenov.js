const express = require('express');
const bodyParser = require('body-parser');
const app = express();

app.use(bodyParser.json());


app.get('/', function (request, response) {
	response.json({'studentNr':'04'});
});
app.post('/', function(request, response){     
	if(request.body["action"]=="id")
		response.json(4);    
	else if(request.body["whoami"] == "id")
		response.json({"I am" : "04"});
});



app.listen(2004, function(){
	console.log('Example app listening on port 2004!');
});
