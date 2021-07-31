const mysql =require('mysql2');
const returnPassword = require('../configuration/configureation')

var mysql = require('mysql2');
var mysqlPool = mysql.createPool({
    host: Path,
    user: root,
    port: 5500,
    password: Root,
    database: employee_tracker,
    
});

connection.connect((err) => {
    if (err) throw err
    console.log("You have connected to MySQL " + connection.threadId)
});

module.exports = connection;