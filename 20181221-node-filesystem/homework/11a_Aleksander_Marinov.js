const express = require("express");
const bodyParser = require("body-parser");
const fs = require("fs");
const app = express();

app.use(bodyParser.json());

app.get('/', function (request, response) {
    const filename = "data.json";
    if (fs.existsSync(filename)) {
        console.log("File is found");
        let json = JSON.stringify(fs.readFileSync(filename).toString());
        let result = JSON.parse(json);
        //console.log(json);
        console.log(result);
        //response.send(json);
        response.type("application/json").send(result);
    }
    else {
        response.status(404);
        response.send("FILE NOT FOUND");
    }
});

app.listen(3001, function () {
    console.log("Example app listening on port 3001");
})
