const fs = require("fs");
const express = require('express');

const app = express();

var filename = "./data.json";

app.get('/', function (request, response) {
    fs.exists(filename, function (res) {
        if (res) {
            fs.readFile(filename, function (err, data) {
                if (err) {
                    response.json("opa opa");
                } else {
                    response.json(JSON.parse(data.toString()));
                }
            })
        } else {
            response.json("opa");
        }
    })
});

app.listen(3003, function () {
    console.log('App listening on port 3003!');
});