const mysql = require("mysql");
const util = require("util");

const pool = mysql.createPool({
  host: "localhost",
  port: "3306",
  user: `root`,
  password: `1`,
  database: `onboardRozitek`,
  connectionLimit: 50,
});

const poolQuery = util.promisify(pool.query).bind(pool);

module.exports = {
  load: function (sql) {
    return poolQuery(sql);
  },
};
