var d = new Date();

exports.today  = function(){
    var resultStr = "Hello, today is " + d.getFullYear() +`-`+ (d.getMonth()+1) + `-`+ d.getDate();
    return resultStr;
};

