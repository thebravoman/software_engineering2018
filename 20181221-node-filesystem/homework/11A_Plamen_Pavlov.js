const bodyParser = require("body-parser");
const express = require("express");

const fs = require("fs");
const app = express();

const port = 3021;
const filename = 'data.json';

app.use(bodyParser.json());


app.get('/', function(request, response) {
  fs.exists(filename, function(exists) {
    if (exists) {
    	console.log("File exists!");
    	fs.readFile(filename, function(err, data) {
        if (err) {
          console.log("Error");
        }
        else {
          response.set('Content-type', 'application/json');
          response.json(JSON.parse(data));
        }
      });
    }
    else {
      console.log("File does not exist!");
    }
  });
});

app.listen(port, function() {
  console.log("App listening on port " + port);
});


