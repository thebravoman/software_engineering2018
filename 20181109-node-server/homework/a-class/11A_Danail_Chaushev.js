const express = require('express');
const bodyParser = require('body-parser');
const app = express();

var port = 2007;

app.use(bodyParser.json());

app.get('/',function(req,res) {
    res.type('json');
    var student = {};
    student['studentNr'] = 7;
    res.json(student);
});

app.post('/',function(req,res){
    var body_ = req.body;
    if(body_['action'] == 'id')
    {
        res.type('json');
        res.json(7);
    }

    else if(body_['whoami'] == 'id')
    {
        var iam = {};
        iam['I am'] = 7;
        res.type('json');
        res.json(iam);
    }

});

app.listen('/',function(){
    console.log('App listening on port' + port);
});
