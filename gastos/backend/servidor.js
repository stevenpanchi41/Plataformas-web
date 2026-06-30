require('./src/database');

const express = require('express');

const app = express();

app.use(express.json());

app.use(require('./src/routes/server.routes'));

app.listen(3000, ()=>{
    console.log('Servidor corriendo en puerto 3000');
});