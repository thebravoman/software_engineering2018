var getDay = require("./module.js");
var express = require("express");

var app = express();

app.get("/", function (request, response) {
	response.json(getDay.today())	
})

app.listen(3006, function() {
  console.log('Started Node.js express server at 127.0.0.1:3006');
});