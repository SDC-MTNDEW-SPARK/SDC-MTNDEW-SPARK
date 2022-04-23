const express = require('express');
const db = require('../database/queries.js');

const app = express();
const port = 3000
app.use(express.json());


app.get('/', (req, res) => {
  res.send('Hello World!');
})

app.get('/products', db.getProducts);
app.get('/products/:product_id', db.getCurrProduct);
app.get('/products/:product_id/styles', db.getCurrProductStyles);
app.get('/products/:product_id/related', db.getCurrProductRelated);




app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})