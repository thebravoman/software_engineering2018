const mod = require('./mod.js');
const express = require('express');
const bodyParser = require('body-parser');
const port = 3023;

const app = express();

app.use(bodyParser.json());

app.get('/', function(request, response){
  response.json(mod.today());
});

app.listen(port, function (){
  console.log('Jes! Listens on port 2023');
});
