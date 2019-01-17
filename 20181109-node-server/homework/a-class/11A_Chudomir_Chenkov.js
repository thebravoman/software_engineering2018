const express = require('express');
const bodyParser = require('body-parser');

const app = express();
const number = 26;

app.use(bodyParser.json());

app.get('/', function(request, response) {
  var res = {'studentNr' : number};

  response.json(res);
});

app.post('/', function(request, response) {
  var reqbody = request.body;
  response.set('Content-Type', 'application/json');

  if (reqbody['action'] === 'id') {
    response.json(number);
    console.log(number);
  }

  if (reqbody['whoami'] === 'id') {
    var res = {'I am' : number};

    console.log(res);
    response.json(res);
  }

});

app.listen(2026, function() {
  console.log('Homework app listening on port 2026!');
});
