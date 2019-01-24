var module = require("./module.js");
const express = require("express");
const bodyParser = require("body-parser");
const port = 3004;

app = express();

app.use(bodyParser.json());

app.get("/", (req, res) => {
	res.type('json');
    res.json(module.today());
});

app.listen(port,function(){
	console.log("App listening on port " + port)
});
