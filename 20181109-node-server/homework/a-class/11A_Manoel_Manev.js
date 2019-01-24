const express = require('express');
const bodyParser = require('body-parser');


const app = express();


app.use(bodyParser.json());


app.get('/', function (request, response) {
 	response.json({'studentNr':'17'});

});

app.post('/', function(request, response){
	if(request.body["whoami"] == "id")
        response.json({'I am' : '17'});
    else if(request.body["action"] == "id") 
        response.json(17);
});


app.listen(2017, function () {
  console.log('Listening on port 2017!');
});
