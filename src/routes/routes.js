const express = require("express")
const controller =require("../controller/controller")

const router = express.Router()

router.get("/", controller.GetAll)
    
//rutal para la API unico dato  
router.get("/:cedula", controller.GetCedula)

  
  module.exports = router