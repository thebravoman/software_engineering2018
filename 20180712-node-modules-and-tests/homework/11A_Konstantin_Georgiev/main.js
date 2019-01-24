
var date = require("./date.js");
var port = 3015;
var express = require("express");
var bodyParser = require("body-parser");

app = express();
app.use(bodyParser.json());
app.get("/", (req, res) => {res.json(date.today());});
app.listen(port);
