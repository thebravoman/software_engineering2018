var sinon = require('sinon');
let info = require("./module.js");
var date = new Date();
exports.testDate = function(test) {
	var object = {'date' :  function() {}};
    var mock = sinon.mock(object);
    mock.expects('date').once().withArgs(test).returns(date.getFullYear() + '-' + (date.getUTCMonth() + 1) + '-' + date.getDate());
    object.date(test);
    mock.verify();
    test.done();
}
