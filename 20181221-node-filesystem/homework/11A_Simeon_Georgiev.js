const express = require('express');
const bodyParser = require('body-parser');
var fs = require('fs');

const filename = "data.json";

const app = express();

app.use(bodyParser.json());

app.get('/', function(request, response){
	response.setHeader("Content-Type", "application/json");
	fs.exists(filename, function(exists) {
		if (exists){
           console.log("File exists");
           fs.readFile(filename, function(err, data){
               if (err) {
                   console.log(err);
               }else{
                   //console.log("Data read.");
                   //console.log(data.toString());
                   response.json(JSON.parse(data));
               }
           });
       }else{
           console.log("File does not exist.");
       }
    })
});
app.listen(3022, function () {
  console.log('zdr 3022');
});