const db = require("../utils/db");

const tableProduct = "product";

module.exports = {
  getAllProduct: function () {
    const sql = `select * from ${tableProduct}`;
    return db.load(sql);
  },
};
