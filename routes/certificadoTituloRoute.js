const express = require('express');
const router = express.Router();
const certificadoTitulo = require('../services/certificadoTituloService');

router.get('/', async function(req, res, next) {
  try {
    res.json(await certificadoTitulo.getAll(req.query.page));
  } catch (err) {
    console.error(`Error certificado titulo `, err.message);
    next(err);
  }
});

module.exports = router;
