//this is where inquirer questions are housed
const db = require('./db/connection');
const inquirer = require('inquirer');
//const table = require('console.table');

const promptUser = () => {
    return inquirer.prompt([
        {
            type: 'list',
            name: 'initial',
            message: 'What would you like to do?',
            choices: [
            'View All Departments', 
            'View All Roles', 
            'View All Employees', 
            'Add a Department', 
            'Add a Role', 
            'Add an Employee', 
            'Update an Employee Role'
            ]
        }
    ])
    .then (data => {
        if (data.initial == 'Add a Department') {
            addDepartment()
        }  else if (data.initial == 'View All Departments') {
            db.query (`SELECT * FROM department`
            )}
        });
};

    
// ADD A DEPARTMENT
function addDepartment() {
    return inquirer.prompt([
        {
            type: 'input',
            name: 'department',
            message: 'What Department would you like to add?',
            },
    ])
}

const prompEmployee = employeeData => {
    console.log(`
    ================
    Add a Role
    ================
    `)
    .prompt([
        {
            type: 'input',
            name: 'name',
            message: 'What is the name of this role?',
        },
        {
            type: 'input',
            name: 'salary',
            message: 'What is the salary for this role?',
        },
        {
            type: 'input',
            name: 'department',
            message: 'What department will this role report to?',
        },
    ]);
};
   
//     const prompEmployee = employeeData => {
//         console.log(`
//         ================
//         Add an Employee
//         ================
//         `)
//         .prompt([
//             {
//                 type: 'input',
//                 name: 'first-name',
//                 message: 'What is the employee\'s first name?',
//             },
//             {
//                 type: 'input',
//                 name: 'last-name',
//                 message: 'What is the employee\'s last name?',
//             },

//             {
//                 type: 'input',
//                 name: 'role',
//                 message: 'What is the employee\'s role?',
//             },
//             {
//                 type: 'input',
//                 name: 'manager',
//                 message: 'What manager will this employee report to?',
//             },
//         ])
//         // .then(data => 
            
//         //     );

//         const prompEmployee = employeeData => {
//             console.log(`
//             ================
//             Add an Employee Role
//             ================
//             `)
//             .prompt([
//                 {
//                     type: 'checkbox',
//                     name: 'employee',
//                     message: 'Which employee\'s role would you like to update?',
//                     choices: []
//                 },

//             ])
    
//     .then(employeeData => {
//         employeeData.employees.push(employeeData);
//     });

promptUser()