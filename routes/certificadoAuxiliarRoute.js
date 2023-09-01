const express = require('express');
const router = express.Router();
const certificadoAuxiliar = require('../services/certificadoAuxiliarService');

router.get('/', async function(req, res, next) {
  try {
    res.json(await certificadoAuxiliar.getAll(req.query.page));
  } catch (err) {
    console.error(`Error certificado auxiliar `, err.message);
    next(err);
  }
});

module.exports = router;
