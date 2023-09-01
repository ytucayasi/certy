const express = require("express");
const app = express();
const port = 3000;

const usuarioRoute = require("./routes/usuarioRoute");
const entidadRoute = require("./routes/entidadRoute");
const estudianteRoute = require("./routes/estudianteRoute");
const nivelAcademicoRoute = require("./routes/nivelAcademicoRoute");
const documentoRoute = require("./routes/documentoRoute");
const copiaDocumentoRoute = require("./routes/copiaDocumentoRoute");
const programaEstudioRoute = require("./routes/programaEstudioRoute");
const moduloFormativoRoute = require("./routes/moduloFormativoRoute");
const unidadCompetenciaRoute = require("./routes/unidadCompetenciaRoute");
const indicadorLogroRoute = require("./routes/indicadorLogroRoute");
const certificadoModularRoute = require("./routes/certificadoModularRoute");
const certificadoAuxiliarRoute = require("./routes/certificadoAuxiliarRoute");
const certificadoGradoRoute = require("./routes/certificadoGradoRoute");
const certificadoTituloRoute = require("./routes/certificadoTituloRoute");

app.use(express.json());

app.use(
  express.urlencoded({
    extended: true,
  })
);

app.get("/", (req, res) => {
  res.json({ message: "ok" });
});

app.use("/usuario", usuarioRoute);
app.use("/entidad", entidadRoute);
app.use("/estudiante", estudianteRoute);
app.use("/nivel-academico", nivelAcademicoRoute);
app.use("/documento", documentoRoute);
app.use("/copia-documento", copiaDocumentoRoute);
app.use("/programa-estudio", programaEstudioRoute);
app.use("/modulo-formativo", moduloFormativoRoute);
app.use("/unidad-competencia", unidadCompetenciaRoute);
app.use("/indicador-logro", indicadorLogroRoute);
app.use("/certificado-modular", certificadoModularRoute);
app.use("/certificado-auxiliar", certificadoAuxiliarRoute);
app.use("/certificado-grado", certificadoGradoRoute);
app.use("/certificado-titulo", certificadoTituloRoute);

app.use((err, req, res, next) => {
  const statusCode = err.statusCode || 500;
  console.error(err.message, err.stack);
  res.status(statusCode).json({ message: err.message });
  return;
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});