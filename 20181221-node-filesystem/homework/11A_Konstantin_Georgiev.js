const express = require('express');
const bodyParser = require('body-parser');
var fs = require("fs");
const app = express();


app.use(bodyParser.json());

app.get('/', function (request, response) {
    fs.exists("data.json", (exists) => {
        if (exists){
            console.log("File does exist!");
            fs.readFile("data.json", (error, data) => {
                if (error) {console.log("Error!");} 
				else {
                    response.type('json');
                    response.json(JSON.parse(data));}});}
        else {
            console.log("File doesn't exist.");
        }
    });
});

app.listen(3015, function(){console.log("Current port: 3015");});
