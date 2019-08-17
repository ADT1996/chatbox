class Common {
    static generateToken() {
        const chars = 'qwertyuiopasdfghjklzxcvbnm1234567890=QWERTYUIOPASDFGHJKLZXCVBNM';
        var token = '';
        const tokenLength = 64;

        for(let i = 0; i < tokenLength; i++) {
            const char = chars.charAt(Math.random() * chars.length);
            token += char;
        }

        return token;
    }
}

module.exports = Common;