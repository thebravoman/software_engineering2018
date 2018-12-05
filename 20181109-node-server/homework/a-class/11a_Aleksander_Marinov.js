const express = require('express');
const bodyParser = require('body-parser');
const app = express();

app.use(bodyParser.json());

app.get('/', function (request, response) {
  response.json({'studentNr':'01'});
});

app.post('/', function(request, response) {
  console.log(request.body);
  var body = request.body;
  if(body['whoami'] === 'id') {
    response.json({'I am': '01'});
  }
  else if(body['action'] === 'id') {
    response.json(1);
  }
});

module.exports = app;

app.listen(2001, function () {
  console.log('Example app listening on port 2001!');
});