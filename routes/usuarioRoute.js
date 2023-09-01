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

router.post('/', async function(req, res, next) {
  try {
    res.json(await usuario.create(req.body));
  } catch (err) {
    console.error(`Error usuario`, err.message);
    next(err);
  }
});

router.put('/:id', async function(req, res, next) {
  try {
    res.json(await usuario.update(req.params.id, req.body));
  } catch (err) {
    console.error(`Error usuario`, err.message);
    next(err);
  }
});

router.delete('/:id', async function(req, res, next) {
  try {
    res.json(await usuario.remove(req.params.id));
  } catch (err) {
    console.error(`Error usuario`, err.message);
    next(err);
  }
});

module.exports = router;
