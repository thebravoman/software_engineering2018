const sinon = require('sinon');
let info = require("./date.js");
let date = new Date();

exports.testToday = function(test) {
    let expected_result = "Hello, today is " + date.getFullYear() 
    + "-" + (date.getMonth() + 1) + "-" + date.getDate();

    let object = {'date' : function() {}};
    let mock = sinon.mock(object);
    mock.expects('date').once().returns(expected_result);
    test.equals(info.today(), object.date());
    mock.verify();
    test.done();
}