var express = require('express');
var app = express();
var fs = require('fs');
var bodyParser = require('body-parser');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));

var html = `
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>NODE</title>
    </head>
    <body>
    <form action="/write" method="post">
        <label for="name">Enter name: </label>
        <input id="name" type="text" name="name" value="">
        <br>
        <label for="id">Enter id: </label>
        <input id="id" type="text" name="id" value = "">
        <input type="submit" value="Write">
    </form>
    </body>
    <script src="nodef.js"></script>
</html>
`;

function Listen(message) {
    console.log(message);
}

app.get('/post', function (request, response) {
    response.send(html);
});

app.post('/write', function (request, response) {
    fs.readFile('data.json', 'utf8', (err, data) => {
        if(data.length > 0) {
            fs.appendFile('data.json', ",\r\n", (err) => {});
        }
        fs.appendFile('data.json', JSON.stringify(request.body), (err) => {
            if(err)
                response.send(err);
            else {
                var complete = html;
                complete += data;
                response.send(complete);
            }
        });
    });
});

app.get('/', function (req, res) {
    fs.readFile('data.json', 'utf8', (err, data) => {
        res.set('content-type', 'application/json');
        res.send(data);
    });
});

app.listen(3005, Listen("Listening on 3005"));
