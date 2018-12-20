const sinon = require('sinon');
let myModule = require('./date.js');//myModule={today:()=>{...}}

exports.testToday = (test) => {

	let testDate = new Date();
	let resultDate = "Hello, today is " + testDate.getFullYear() + "-" + (testDate.getMonth()+1) + "-" + testDate.getDate();

	let todayMock = sinon.mock(myModule);
	todayMock.expects('today').once().returns(resultDate);
	myModule.today();

	todayMock.verify();
	test.done();
};

