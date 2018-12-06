const express = require('express');
const bodyParser = require('body-parser');


const app = express();


app.use(bodyParser.json());


app.get('/', function (request, response) {
  response.json({'studentNr':'02'});

});

app.post('/', function(request, response){
  if(request.body["whoami"] == "id")
    response.json({'I am' : 'AP'});
  else if(request.body["action"] == "id")
    response.json(2);
  else {
    response.status(404).json({"NOOOO":"THIS WAS NOT FOUND!"});
  }
});


app.listen(2002, function () {
  console.log('Aleluyaa this app runs!!!  It is on port 2002! :) ');
});
 
