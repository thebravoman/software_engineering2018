const express = require('express');
const bodyParser = require('body-parser');

const app = express();

app.use(bodyParser.json());

app.get('/', function(request, response){
   response.json({"studentNr":"25"}); 
});

app.post('/', function(request, response){
     if(request.body['action']=='id'){
         response.json(25);
     } 
     else if(request.body['whoami']=='id'){
          response.json({'I am':'25'});
     }
     else{
         response.status(406).send({
             error: "Not Acceptable"
         });
     }
});

app.listen(2025, function(){
	console.log('Example app listening on port 2025!');
});
