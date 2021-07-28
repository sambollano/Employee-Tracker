const mysql =require('mysql2');


const db = mysql.createConnection({
    host: 'localhost',
    port: 5500,
    user: 'root',
    password: "Root",
    database: 'Employee_Tracker'
});

db.connect(function(err) {
    if (err)
    throw err
});

module.exports = db;