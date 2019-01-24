const express = require('express');
const bodyParser = require('body-parser');
const date = require('./date.js');
const app = express();

app.use(bodyParser.json());

app.get('/', function(request, response) {
    response.json(date.today());
});

app.listen(3001, function(request, response) {
    console.log("Example app listening on port 3001!");
});