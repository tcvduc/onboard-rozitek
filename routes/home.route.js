const router = require("express").Router();

router.get("/", function (req, res) {
  const data = [
    { key: 1, value: 2 },
    { key: 1, value: 2 },
    { key: 1, value: 2 },
  ];

  res.render("vwHomePage/vwHomePage", {
    data: data,
  });
});

module.exports = router;
