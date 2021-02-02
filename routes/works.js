const router = require('express').Router();
const connection = require("../config");

router.get("/", async (req, res, next) =>{
  try{
    const [works] = await connection.query('SELECT * FROM work');
    res.status(200).json(works)
  }catch (error) {
    next(error)
  }
});


router.get("/:artistId", async (req, res) =>{
  try{
    const {artistId} = req.params;
    const [works] = await connection.query('SELECT * FROM work WHERE artist_id = ?' , [artistId]);
    res.status(200).json(works)
  }catch (error) {
    next(error)
  }
});



module.exports = router;