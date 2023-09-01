const db = require('./db');
const helper = require('../helper');
const config = require('../config');

async function getAll(page = 1){
  const offset = helper.getOffset(page, config.listPerPage);
  const rows = await db.query(
    `SELECT * FROM usuario LIMIT ${offset},${config.listPerPage}`
  );
  const data = helper.emptyOrRows(rows);
  const meta = {page};

  return {
    data,
    meta
  }
}

async function create(usuario){
  const result = await db.query(
    `INSERT INTO usuario 
    (nombre, correo, contrasenia, estado, rol) 
    VALUES 
    ('${usuario.nombre}', '${usuario.correo}', '${usuario.contrasenia}', '${usuario.estado}', '${usuario.rol}')`
  );

  let message = 'Error usuario';

  if (result.affectedRows) {
    message = 'Correcto usuario';
  }

  return {message};
}

async function update(id, usuario){
  const result = await db.query(
    `UPDATE usuario 
    SET nombre='${usuario.nombre}', correo='${usuario.correo}', contrasenia='${usuario.contrasenia}', 
    estado='${usuario.estado}', rol='${usuario.rol}' 
    WHERE id='${id}'` 
  );

  let message = 'Error usuario';

  if (result.affectedRows) {
    message = 'Correcto usuario';
  }

  return {message};
}

async function remove(id){
  const result = await db.query(
    `DELETE FROM usuario WHERE id=${id}`
  );

  let message = 'Error usuario';

  if (result.affectedRows) {
    message = 'Correcto usuario';
  }

  return {message};
}

module.exports = {
  getAll,
  create,
  update,
  remove
}