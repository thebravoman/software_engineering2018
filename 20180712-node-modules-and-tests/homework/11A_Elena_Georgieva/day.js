exports.day = function() {

  var date = new Date();

  return 'Hello, today is ' + date.getFullYear() + '-' + (date.getMonth() + 1) + '-' +  date.getDate();

}
