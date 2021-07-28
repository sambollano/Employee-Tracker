const inquirer = require("inquirer");
const db = require('./db/connection');

const userAction = () => {
    inquirer.prompt([
        {
            type: 'list',
            name: 'action',
            message: 'What would you like to do?',
            choices: [
                {
                    name: 'View All Departments',
                    value: 'view_departments'
                },
                {
                    name: 'View All Roles',
                    value: 'view_roles'
                },
                {
                    name: 'View All Employees',
                    value: 'view_employees'
                },
                {
                    name: 'Add a Department',
                    value: 'add_department'
                },
                {
                    name: 'Add a Role',
                    value: 'add_role'
                },
                {
                    name: 'Add an Employee',
                    value: 'add_employee'
                },
                {
                    name: 'Update and Employee',
                    value: 'update_employee'
                },
                {
                    name: 'Exit Application',
                    value: 'exit'
                }
            ]
        }
    ]).then(answers => {
        switch(answers.action){
            case 'view_departments':
                return viewDepartments();
                break;
            case 'view_roles' :
                return viewRoles();
                break;
            case 'view_employees' :
                return viewEmployees();
                break;
            case 'add_department' :
                return addDepartment();
                break;
            case 'add_role' :
                return addRole();
                break;
            case 'add_employee' :
                return addEmployee();
                break;
            case 'update_employee' :
                return updateEmployee();
                break;
            default:
                return process.exit();
        }
    })
}

const viewDepartments = () => {
    const sql = 'SELECT * FROM department'
    db.query(sql, (err, res) => {
        if (err) throw err
        console.table(res)
    }) 
    userAction();
}

const viewRoles = () => {
    const sql = 'SELECT * FROM role';
    db.query(sql, (err, res) => {
        if (err) throw err
        console.table(res)
    }) 
    userAction();
}

const viewEmployees = () => {
    //query db to get all info
    //return info
    var query = 'SELECT * FROM employee'
    db.query(query, function(err, results) {
        console.log('hello');
        console.log(results);
    }) 
    //ask the user for action again
    userAction();
}

const addDepartment = () => {
        inquirer.prompt({
            type: 'input',
            message: 'Enter Department Name',
            name: 'department'
        })
        .then(function(answer) {
            db.query(
                "INSERT INTO department SET ?",
                {
                    name: res.name
                },
                function(err, answer) {
                    if (err) {
                        throw err;
                    }
                }
            )
        })
        userAction()
    }
    

const addRole = () => {
    db.query('SELECT role.title AS Title, role.salary AS Salary FROM role', function(err,res) {
        inquirer.prompt([
            {
                name: 'Title',
                type: 'input',
                message: "What Role will this Title have?"
            },
            {
                name: "Salary",
                type: 'input',
                message: "Enter the Role's Salary"
            }

        ]).then(function(res) {
            db.query(
                "INSERT INTO role SET ?",
                {
                    title: res.Title,
                    salary: res.Salary,
                },
                function(err) {
                    if (err) throw err
                    conesole.table(res);
                }
            )
        });
    }); 
    userAction()
}


const addEmployee = () => {

}

const updateEmployee = () => {

}