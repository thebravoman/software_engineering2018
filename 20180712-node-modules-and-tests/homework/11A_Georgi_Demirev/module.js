exports.today = function () {
	var rightNow = new Date();
	var res = rightNow.toISOString().slice(0,10);
	return 'Hello, today is ' + res;
}
