const fs = require("fs");
const express = require('express');

const app = express();

const filename = "./data.json";

app.get('/', function (request, response) {
    fs.exists(filename, function (res) {
        if (res) {
            fs.readFile(filename, function (err, data) {
                if (err) {
                    response.json("mnogo losha shema");
                } else {
                    response.json(JSON.parse(data.toString()));
                }
            })
        } else {
            response.json("losha shema");
        }
    })
});

app.listen(3010, function () {
    console.log('App listening on port 3010!');
});