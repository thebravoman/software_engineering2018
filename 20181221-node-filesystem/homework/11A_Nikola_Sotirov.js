const express = require("express");
const fs = require("fs");

const bodyParser = require("body-parser");
const port = 3020

const app = express();

app.use(bodyParser.json());

app.get("/", (req, res) => {
    res.setHeader("Content-Type", "application/json");

    var filename = "data.json";

    fs.readFile(filename, (err, data) => {
        if (err) {
            console.log(err.message);
            return;
        }

        res.json(JSON.parse(data));
    });
});

app.listen(port);