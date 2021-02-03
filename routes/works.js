const router = require('express').Router();
const connection = require("../config");

router.get("/", async (req, res, next) =>{
  try{
    const [works] = await connection.query(`
    SELECT 
    w.*,
    a.name AS artistName,
    t.name AS themeName,
    k.name AS kindName
    FROM 
    work AS w 
    JOIN artist AS a ON w.artist_id=a.id
    JOIN theme AS t ON w.theme_id=t.id
    JOIN kind AS k ON w.kind_id=k.id
    `);
    res.status(200).json(works)
  }catch (error) {
    console.log(error.message)
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