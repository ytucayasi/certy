const express = require('express');
const router = express.Router();
const programaEstudio = require('../services/programaEstudioService');

router.get('/', async function(req, res, next) {
  try {
    res.json(await programaEstudio.getAll(req.query.page));
  } catch (err) {
    console.error(`Error programa estudio `, err.message);
    next(err);
  }
});

module.exports = router;
