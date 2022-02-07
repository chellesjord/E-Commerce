const express = require('express');
const routes = require('./routes');
const inquirer = require("inquirer");
const fs = require("fs");
const mysql = require('mysql2');
const mySQLlogin = require('./password.js');

const app = express();
const PORT = process.env.PORT || 3001;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use(routes);

const db = mysql.createConnection(
  {
      user: mySQLlogin.mysql.user,
      password: mySQLlogin.mysql.password,
      database: 'employeetracker',
  },
  console.log('Connected to the employeetracker database.')
);

// sync sequelize models to the database, then turn on the server
app.listen(PORT, () => {
  console.log(`App listening on port ${PORT}!`);
});
