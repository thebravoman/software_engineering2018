var btn = document.getElementById("btn");

var container = document.getElementById("container");

var btnClick = () => {

    var url = document.getElementById("url").value;

    var Http = new XMLHttpRequest();

    Http.open("GET", url);

    Http.send();

    Http.onreadystatechange = () => 
    {
        var res = document.createTextNode(Http.responseText);

        container.appendChild(res);
    }
}

btn.addEventListener("click", btnClick);