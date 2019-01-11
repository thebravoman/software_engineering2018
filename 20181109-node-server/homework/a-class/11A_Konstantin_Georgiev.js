const express = require('express');
const bodyParser = require('body-parser');
const app = express();
app.use(bodyParser.json());
app.listen(2015, function(){
  console.log('App listening on port 2015.');}
);
app.get('/', function (request, response){
  response.json({'Number: ':'15'});
});
app.post('/', function(request, response){
      if(request.body["whoami"] == "id"){
          response.json({'I am number: ' : '15'});}
      else if(request.body["action"] == "id"){
          response.json(15);}
      else{response.status(404).json({"error" : "could not find anything"});}
    }
);
