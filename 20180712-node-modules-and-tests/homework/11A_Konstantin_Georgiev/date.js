var day = new Date();
exports.today = function(){return "Hello, today is " + day.getFullYear() + "-" + parseInt(day.getUTCMonth() + 1) + "-" + day.getDate();}
