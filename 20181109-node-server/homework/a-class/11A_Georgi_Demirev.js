/*eslint-env node*/

const express = require('express');
const bodyParser = require('body-parser');


const app = express();


app.use(bodyParser.json());


app.get('/', function (request, response) {
  response.json({'studentNr':'06'});

});

app.post('/', function(request, response){
     
      if(request.body["whoami"] == "id")
          response.json({'I am' : '06'});
      else if(request.body["action"] == "id") 
          response.json(6);
      else
          response.status(404).json({"error" : "not found"});
});

app.listen(2006, function () {
  console.log('Example app listening on port 2006!');
});