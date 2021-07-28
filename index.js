const express = require("express");
const mysql = require("mysql2");

const PORT = process.env.PORT || 5500;
const app = express();

// Middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// connect to the database
const database = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Root",
  database: "Employee_Tracker",
});

// get request
app.get("/api/departments", (req, res) => {
  const sql = `SELECT * FROM department`;

  database.query(sql, (err, rows) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json({
      message: "success",
      data: rows,
    });
  });
});

app.get("/api/roles", (req, res) => {
  const sql = `SELECT * FROM employee_role`;

  database.query(sql, (err, rows) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json({
      message: "success",
      data: rows,
    });
  });
});

app.get("/api/employees", (req, res) => {
  const sql = `SELECT * FROM employee`;

  database.query(sql, (err, result) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json({
      message: "success",
      data: result,
    });
  });
});

// post request
app.post("/api/employeemanager", ({ body }, res) => {
  const sql = `INSERT INTO employee (first_name, last_name, emp_role_id) 
  VALUES (?,?,?)`;
  const params = [body.first_name, body.last_name, body.emp_role_id];

  database.query(sql, params, (err, result) => {
    if (err) {
      res.status(400).json({ error: err.message });
      return;
    }
    res.json({
      message: "succes",
      data: body,
      changes: result.affectedRows,
    });
  });
});

// Default for error in request
app.use((req, res) => {
  res.status(404).end();
});

// Server ago
database.connect((err) => {
  if (err) throw err;
  console.log("Database connected");
  app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
  });
});