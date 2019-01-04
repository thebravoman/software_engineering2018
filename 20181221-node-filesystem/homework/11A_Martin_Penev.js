/*eslint-env node*/

const express = require('express');
const bodyParser = require('body-parser');
const fs = require("fs");

const app = express();


app.use(bodyParser.json());


function readFileAsync(filename, response)
{
    fs.exists(filename, function(exists){
        if(exists){
            fs.readFile(filename, function(err, data){
                if(err){
                    console.log("Error!");
                }else{
                    console.log("File read!");
                    console.log(data.toString())
                    response.json(JSON.parse(data.toString()));
                  }
            });
            
        }else{
            console.log("File does not exist!");
        }
    });
}




app.get('/', function (request, response) {
  readFileAsync("./data.json", response);
});

app.listen(3000, function () {
  console.log('Homework app listening on port 3000!');
});
