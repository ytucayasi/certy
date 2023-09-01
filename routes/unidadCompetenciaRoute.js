const express = require('express');
const router = express.Router();
const unidadCompetencia = require('../services/unidadCompetenciaService');

router.get('/', async function(req, res, next) {
  try {
    res.json(await unidadCompetencia.getAll(req.query.page));
  } catch (err) {
    console.error(`Error unidad competencia `, err.message);
    next(err);
  }
});

module.exports = router;
