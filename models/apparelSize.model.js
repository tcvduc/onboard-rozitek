const db = require("../utils/db");
const tableApparelSize = "apparelSize";

module.exports = {
  getApparelSizeRecord: function () {
    const sql = `select * from ${tableApparelSize}`;
    return db.load(sql);
  },
};
