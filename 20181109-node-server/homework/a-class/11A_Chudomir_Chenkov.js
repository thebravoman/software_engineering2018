const express = require('express');
const bodyParser = require('body-parser');

const app = express();

app.use(bodyParser.json());

app.get('/', function(request, response) {
  var res = {
    'header' : {
      'content-type' : 'application/json'
    },
    'body' : {
      'studentNr' : 26
    }
  };

  response.json({'response' : res});
});

app.post('/', function(request, response) {
  var reqbody = request.body;

  if (reqbody['action'] === 'id') {
    var res = {
      'header' : {
        'content-type' : 'application/json'
      },
      'body' : 26
    };

    response.json({'response' : res});
  }

  if (reqbody['whoami'] === 'id') {
    var res = {
      'header' : {
        'content-type' : 'application/json'
      },
      'body' : {
        'I am' : 26
      }
    };

    response.json({'response' : res});

  }

});

app.listen(2026, function() {
  console.log('Homework app listening on port 2026!');
});
