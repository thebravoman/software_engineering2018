var date_module = require("./date_module.js");
var sinon = require("sinon");

exports.todayTest = function(test){
    let message_expected = "Hello, today is 2018-12-21";

    let mock_object = {'date':() => {}};
    let mock = sinon.mock(mock_object);
    
    mock.expects('date').once().returns(message_expected);
    test.equals(date_module.today(), mock_object.date());
    mock.verify();
    test.done();
}


