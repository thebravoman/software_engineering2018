const express = require('express');
const bodyParser = require('body-parser');
const port = 3013;
const app = express();
const fs = require("fs");

app.use(bodyParser.json());

app.get('/', function (request, response) {
    const filename = "data.json";
    fs.exists(filename, (exists) => {
        if (exists) {
            console.log("File does exist!");
            fs.readFile(filename, (err, data) => {
                if (err) {
                    console.log("Error!");
                } else {
                    response.type('json');
                    let obj = JSON.parse(data);
                    response.json(obj);
                }
            });
        }
        else {
            console.log("File does not exist!");
        }
    });
});

app.listen(port, () => {
    console.log('FS app listening on port ' + port);
});
