var module = require("./module.js");
var express = require("express");
var bodyParser = require("body-parser");
var port = 3005;
app = express();
app.use(bodyParser.json());
app.get("/", (req, res) => {
    res.json(module.today());
});
app.listen(port);
