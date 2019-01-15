const express = require('express');
const bodyParser = require('body-parser');
const fs = require("fs");
const app = express();

app.use(bodyParser.json());

app.get('/', function (req, res) {
    const filename = "data.json";
    fs.exists(filename, (exists) => {
        if (exists) {
            fs.readFile(filename, (err, data) => {
                if (err) {
                    console.log("Error!");
                } 
				else {

                    let obj = JSON.parse(data);
					res.json(obj);
                    res.type('json');
                    
                }
            });
        }
        else {
            console.log("Does not exist file");
        }
    });
});




app.listen(3004, () => {
    console.log('Listening on port 3004');
});
