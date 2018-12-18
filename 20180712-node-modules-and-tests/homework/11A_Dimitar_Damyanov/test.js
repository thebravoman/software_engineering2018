let myModule = require('./date.js');

exports.testToday = (test) => {
	let testDate = new Date();
	let resultDate = testDate.getFullYear() + "-" + (testDate.getMonth()+1) + "-" + testDate.getDate();

	test.equals(myModule.today(),resultDate);
	test.done();

};

