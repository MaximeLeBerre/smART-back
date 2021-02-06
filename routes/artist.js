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


router.get("/:id", async (req, res) =>{
  try{
    const {id} = req.params;
    const [artist] = await connection.query('SELECT * FROM artist WHERE id = ?', [id]);
    res.status(200).json(artist)
  }catch (error) {
    next(error)
  }
});

module.exports = router;