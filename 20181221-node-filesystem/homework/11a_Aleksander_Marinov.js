const express = require('express');
const bodyParser = require('body-parser');
const fs = require('fs');
const app = express();

app.use(bodyParser.json());

app.get('/', function(request, response) {
    const file_name = "some.json";
    fs.exists(file_name, function(exists) {
        if(exists) {
            console.log("File found");
            fs.readFile(file_name, function(error, data) {
                if(error) {
                    console.log("Some error");
                }
                else {
                    response.json('json');
                    var object = JSON.parse(data);
                    response.json(object);
                }
            });
        }
        else {
            console.log("File not found");
        }
    });
});

app.post('/', function(request, response) {
    let object = {};
    object['proxy'] = request.body();
    response.json(object);
});

app.listen(3001, function() {
    console.log("Example app listening on port 3001");
});