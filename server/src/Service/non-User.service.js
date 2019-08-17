const Service = require('./base.service');
const aes = require('aes-js');

class NonUser extends Service {

    login(email, password) {
        const users = Service.getData('users');
        console.log(`${users}`)
        const user = users.find((user) => {
            const passByte = aes.utils.utf8.toBytes(password);
            var aesCtr = new aes.ModeOfOperation.ctr(Service.key, new aes.Counter(5));
            var encryptedBytes = aesCtr.encrypt(passByte);
            var encryptedHex = aes.utils.hex.fromBytes(encryptedBytes);
            console.log(encryptedHex);
            return user.email === email && user.password === encryptedHex;
        });

        if(user)
            return user;
        return null;
    }

}

module.exports = NonUser;