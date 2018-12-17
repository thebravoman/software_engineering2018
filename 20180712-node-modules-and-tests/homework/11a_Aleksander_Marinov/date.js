let date = new Date();

exports.today = function() {
    return date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate();
}