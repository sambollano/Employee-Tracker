const mysql =require('mysql2');

const connection = mysql.createConnection({
    host: 'localhost',
    port: 5500,
    user: 'root',
    password: "Root",
    database: 'Employee_Tracker'
});

db.connect(function(err) {
    if (err) throw err
    console.log("You have connected to MySQL " + connection.threadId)
});

module.exports = connection;