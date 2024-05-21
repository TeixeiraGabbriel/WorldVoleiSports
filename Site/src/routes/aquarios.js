var express = require("express");
var router = express.Router();

var aquarioController = require("../controllers/aquarioController");

router.get("/:fk_interacao", function (req, res) {
  aquarioController.buscarAquariosPorEmpresa(req, res);
});

router.post("/cadastrar", function (req, res) {
  aquarioController.cadastrar(req, res);
})

module.exports = router;