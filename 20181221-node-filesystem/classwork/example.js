const fs = require("fs");

const filename = "a.txt";

function readFileSync(filename) {
    if (fs.existsSync(filename)){
        console.log("File exists.");
        let result = fs.readFileSync(filename).toString();
        console.log(result);
    } else  {
        console.log("File does not exist.");
    }
}

function readFileAsync(filename) {
    fs.exists(filename, function(exists){
       if (exists){
           console.log("File exists");
           fs.readFile(filename, function(err, data){
               if (err) {
                   console.log(err);
               }else{
                   console.log("Data read.");
                   console.log(data.toString());
               }
           });
       }else{
           console.log("File does not exist.");
       }
    });

    console.log("bye");
}

//readFileSync(filename);

readFileAsync(filename);
