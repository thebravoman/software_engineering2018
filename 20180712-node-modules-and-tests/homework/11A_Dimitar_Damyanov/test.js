const sinon = require('sinon');
const myModule = require('./date.js');

exports.testToday = (test) => {

	let testDate = new Date();
	let resultDate = "Hello, today is " + testDate.getFullYear() + "-" + (testDate.getMonth()+1) + "-" + testDate.getDate();

	let todayObj={today:()=>{}};
	let todayMock = sinon.mock(todayObj);

	todayMock.expects('today').once().returns(resultDate);
	test.equals(todayObj.today(),myModule.today());

	todayMock.verify();
	test.done();
};

