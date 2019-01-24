const express = require('express')
const bodyParser = require('body-parser')
const fs = require('fs')
const PORT=3009
const app = express()

app.use(bodyParser.json());


app.get('/',(req,res)=>{
    const filename='data.json'
    fs.exists(filename,(exists)=>{
        if(exists){
            fs.readFile(filename,(err,data)=>{
                if(err){
                    console.log(err)
                }
                else{
                    res.set("content-type","application/json");
                    let obj=JSON.parse(data)
                    res.json(obj)
                }
            })
        }
        else{
            console.log('doesnt exist')
        }

    })
})

app.listen(PORT,()=>console.log("started on port"+PORT))