const express = require('express');
const router = express.Router();
const certificadoModular = require('../services/certificadoModularService');

router.get('/', async function(req, res, next) {
  try {
    res.json(await certificadoModular.getAll(req.query.page));
  } catch (err) {
    console.error(`Error certificado modular `, err.message);
    next(err);
  }
});

module.exports = router;
