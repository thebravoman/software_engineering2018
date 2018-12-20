var date_module = require("./date_module.js");
var sinon = require("sinon");

exports.todayTest = function(test){
    let d = new Date();
    let message_expected = "Hello, today is "+ d.getFullYear() +`-`+ (d.getMonth()+1) + `-`+ d.getDate();

    // let mock_object = {'today':() => {}};
    let mock = sinon.mock(date_module);
    
    mock.expects('today').once().returns(message_expected);
    
    date_module.today();

    mock.verify();
    test.done();
}


