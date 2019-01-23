// const { getAllItemsHelper } = require('../database/dbHelpers.js');
// const { getAllMenuItems, getAllPhotos, addMenuItem, deleteMenuItem } = require('../database/index.js');
var db = require('../database/queries.js');

const getAllItems = (req, res) => {
  db.getAllItems(req.params["rest_id"], (result) => res.status(200).send(result))
};
module.exports = { getAllItems };
