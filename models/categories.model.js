const db = require("../utils/db");

const tableCategories = "categories";

module.exports = {
  getAllCategories: function () {
    const sql = `select * from ${tableCategories}`;
    return db.load(sql);
  },
};
