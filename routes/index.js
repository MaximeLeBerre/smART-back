const router = require('express').Router();
const works = require('./works')
const kinds = require('./kind')
const themes = require('./theme')
const artists = require('./artist')

router.get("/", (req, res) => {
  res.send("Welcome 🥷🏽");
});

router.use('/works', works);
router.use('/kinds', kinds);
router.use('/themes', themes);
router.use('/artists', artists)


module.exports = router;


