var btn = document.getElementById("btn");

var container = document.getElementById("container");

var btnClick = () => {

    var url = document.getElementById("url").value;

    var Http = new XMLHttpRequest();

    Http.open("GET", url);

    Http.send();

    Http.onreadystatechange = () => 
    {
        if (Http.status == 200 && url != ""){
            var res = document.createTextNode(`${Http.responseText}\n`);

            container.appendChild(res);
        }
        else{
            container.appendChild(document.createTextNode("WRONG URL!!!\n"));
        }
    }
}

btn.addEventListener("click", btnClick);