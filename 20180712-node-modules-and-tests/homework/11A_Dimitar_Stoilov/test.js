const sinon = require('sinon');
let Module = require('./module.js');

exports.todayTest = function (test) {

	let test = new Date();

	let obj = {test : Module.today()};
	let Mock = sinon.mock(obj);

	Mock.expects("test").once().returns("Hello, today is " + test.getFullYear() + "-" + (test.getMonth()+1) + "-" + test.getDate());
	Mock.verify();
	test.done();
};