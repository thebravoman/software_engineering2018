const express = require('express');
const bodyParser = require('body-parser');
const fs = require("fs");

const app = express();
app.use(bodyParser.json());
const filename = "data.json";

app.get('/', function (request, response) {

 	fs.readFile(filename, (err, data) => {  
    	if (err) throw err;

        else{
        	response.set("content-type","application/json");
            let obj=JSON.parse(data);
            response.json(obj);
        }
	}); 	
});

app.listen(3008, function () {
  console.log('Listening on port 3008!');
});