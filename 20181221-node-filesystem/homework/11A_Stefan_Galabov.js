const express = require('express');
const bodyParser = require('body-parser');
var fs = require('fs');
const port = 3023;

const filename = "data.json";

const app = express();

app.use(bodyParser.json());

app.get('/', function(req, res) {
  fs.exists(filename, function(exists) {
    if(exists){
      fs.readFile(filename, function(err, data) {
        if(err){
          console.log(err);
        }else{
          res.set('Content-type', 'application/json');
          res.json(JSON.parse(data));
        }
      });
    }else{
      console.log('File no');
    }
  });
});

app.listen(port, function(){
  console.log("hello there " + port);
});
