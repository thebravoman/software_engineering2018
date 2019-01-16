var express = require('express');
var app = express();
var fs = require('fs');

function Listen(message) {
    console.log(message);
}

app.get('/', function (req, res) {
    fs.readFile('data.json', 'utf8', (err, data) => {
        res.set('content-type', 'application/json')
        res.send(data);
    });
});

app.listen(3005, Listen("Listening on 3005"));
