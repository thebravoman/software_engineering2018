let app = require('express')();
let json_parser = require('body-parser').json();

app.use(json_parser);

app.get('/', (req, res) => {
    res.json({'studentNr': 16});
});

app.post('/', (req, res) => {
    let data = req.body;

    if (data.action == 'id') {
        res.json(16);
    } else if (data.whoami == 'id') {
        res.json({'I am': 16});
    }
});

app.listen(2016);
