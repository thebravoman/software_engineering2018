const sinon = require(`sinon`);
const todayModule = require('../modules/today');

exports.todayTest = (test) => {
    var obj = {
        'today': () => {}
    }
    var objMock = sinon.mock(obj);

    var expected = "Hello, today is 2019-1-3";

    objMock.expects('today').once().returns(expected);
    // console.log(obj.today());
    test.equal(todayModule.today(), obj.today());
    objMock.verify();
    test.done();
};

