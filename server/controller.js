const db = require('../database/index.js');

const getAllItems = (req, res) => {
  db.getAllMenuItems(req.params["rest_id"], (result) => res.status(200).send(result.rows))
};

module.exports = { getAllItems };
