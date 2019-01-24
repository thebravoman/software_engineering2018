const express = require('express');
const bodyParser = require('body-parser');
const fs = require("fs");

const port = 3013;
const app = express();


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
                    let obj = JSON.parse(data);
                    response.type('json');
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
