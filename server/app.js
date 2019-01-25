const express = require('express');
const bodyParser = require('body-parser');
const {getAllItems} = require('./controller.js');

const app = express();
const PORT = 9003;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

app.use(express.static(__dirname + '/../client/dist'));

app.get('/api/menus/:rest_id', getAllItems);

app.listen(PORT, () => {
    console.log(`listening on port ${PORT}`);
 });

module.exports = app;