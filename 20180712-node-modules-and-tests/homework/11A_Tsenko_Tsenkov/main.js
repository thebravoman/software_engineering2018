const express = require('express')
const bodyParser = require('body-parser')
const port = 3025

const date = require('./module.js')
const app = express()

app.use(bodyParser.json())

app.get('/', function(request, response){
	response.json(date.today());
});

app.listen(port, function(){
	console.log('Listening on port ' + port) 
});	
