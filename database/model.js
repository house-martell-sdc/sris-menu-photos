const sequelize = require('./sequelize.js');
const Sequelize = require('sequelize');


const Item = sequelize.define('menus', {
    id: { type: Sequelize.INTEGER, primaryKey: true},
    rest_id: Sequelize.INTEGER,
    rest_name: Sequelize.STRING,
    menu_type_num: Sequelize.INTEGER,
    menu_type_name: Sequelize.STRING,
    menu_section_num: Sequelize.INTEGER,
    menu_section_name: Sequelize.STRING,
    menu_section_description: Sequelize.STRING,
    menu_item_name: Sequelize.STRING,
    menu_item_description: Sequelize.STRING,
    menu_item_price: Sequelize.INTEGER
    
})

Item.sync();

module.exports = Item;