const route = require('express').Router();
const Common = require('../Common/Common');
const Service = require('../Service/non-User.service');

const service = new Service();

route.post('/login', async (req, res) => {
    
    const email = req.body.email;
    const password = req.body.password;

    console.log(`${email} - ${password}`);

    const user = service.login(email, password);

    if(user)
        res.status(200).jsonp(user);
    res.status(401).send();
});

route.post('/signup', (req, res) => {
    console.log(req.body);

    const data = req.body;

    res.status(200).jsonp({
        email: data.email,
        password: data.password,
        birthday: data.birthday,
        phone: data.phone,
        address: data.address
    });
});

module.exports = route;