var port = 3017;
var somemodule = require("./data.js");
var express = require("express");
var bodyParser = require("body-parser");

app = express();
app.use(bodyParser.json());
app.get("/", (req, res) => {
    res.json(somemodule.today());
});
app.listen(port);
