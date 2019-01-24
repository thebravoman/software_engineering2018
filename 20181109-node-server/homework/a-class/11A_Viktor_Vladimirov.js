const express = require('express');
const bodyParser = require('body-parser');

const app = express();


app.use(bodyParser.json());


app.get('/', function (request, response) {
  response.json({'studentNr':'05'});
});

app.post('/', function(request, response){
      if(request.body['action']=='id')
        response.json(5);
      else if(request.body['whoami']=='id')
        response.json({'I am':'05'});
});


app.listen(2005);
