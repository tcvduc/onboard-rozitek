const db = require("../utils/db");

const tableColor = "color";

module.exports = {
  getAllColor: function () {
    const sql = `select * from ${tableColor}`;
    return db.load(sql);
  },
};
