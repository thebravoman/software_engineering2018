const express = require('express')
const bodyParser = require('body-parser')
const fs = require('fs')

const app = express()

app.use(bodyParser.json());

app.get('/', function (request, response) {
	const filename = 'data.json'
	 fs.exists(filename, function(exists) {
    	if(exists) {
    		console.log('File found')
    		fs.readFile(filename, function(error, data) {
    			if(error)
    				console.log('error')
    			else {
    				response.type('json')
    				response.json(JSON.parse(data));
    			}
    		});
    	}
    })
});

app.listen(3012, function () {
  console.log('App listening on port 3012!');
});