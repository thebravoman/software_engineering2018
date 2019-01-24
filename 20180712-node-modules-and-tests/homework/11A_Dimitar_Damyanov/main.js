const express = require('express');
const bodyParser = require('body-parser');
const myModule = require('./date.js');

const PORT = 3009;
const app = express();

app.use(bodyParser.json());

app.get('/',(req,res) => {
	res.json(myModule.today());
}); 

app.listen(PORT,()=>{console.log("sever listening on port " + PORT)});