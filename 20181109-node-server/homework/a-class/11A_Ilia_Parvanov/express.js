const express = require('express');
const bodyParser = require('body-parser');
const HttpStatus = require('http-status-codes');
const port = 2013;
const app = express();

app.use(bodyParser.json());

app.get('/', (request, response) => {
    response.type('json');
    response.json({'studentNr':13});
});

app.post('/', (request, response) => {
    console.log(request.body);
    var payload = {};
    payload['proxy'] = request.body;
    console.log(JSON.stringify(payload));

    if (payload.proxy.action == 'id') {
        response.send('13');
    }
    else if (payload.proxy.whoami == 'id') {
        var json_res = {'I am': 13};
        response.type('json');
        response.json(json_res);
    }
    else {
        response.status(HttpStatus.NOT_ACCEPTABLE).send({
            error: HttpStatus.getStatusText(HttpStatus.NOT_ACCEPTABLE)
        });
    }

});

app.listen(port, () => {
    console.log('Homework app listening on port ' + port);
});
