const express = require('express');
const bodyParser = require('body-parser');
const port = 3018;

const app = express();
var date_module = require('./date_module.js');

app.use(bodyParser.json());


app.get('/', function (request, response) {
    response.json(date_module.today());
});


app.listen(port);