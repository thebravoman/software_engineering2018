const express = require('express');
const port = 2020;
const app = express();

app.get('/', (request, response) => {
    response.setHeader("content-type", "application/json");

    var credentials = {
        'response': { 'studentNr': 20 }
    };

    response.json(credentials);
});

app.post('/', (request, response) => {
    if (request.body == null) {
        response.send('FUCK');
        return;
    }

    if (request.body['whoami'] === 'id') {
        response.setHeader('content-type', 'application/json');

        response.json({ 'I am': '20' });
    } else if (request.body['whoami'] === 'id') {
        response.setHeader('content-type', 'application/json');

        response.json('20');
    } else {
        response.status(406).send({ 'error': 'Unacceptable request body...' });
    }
});

app.listen(port, () => {
    console.log(`Listening on port: ${port}`);
});