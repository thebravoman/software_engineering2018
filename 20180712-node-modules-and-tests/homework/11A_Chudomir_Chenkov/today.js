exports.today = function() {
  var date = new Date();

  var res = date.toISOString().substring(0, 10);

  return 'Hello, today is ' + res;
}
