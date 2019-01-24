var date = new Date();

exports.today  = function(){
    var todaydate = "Hello, today is " + date.getFullYear() +`-`+ (date.getMonth()+1) + `-`+ date.getDate();
    return todaydate;
};
