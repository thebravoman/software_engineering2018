const fs = require("fs");
const express = require('express');
const app = express();

app.get('/', function (request, response) {
    fs.exists("./data.json", function (res) {
        if (res){
            fs.readFile("./data.json", function (err, data) {
                if (err) {
                    response.json("Error");
                } else {
                    response.json(JSON.parse(data.toString()));
                }
            })
        } else {
            response.json("Error");
        }
    })
});

app.listen(3014, function () {
    console.log('App listening on port 3014!');
});
