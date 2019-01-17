const express = require('express');
const bodyParser = require('body-parser');

const app = express();

const dateModule = require('./today.js');

app.use(bodyParser.json());

app.get("/", function (request, response) {
	response.json(dateModule.today());	
});

app.listen(3012, function() {
  console.log('Start on port 3012!');
});

