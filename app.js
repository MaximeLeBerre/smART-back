require("dotenv").config();
const cors = require('cors');
const express = require("express");
const routes = require("./routes");
const handleError = require('./helpers/handleError');

const PORT  = process.env.BD_PORT;
const app = express();
app.use(cors());

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use("/api", routes);

app.use(handleError);

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});