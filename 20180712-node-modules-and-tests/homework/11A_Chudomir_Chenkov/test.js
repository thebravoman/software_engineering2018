const sinon = require('sinon');
const dateModule = require('../modules/today');

exports.testTodayGetRequest = function(test) {
  var result = {'today' : function() {}};

  var mock = sinon.mock(result);

  var expected_res = "Hello, today is 2019-01-15";

  mock.expects('today').once().returns(expected_res);

  test.equals(dateModule.today(), result.today());
  mock.verify();
  test.done();
}
