var date = new Date();
var new_module = require("./module.js");

exports.testToday = (test) => {
    
    var result = "Hello, today is " + date.getFullYear() + "-" + parseInt(date.getUTCMonth() + 1) + "-" + date.getDate();

    test.equals(new_module.today(), result);

    test.done();
}
