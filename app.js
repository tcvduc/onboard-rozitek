const express = require("express");

const app = express();

app.use(express.json());

app.get("/", function (req, res) {
  return res.json({
    data: "home page api",
  });
});

app.use("/api", require("./routes/product.route"));
app.use("/api", require("./routes/apparelSize.route"));
app.use("/api", require("./routes/categories.route"));
app.use("/api", require("./routes/color.route"));

const PORT = 8080;

app.listen(PORT, () => {
  console.log(`App is listening at port: ${PORT}\n`);
});
