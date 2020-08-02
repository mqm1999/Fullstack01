const express = require('express');
const pool = require('./utils/db');
const app = express();

app.get('/', (req, res) => {
    pool.query('select * from `user`;', (err, data) => {
        if (err) {
            res.send('Error query')
        }
        console.log(data);
        res.send(data)
    })
});

app.get('/user', (req, res) => {
    pool.query('select * from `user`;', (err, data) => {
        if (err) {
            res.send('Error query')
        }
        console.log(data);
        res.send(data)
    })
});

app.get('/product', (req, res) => {
    pool.query('select * from `product;', (err, data) => {
        if (err) {
            res.send('Error query')
        }
        console.log(data);
        res.send(data)
    })
});

app.get('/category', (req, res) => {
    pool.query('select * from `category`;', (err, data) => {
        if (err) {
            res.send('Error query')
        }
        console.log(data);
        res.send(data)
    })
});

app.get('/order', (req, res) => {
    pool.query('select * from `order`;', (err, data) => {
        if (err) {
            res.send('Error query')
        }
        console.log(data);
        res.send(data)
    })
});

const callback = () => {
    console.log("Running at 8080");
}

app.listen(8080, callback);

