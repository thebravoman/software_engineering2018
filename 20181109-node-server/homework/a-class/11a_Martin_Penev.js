/*eslint-env node*/

const express = require('express');
const bodyParser = require('body-parser');


const app = express();


app.use(bodyParser.json());


app.get('/', function (request, response) {
    // response.writeHead(200,  {'content-type' : 'application/json'});
    response.json({'studentNr': 18});

    response.end();
});



app.post('/', function(request, response){
      console.log(request.body);
      if(request.body.hasOwnProperty('action')){
            response.json(18);
        }else if(request.body.hasOwnProperty('whoami')){
            response.json({"I am":18});
      }
});


app.listen(2018, function () {
  console.log('Example app listening on port 2018!');
});
