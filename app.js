const express = require("express");
const expressHandlebars = require("express-handlebars");

const app = express();

app.use(express.json());

app.engine(
  "hbs",
  expressHandlebars.engine({
    defaultLayout: "layoutHome.hbs",
    extname: ".hbs",
    layoutsDir: "views/_layouts",
  })
);

app.set("view engine", "hbs");
app.use("/public", express.static("assets"));
app.use("/", require("./routes/home.route"));
app.use("/api", require("./routes/product.route"));
app.use("/api", require("./routes/apparelSize.route"));
app.use("/api", require("./routes/categories.route"));
app.use("/api", require("./routes/color.route"));

const PORT = 8080;

app.listen(PORT, () => {
  console.log(`App is listening at port: ${PORT}\n`);
});
