const express = require('express');
const bodyParser = require('body-parser');
const app = express();

const fs = require('fs')

var port = 3007;

app.use(bodyParser.json());

app.get('/',function(req,res) {
    fs.readFile('data.json' ,function(data,err)
    {
        if(err)
        {
            console.log('Error!');
        }
        else
        {
            res.type('json');
            res.json(JSON.parse(data));
        }
    });
});

app.listen(port,function(){
    console.log('App listening on port' + port);
});
