const mysql = require("mysql2");

var mysqlConnection = mysql.createPool({  //se usa el CreatePool para recibir multiples peticiones
    host: "bd_cne",
    user: "root",
    password: "123456",
    database: "bd_cne",
    multipleStatements: true,
  });


 
function GetCedula(req, res){

    mysqlConnection.query(
        "SELECT * FROM electors,geografia,centro_votacion where cedula=?",[req.params.cedula],
        (err, rows) => {
          if (!err) res.send(rows);
          else console.log(err);
        }
      );
}


function GetAll(req, res){

    mysqlConnection.query("SELECT * FROM electors,geografia,centro_votacion;",
        [req.params],
        (err, rows) => {
          if (!err) res.send(rows);
          else console.log(err);
        }
      );
}

module.exports= {

    GetCedula:GetCedula,
    GetAll:GetAll
}

