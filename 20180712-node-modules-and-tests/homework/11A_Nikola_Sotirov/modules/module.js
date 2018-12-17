var d = new Date();

var today = () => {

    return d.getFullYear() + "-" + parseInt(d.getUTCMonth() + 1) + "-" + d.getDate();
}

module.exports = {
    today: today
}