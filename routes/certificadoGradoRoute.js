const express = require('express');
const router = express.Router();
const certificadoGrado = require('../services/certificadoGradoService');

router.get('/', async function(req, res, next) {
  try {
    res.json(await certificadoGrado.getAll(req.query.page));
  } catch (err) {
    console.error(`Error certificado grado `, err.message);
    next(err);
  }
});

module.exports = router;
