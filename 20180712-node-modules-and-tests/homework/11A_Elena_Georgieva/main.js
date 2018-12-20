const express = require('express');
const bodyParser = require('body-parser');

const app = express();

const dateModule = require('./today.js');

app.use(bodyParser.json());

app.get("/", function (request, response) {
	response.json(dateModule.today());	
});

app.listen(3011, function() {
  console.log('Listening on port 3011!');
});
