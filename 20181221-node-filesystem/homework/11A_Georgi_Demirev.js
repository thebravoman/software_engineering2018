const express = require('express');
const bodyParser = require('body-parser');
var fs = require('fs');

const app = express();

app.use(bodyParser.json());

app.get('/', function (request, response) {
	var filename = "data.json";
    fs.exists(filename, function(exists) {
    	if(exists) {
    		console.log("File found");
    		fs.readFile(filename, function(error, data) {
    			if(error)
    				console.log("error");
    			else {
    				response.type('json')
    				response.json(JSON.parse(data));
    			}
    		});
    	}
    })
});

app.listen(3006, function () {
  console.log('Example app listening on port 3006!');
});