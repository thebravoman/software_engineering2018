var sinon = require('sinon');
var dateModule = require('./today.js');

exports.testTodayGetRequest = function(test) {
  var result = {'today' : function() {}};

  var mock = sinon.mock(result);

  var date = new Date();
  var dateString = date.toISOString().substring(0, 10);

  mock.expects('today').once().returns('Hello, today is ' + dateString);

  test.equals(dateModule.today(), result.today());
  mock.verify();
  test.done();
}
