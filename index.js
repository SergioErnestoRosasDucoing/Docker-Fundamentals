// QUE ES EXPRESS Es un servidor
const express = require('express');

const app = express()

const port = 3000;

app.get('/', (req,res)=>{
    res.send('Hola a todos');
});

app.listen(port, ()=>{
    console.log('Servidor escuchandi en el puesto 3000')
})