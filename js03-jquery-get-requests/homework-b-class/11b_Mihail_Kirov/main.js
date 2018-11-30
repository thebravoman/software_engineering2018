$(document).ready(function () {
    $("#button").click(function (e) { 
        getResource("#url");
        
    });

});

function processResponse(data){
    var object = JSON.parse(JSON.stringify(data));
    var keys = Object.keys(object);
    for(key of keys){
        var li = $("<li/>", {text: object[key]});
        $("#container").append(li);
    }
}
function getResource(url){
    $.ajax({
        type: "GET",
        url: $(url).val(),
        dataType: "json",
        success: function(data) {
            processResponse(data);
        },
        error: function(data, status, xhr){

        }
    });
}