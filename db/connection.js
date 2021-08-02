const mysql =require('mysql2');

const connection = mysql.createConnection( {
    host: "localhost",
    user: "root",
    password: "Root",
    database: "employee_tracker",
  })

connection.connect((err) => {
    if (err) throw err
    console.log("You have connected to MySQL " + connection.threadId)
});

module.exports = connection;