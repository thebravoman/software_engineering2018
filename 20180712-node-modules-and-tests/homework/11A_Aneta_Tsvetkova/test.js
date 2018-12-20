var sinon = require("sinon");
const date = require("./date.js");

exports.Todaytest = function (test) {
    let to_mock = {
        'today' : () => {}
    };

    let mocked = sinon.mock(to_mock);

    let now = new Date();
    let expected = now.getFullYear() + "-" + (now.getMonth()+1) + "-" + now.getDate();

    mocked.expects('today').once().returns(expected);

    test.equals(date.today(), to_mock.today());

    mocked.verify();
    test.done();
};