const express = require('express');
const router = express.Router();
const moduloFormativo = require('../services/moduloFormativoService');

router.get('/', async function(req, res, next) {
  try {
    res.json(await moduloFormativo.getAll(req.query.page));
  } catch (err) {
    console.error(`Error modulo formativo `, err.message);
    next(err);
  }
});

module.exports = router;
