const router = require('express').Router();
const works = require('./works')
const kinds = require('./kind')
const themes = require('./theme')

router.get("/", (req, res) => {
  res.send("Welcome 🥷🏽");
});

router.use('/works', works);
router.use('/kinds', kinds);
router.use('/themes', themes);


module.exports = router;


