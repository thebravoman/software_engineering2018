
var module = require("./module.js");
const express = require("express");
const bodyParser = require("body-parser");
const port = 3008;

app = express();

app.use(bodyParser.json());

app.get("/", (req, res) => {
    res.json(module.today());
});

app.listen(port);