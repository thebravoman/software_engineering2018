
const express = require('express');
const bodyParser = require('body-parser');

const app = express();

app.use(bodyParser.json());

const todayModule = require('../modules/today.js');

// console.log(todayModule.today());

app.get('/', function(request, response) {
  response.json(todayModule.today());
});

app.listen(3026, function() {
  console.log('Homework app listening on port 3026!');
});
