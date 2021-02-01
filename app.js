require("dotenv").config();
const express = require("express");
const routes = require("./routes");

const PORT  = process.env.BD_PORT;
const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use("/api", routes);



app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});