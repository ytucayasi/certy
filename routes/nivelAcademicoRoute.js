const express = require('express');
const router = express.Router();
const nivelAcademico = require('../services/nivelAcademicoService');

router.get('/', async function(req, res, next) {
  try {
    res.json(await nivelAcademico.getAll(req.query.page));
  } catch (err) {
    console.error(`Error nivel academico `, err.message);
    next(err);
  }
});

module.exports = router;
