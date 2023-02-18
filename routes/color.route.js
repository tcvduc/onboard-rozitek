const router = require("express").Router();
const colorModel = require("../models/color.model");

router.get("/color/", async function (req, res) {
  const colors = await colorModel.getAllColor();

  return res.json({
    colors: colors,
  });
});

module.exports = router;
