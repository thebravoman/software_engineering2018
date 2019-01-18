var date = new Date();

exports.today = function(){
    return "Hello, today is " + date.getFullYear() + "-" + parseInt(date.getUTCMonth() + 1) + "-" + date.getDate();
}
