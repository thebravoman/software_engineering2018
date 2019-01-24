const express = require('express');
const bodyParser = require('body-parser');

const app = express();

app.use(bodyParser.json());

app.get('/', function(request, response){
  response.json({'studentNr' : 23});
});

app.post('/', function(request, response){
  if(request.body['action'] === 'id'){
    response.json(23);
  }else if(request.body['whoami'] === 'id'){
    response.json({'I am' : '23'});
  }
});

app.listen(2023, function (){
  console.log('Jes! Listens on port 2023');
});
