const router = require("express").Router();
const categoryModel = require("../models/categories.model");

router.get("/categories/", async function (req, res) {
  const categories = await categoryModel.getAllCategories();

  return res.json({
    categories: categories,
  });
});

module.exports = router;
