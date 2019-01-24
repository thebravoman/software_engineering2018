var module = require("../modules/module.js");

exports.testToday = (test) => {
    var d = new Date();

    //var expectedResult = d.getFullYear() + "-" + parseInt(d.getUTCMonth() + 1) + "-" + d.getDate();

    var expectedResult = `Hello, today is ${d.getFullYear()}-${parseInt(d.getUTCMonth() + 1)}-${d.getDate()}`;

    test.equals(module.today(), expectedResult);

    test.done();
}