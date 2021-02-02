const router = require('express').Router();
const connection = require("../config");

router.get("/", async (req, res) =>{
  try{
    const [artist] = await connection.query('SELECT * FROM artist');
    res.status(200).json(artist)
  }catch (error) {
    next(error)
  }
});

module.exports = router;