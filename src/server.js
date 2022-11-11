const express = require("express");
const router = require("./routes/routes");


var app = express();
//Configuring express server
app.use(express.json());
app.use(express.urlencoded({ extended: true }));


app.use("/" ,router);

const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`Listening on port ${port}..`));