const { getAllItemsHelper } = require('../database/dbHelpers.js');
const { getAllMenuItems, getAllPhotos, addMenuItem, deleteMenuItem } = require('../database/index.js');

const getAllItems = (req, res) => {
  getAllMenuItems(req.params["rest_id"], (result) => res.status(200).send(result.rows))
};
module.exports = { getAllItems };
