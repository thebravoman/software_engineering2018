var btn = document.getElementById("btn");

var btnClick = () => {
    var container = document.getElementById("container");

    container.value = "";

    var url = document.getElementById("url").value;

    var Http = new XMLHttpRequest();

    Http.open("GET", url);

    Http.send();

    Http.onreadystatechange = () => 
    {
        var obj = {};

        if (Http.status == 200 && url != ""){
            obj["success"] = true;
            try{
                obj["object"] = JSON.parse(Http.responseText);
            }
            catch{
                return;
            }

            //var res = document.createTextNode(`${JSON.stringify(obj, null, 2)}\n`);

            container.value = JSON.stringify(obj, null, 2);

            return;
        }
        else{
            obj["success"] = false;

            obj["statusCode"] = Http.status;

            //container.appendChild(document.createTextNode(`${JSON.stringify(obj, null, 2)}\n`));

            container.value = JSON.stringify(obj, null, 2);

            return;

            //container.appendChild(document.createTextNode("WRONG URL!!!\n"));
        }
    }
}

btn.addEventListener("click", btnClick);