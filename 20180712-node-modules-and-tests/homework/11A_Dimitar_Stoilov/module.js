var d = new Date();

exports.today = function(){
    return "Hello, today is " + d.getFullYear() + "-" + parseInt(d.getUTCMonth() + 1) + "-" + d.getDate();
}

