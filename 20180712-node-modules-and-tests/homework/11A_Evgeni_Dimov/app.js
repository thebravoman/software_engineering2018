const express = require('express');
const today = require('./date.js').today;

const port = 3010;
const app = express();

app.get('/', function (req, res) {
    res.json(`Hello, today is ${today()}`);
});

app.listen(port, function(){
    console.log(`Sever listening on port ${port}!`)
});

exports.app = app;
