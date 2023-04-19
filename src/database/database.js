import mysql from "promise-mysql";
import config from "../config/config";

const connection = mysql.createConnection({
  host: config.host,
  database: config.database,
  db_port: config.db_port,
  user: config.user,
  password: config.password,
});

const getConnection = () => {
  return connection;
};

module.exports = {
  getConnection,
};
