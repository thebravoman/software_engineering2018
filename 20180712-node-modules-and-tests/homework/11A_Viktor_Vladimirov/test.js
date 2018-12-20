var sinon = require('sinon');
let info = require("./module.js");
var date = new Date();
exports.testDate = function(test) {
	var str = (date.getFullYear() + '-' + (date.getUTCMonth() + 1) + '-' + date.getDate()).toString();
    var obj = {"date" : () => {}};
    var mock = sinon.mock(obj);
    var rightNow = new Date();
    mock.expects("date").once().returns('Hello, today is ' + str); 
    test.equal(info.today(), obj.date()); 
    mock.verify();
    test.done();
}
