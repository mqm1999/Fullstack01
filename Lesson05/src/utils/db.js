const mysql = require('mysql')

const config = {
    host: 'localhost',
    port: 3306, 
    user: 'root',
    password: '28111999',
    database: 'shopese'
}


//create pool
const pool = mysql.createPool(config)


module.exports = pool