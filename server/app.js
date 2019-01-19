require('newrelic');
const express = require('express');
const bodyParser = require('body-parser');
const axios = require("axios")
const db = require('../database/index.js');
const cors = require('cors');


// const router = require('./router.js');

const app = express();
const PORT = 9003;

app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

app.use(express.static(__dirname + '/../client/dist'));

// app.use('/', router);

app.get('/api/menus/:rest_id', (req, res) => {
    db.getAllMenuItems(req.params["rest_id"], (data) => res.status(200).send(data.rows));
});

app.get('/api/photos/:rest_id', (req, res) => {
    db.getAllPhotos(req.params["rest_id"], (data) => res.status(200).send(data));
});

app.post('/api/menus', (req, res) => {
  const { 
    id,
    rest_id,
    rest_name,
    menu_type_num,
    menu_type_name,
    menu_section_num,
    menu_section_name,
    menu_section_description,
    menu_item_name,
    menu_item_description,
    menu_item_price } = req.body;
    console.log('body', req.body);
    db.addMenuItem(id, rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price, () => res.status(201).send('added'));
});

app.delete('/api/menus', (req, res) => {
  const {rest_id, menu_item_name} = req.body;
  db.deleteMenuItem(rest_id, menu_item_name, () => res.status(204).send('deleted'));
});

// app.listen(PORT, () => {
//     console.log(`listening on port ${PORT}`);
// });

module.exports = app;




// const express = require('express');
// const bodyParser = require('body-parser');
// const path = require('path');
// const morgan = require('morgan');
// const router = require('./router.js');

// const app = express();

// app.use(bodyParser.json());
// app.use(bodyParser.urlencoded({ extended: true }));
// app.use(morgan('dev'));
// app.use(express.static(path.join(__dirname, '../client/dist')));

// app.use('/api', router);

// module.exports = app;