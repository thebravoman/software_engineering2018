var d = new Date();

var today = () => {

    return `Hello, today is ${d.getFullYear()}-${parseInt(d.getUTCMonth() + 1)}-${d.getDate()}`;
}

module.exports = {
    today: today
}