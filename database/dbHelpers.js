const Item = require('./model.js');

const getAllItemsHelper = (rest_id, callback) => {
    Item.findAll({where: {rest_id: rest_id}}).then(callback).catch(err => {
        console.error(err)
    })
}


module.exports = { getAllItemsHelper }