const json = require('../asset/data.json');

class Service {
    static data = json;
    static key = [48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70];
    static iv = [70, 69, 68, 67, 66, 65, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48];
    static getData(data) {
        return json[data];
    }

    static getKey() {
        return this.key;
    }

}

module.exports = Service;