/*eslint-env node*/

const express = require('express');
const bodyParser = require('body-parser');


const app = express();


app.use(bodyParser.json());


app.get('/', function (request, response) {
  response.json({'response':{'hello':'world'}});

});

app.post('/', function(request, response){
      console.log(request.body);
      var payload = {};
      payload['proxy']=request.body;
      console.log(JSON.stringify(payload));
      response.json(payload);
});


app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});
