const express = require('express');
const router = express.Router();
const estudiante = require('../services/estudianteService');

router.get('/', async function(req, res, next) {
  try {
    res.json(await estudiante.getAll(req.query.page));
  } catch (err) {
    console.error(`Error estudiante `, err.message);
    next(err);
  }
});

module.exports = router;
