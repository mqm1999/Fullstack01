const express = require('express');
const app = express();
const categoryRoute = require('./routers/category');
app.use('/api/v1/category', categoryRoute);
// app.use(bodyParser.json);

const hamxuli = (req,res) => {
    res.send("API is running");
}
app.get('/', hamxuli)

app.listen(7000, err => {
    if(err) console.log(err);
}) 