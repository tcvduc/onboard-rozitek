const router = require("express").Router();
const productModel = require("../models/product.model");

router.get("/product/", async function (req, res) {
  const products = await productModel.getAllProduct();

  return res.json({
    products: products,
  });
});

module.exports = router;
