const router = require('express').Router();
const connection = require("../config");

router.get("/", async (req, res) =>{
  try{
    const [works] = await connection.query('SELECT * FROM theme');
    res.status(200).json(works)
  }catch (error) {
    next(error)
  }
});

module.exports = router;