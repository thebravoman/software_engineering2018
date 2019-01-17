const fs = require("fs");
const express = require('express');
const bodyParser = require('body-parser');

const app = express();

app.use(bodyParser.json());

const file = "to_read.json";

app.listen(3011, function () {
  console.log('App listening on port 3011!');
});

app.get('/', function(request, response){
	response.set('Content-type', 'application/json');
	fs.exists(file, function(exists){
		if(exists){
			console.log("File exists...uau");
			fs.readFile(file, function(err, data){
				if(err){
					console.log(err);
				}else{
					response.json(JSON.parse(data));
				}
			});
		} else{
			console.log("File doesn't exist...sad");
		}
	});
});