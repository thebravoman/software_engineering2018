const express = require('express');
var today = require("./date.js").today;

const app = express();

app.get('/', function (request, response) {
    response.json("Hello, today is " + today());
});

app.listen(3003, function () {
    console.log('App listening on port 3003!');
});

exports.app = app;