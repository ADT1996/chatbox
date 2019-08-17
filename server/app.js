const express = require('express');
const app = express();
const server = require('http').createServer(app);
const bodyParser = require('body-parser');
const cors = require('cors');
const nonUserController = require('./src/Controller/Non-User');

const port = process.env.PORT || 3000;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded());
app.use(cors());

app.use('/nonuser', nonUserController);

server.listen(port, () => {
	console.log(`Server listening port ${port}`);
});
