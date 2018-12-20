var date = require("./date.js");
var day = new Date();
exports.testToday = (test) => {

    var result = "Hello, today is " + day.getFullYear() + "-" + parseInt(day.getUTCMonth() + 1) + "-" + day.getDate();
    test.equals(date.today(), result);
    test.done();

}
