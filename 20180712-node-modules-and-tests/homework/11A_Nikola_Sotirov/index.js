var module = require("./modules/module.js");
const express = require("express");
const bodyParser = require("body-parser");
const port = 3020;

app = express();

app.use(bodyParser.json());

app.get("/", (req, res) => {
    res.json(module.today());
});

app.listen(port);