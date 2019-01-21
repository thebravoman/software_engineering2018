exports.today = function () {
    var d = new Date();
    return "Hello, today is " + d.getFullYear() + "-" + (d.getMonth()+1) + "-" + d.getDate();
};