let date = new Date();

exports.today = function() {
    return "Hello, today is " + date.getFullYear() + "-" 
    + (date.getMonth() + 1) + "-" + date.getDate();
}