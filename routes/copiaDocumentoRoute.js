const express = require('express');
const router = express.Router();
const copiaDocumento = require('../services/copiaDocumentoService');

router.get('/', async function(req, res, next) {
  try {
    res.json(await copiaDocumento.getAll(req.query.page));
  } catch (err) {
    console.error(`Error copia documento `, err.message);
    next(err);
  }
});

module.exports = router;
