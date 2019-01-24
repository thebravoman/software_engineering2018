const express = require('express');
const bodyParser = require('body-parser');

const app = express();

app.use(bodyParser.json());

app.get('/', function (req, res) {
    res.json({'studentNr': '10'});
});

app.post('/', function(req, res){
    var data = req.body;
	
    if (data['whoami'] === 'id')
    {
        res.json({'I am' : 10});
    }else if (data['action'] === 'id')
    {
        res.json(10);
    }else{
        res.status(422).send("Body does not contain valid parameters");
    }
});

app.listen(2010, function () {
    console.log('Example app listening on port 2010!');
});