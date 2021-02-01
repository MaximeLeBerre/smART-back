const mysql = require('mysql2');

const {
  DB_HOST,
  DB_NAME,
  DB_USER,
  DB_PASS,
  DB_PORT
} = process.env;

const config = {
  host: DB_HOST,
  database: DB_NAME,
  user: DB_USER,
  password: DB_PASS,
  port: DB_PORT
}

const connection = mysql.createConnection(config)

 module.exports = connection.promise();