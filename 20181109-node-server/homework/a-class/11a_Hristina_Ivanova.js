const express = require('express');
const bodyParser = require('body-parser');

const app = express();

app.use(bodyParser.json());

app.get('/', function (request, response) {
    response.json({'studentNr': '24'});
});

app.post('/', function(request, response){
    var data = request.body;
    if (data['whoami'] === 'id')
    {
        response.json({'I am' : 'HI'});
    }else if (data['action'] === 'id')
    {
        response.json(24);
    }else{
        response.status(404).send("STOPP:not found ;(");
    }
});

app.listen(2024, function () {
    console.log('Example app listening on port 2024!');
});
