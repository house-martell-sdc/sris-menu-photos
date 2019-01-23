var promise = require('bluebird');
require('dotenv').config()

var options = {
  // Initialization Options
  promiseLib: promise
};

const cn = {
  host: process.env.AWS_HOST,
  port: process.env.AWS_PORT,
  database: process.env.AWS_DB_NAME,
  user: process.env.AWS_DB_USER,
  password: process.env.AWS_DB_PASS,
};

var pgp = require('pg-promise')(options);
// var connectionString = 'postgres://54.153.82.156:5432/menu_db'
// var connectionString = 'postgres://localhost:5432/menu_db';
var db = pgp(cn);

// add query functions
const getAllItems = function (rest_id, callback, next) {
    db.any(`SELECT * from menus WHERE rest_id = ${rest_id}`)
      .then(function(data) {callback(data)
    }).catch(function(err){
          console.error(err)
      })
  }



module.exports = {
  getAllItems: getAllItems,
  
};