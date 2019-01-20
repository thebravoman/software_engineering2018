var module = require("./module.js");
var date = new Date();
exports.testToday = function(test)  {
    var result = "Hello, today is " + date.getFullYear() + "-" + parseInt(date.getUTCMonth() + 1) + "-" + date.getDate();

    test.equals(module.today(), result);
    test.done();
}
