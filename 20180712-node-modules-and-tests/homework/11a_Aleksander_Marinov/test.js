let info = require("./date.js");
let date = new Date();

exports.testToday = function(test) {
    let expected_result = date.getFullYear() + "-" 
    + (date.getMonth() + 1) + "-" + date.getDate();
    test.equals(info.today(), expected_result);
    test.done();
}