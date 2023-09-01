const express = require('express');
const router = express.Router();
const usuario = require('../services/usuarioService');

router.get('/', async function(req, res, next) {
  try {
    res.json(await usuario.getAll(req.query.page));
  } catch (err) {
    console.error(`Error usuario `, err.message);
    next(err);
  }
});

module.exports = router;
