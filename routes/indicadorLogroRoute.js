const express = require('express');
const router = express.Router();
const indicadorLogro = require('../services/indicadorLogroService');

router.get('/', async function(req, res, next) {
  try {
    res.json(await indicadorLogro.getAll(req.query.page));
  } catch (err) {
    console.error(`Error indicador logro `, err.message);
    next(err);
  }
});

module.exports = router;
