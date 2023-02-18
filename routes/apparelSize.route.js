const router = require("express").Router();
const apparelSizeModel = require("../models/apparelSize.model");

router.get("/apparelSize/", async function (req, res) {
  const apparelSizeRecord = await apparelSizeModel.getApparelSizeRecord();

  return res.json({
    apparelSizeRecord: apparelSizeRecord,
  });
});

module.exports = router;
