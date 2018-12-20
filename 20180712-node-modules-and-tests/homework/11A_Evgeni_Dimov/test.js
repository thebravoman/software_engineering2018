const sinon = require("sinon");
const date = require("./date.js");

exports.todayTest = (test) => {
    let obj = {
        'today': () => {
        }
    };

    let objMock = sinon.mock(obj);

    let d = new Date();
    let expected = d.getFullYear() + "-" + (d.getMonth() + 1) + "-" + d.getDate();

    objMock.expects('today').once().returns(expected);

    test.equal(date.today(), obj.today());

    objMock.verify();
    test.done();
};
