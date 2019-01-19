require('dotenv').config()
const { Pool } = require('pg')
// const mysqlConfig = require('./config.js');

// const connection = mysql.createConnection(mysqlConfig);
const connectionString = `postgres://${process.env.DB_USER}:${process.env.DB_PASS}@${process.env.DB_HOST}:${process.env.DB_PORT}/${process.env.DB_NAME}`;
const pool = new Pool({
  connectionString: connectionString,
  max: 20,
  idleTimeoutMillis: 30000,
  connectionTimeoutMillis: 2000,
});

pool.connect().then(console.log('connected to postgres'))

module.exports = pool;
