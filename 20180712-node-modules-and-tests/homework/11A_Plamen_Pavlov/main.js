var smodule = require("./data.js");
var day = require("./module.js");
var express = require("express");
var bodyParser = require("body-parser");
var port = 3021;

app = express();

app.use(bodyParser.json());

app.get("/", function (request, response) {
	response.json(day.today())	
})

app.listen(port);