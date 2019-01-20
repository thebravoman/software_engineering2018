const express = require('express')
const bodyParser = require('body-parser')
var fs = require('fs')

const port = 3025
app = express()
const filename = 'data.json'

app.use(bodyParser.json())

app.get('/', function(req, res){
	fs.exists(filename, function(exists){
		if(exists){
			fs.readFile(filename, function(err, data){
			   if (err) {
                   console.log(err)
               }else{
					//res.type('json')
                    res.set('Content-type', 'application/json')
					res.json(JSON.parse(data))
			   }
			})
		}else{
			console.log("Does not exist")
		}
	})
})

app.listen(port, function(){
	console.log('Listening on port ' + port)
})
