const express = require('express');
const bodyParser = require('body-parser');
const fs = require('fs');

const filename = 'data.json';
const PORT = 3026;

const app = express();

app.use(bodyParser.json());

app.get('/', function(req, res) {
  fs.exists(filename, function(exists) {
    if (exists) {
      fs.readFile(filename, function(err, data) {
        if (err) {
          console.log(err);
        }
        else {
          res.set('Content-type', 'application/json');
          res.json(JSON.parse(data));
        }
      });
    }
    else {
      console.log('File does not exist');
    }
  });
});

app.listen(PORT, function() {
  console.log("App listening on port " + PORT);
});