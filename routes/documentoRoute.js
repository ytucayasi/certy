const express = require('express');
const router = express.Router();
const documento = require('../services/documentoService');

router.get('/', async function(req, res, next) {
  try {
    res.json(await documento.getAll(req.query.page));
  } catch (err) {
    console.error(`Error documento `, err.message);
    next(err);
  }
});

module.exports = router;
