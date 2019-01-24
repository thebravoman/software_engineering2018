const express = require('express');
const bodyParser = require('body-parser');
const app = express();

app.use(bodyParser.json());

app.get('/', function (request, response) {
  response.json({'studentNr': '01'});
});

app.post('/', function(request, response) {
  console.log(request.body);
  if(request.body['whoami'] === 'id') {
    response.json({'I am': '01'});
  }
  else if(request.body['action'] === 'id') {
    response.json(1);
  }
  else {
    response.status(404);
    response.send("Server not found");
  }
});

app.listen(2001, function () {
  console.log('Example app listening on port 2001!');
});