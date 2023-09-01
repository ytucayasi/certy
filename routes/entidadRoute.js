const express = require('express');
const router = express.Router();
const entidad = require('../services/entidadService');

router.get('/', async function(req, res, next) {
  try {
    res.json(await entidad.getAll(req.query.page));
  } catch (err) {
    console.error(`Error entidad `, err.message);
    next(err);
  }
});

module.exports = router;
