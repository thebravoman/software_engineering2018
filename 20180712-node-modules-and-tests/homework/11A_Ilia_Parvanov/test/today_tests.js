const sinon = require(`sinon`);
const todayModule = require('../modules/today');

exports.todayTest = (test) => {
    var obj = {
        'today': () => {}
    }
    var objMock = sinon.mock(obj);

    var d = new Date();
    var expected = "Hello, today is " + d.getFullYear() + "-" + (d.getMonth()+1) + "-" + d.getDate();

    objMock.expects('today').once().returns(expected);
    // console.log(obj.today());
    test.equal(todayModule.today(), obj.today());
    objMock.verify();
    test.done();
};
