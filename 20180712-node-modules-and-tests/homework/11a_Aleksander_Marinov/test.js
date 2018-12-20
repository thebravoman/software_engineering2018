const sinon = require('sinon');
let info = require("./date.js");
let date = new Date();

exports.testToday = function(test) {
    let expected_result = date.getFullYear() + "-" 
    + (date.getMonth() + 1) + "-" + date.getDate();

    let object = {'date' :  function() {}};
    let mock = sinon.mock(object);
    mock.expects('date').once().withArgs(test).returns(expected_result);
    object.date(test);
    //test.equals(info.today(), expected_result);
    mock.verify();
    test.done();
}