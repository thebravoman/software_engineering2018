const express = require('express');
const bodyParser = require('body-parser');


const app = express();


app.use(bodyParser.json());


app.get('/', function (request, response) {
 	response.json({'studentNr':'08'});

});

app.post('/', function(request, response){
	if(request.body["whoami"] == "id")
        response.json({'I am' : '08'});
    else if(request.body["action"] == "id") 
        response.json(8);
});


app.listen(2008, function () {
  console.log('Listening on port 2008!');
});
