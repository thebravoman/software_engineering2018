const express=require("express");
const bodyParser=require("body-parser");

const app= express();

app.use(bodyParser.json());

app.get("/",(req,res)=>{
    //res.set("content-type","application/json");
    res.json({"studentNr" : 09});
});

app.post("/",(req,res)=>{
    //res.set("content-type","application/json");
    body=req.body;

   /*for(let key in body){

        if(key=="action"){
                res.json(9);
            
        }
        else if(key=="whoami"){
                res.json({"I am" : 9});
        }
        
    };*/
    if(body["action"]=="id"){
        res.json(09);
    }

    else if(body["whoami"]=="id"){
        res.json({"I am" : 09});
    }
});

app.listen(2009,()=>console.log("server started successfully"));