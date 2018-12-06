/*eslint-env node*/

const express = require('express');
const bodyParser = require('body-parser');

const app = express();

app.use(bodyParser.json());

app.get('/', function (request, response) {
    response.json({'studentNr': '03'});
});

app.post('/', function(request, response){
    var data = request.body;
    if (data['whoami'] === 'id')
    {
        response.json({'I am' : '03'});
    }else if (data['action'] === 'id')
    {
        response.json(3);
    }else{
        response.status(422).send("error: ne pozna");
    }
});

app.listen(2003, function () {
    console.log('Example app listening on port 2003!');
});