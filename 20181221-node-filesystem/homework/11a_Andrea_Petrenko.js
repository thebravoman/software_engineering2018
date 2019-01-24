const express = require('express');
const bodyParser = require('body-parser');
const fs = require("fs");

const app = express();

const filename = 'data.json';
const PORT = 3002;

app.use(bodyParser.json());

app.get('/', function (request, response) {
    fs.exists(filename, (exists) => {
        if (exists) {
            console.log("YEYY IMA FAIL");
            fs.readFile(filename, (err, data) => {
                if (err) {
                    console.log("GRESHKAAA");
                } else {
                    response.type('json');
                    response.json(JSON.parse(data));
                }
            });
        }
        else {
            console.log("OOOPSSS NQMA FAIL I SEGA KO PRAIM A?");
        }
    });
});

app.listen(PORT, function (){
  console.log('porta na koito bacame e' + PORT);
});
