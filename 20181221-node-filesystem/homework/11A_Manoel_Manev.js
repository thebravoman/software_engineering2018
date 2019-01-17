const express = require('express');
const bodyParser = require('body-parser');
const fs = require("fs");

const app = express();


app.use(bodyParser.json());

app.get('/', function (request, response) {
    const filename = "data.json";
    fs.exists(filename, (exists) => {
        if (exists) {
            console.log("File ima");
            fs.readFile(filename, (err, data) => {
                if (err) {
                    console.log("Error!");
                } else {
                    response.type('json');
                    response.json(JSON.parse(data));
                }
            });
        }
        else {
            console.log("File nema");
        }
    });
});

app.listen(3017,function (){
    console.log('Rabotim na port 3017 ');
});
