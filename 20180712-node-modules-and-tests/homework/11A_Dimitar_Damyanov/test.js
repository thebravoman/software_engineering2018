const sinon = require('sinon');
let myModule = require('./date.js');

exports.testToday = (test) => {

	let testDate = new Date();
	let resultDate = testDate.getFullYear() + "-" + (testDate.getMonth()+1) + "-" + testDate.getDate();

	let obj = {test : myModule.today()};
	let todayMock = sinon.mock(obj);

	todayMock.expects("test").once().returns("Hello, today is " + resultDate);
	todayMock.verify();
	
};

