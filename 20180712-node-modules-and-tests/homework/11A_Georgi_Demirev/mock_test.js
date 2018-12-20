var sinon = require('sinon');
var getDay = require('./module.js');
exports.handleGetRequestTest =  (test) => {
    var obj = {"date" : function() {}};
    var mock = sinon.mock(obj);
    
    var rightNow = new Date();
    var res = rightNow.toISOString().slice(0,10);
    mock.expects("date").once().returns('Hello, today is ' + res);

    obj.date(test);
    mock.verify();
    test.done();
};