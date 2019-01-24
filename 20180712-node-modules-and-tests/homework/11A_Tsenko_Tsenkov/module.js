exports.today = function(){
	const date = new Date()
	return 'Hello, today is ' + date.getFullYear() + '-' + parseInt(date.getUTCMonth() + 1) + '-' + date.getDate();
}
