var mysql = require("mysql");
var inquirer = require("inquirer");
var cTable = require("console.table");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "password27",
    database: "bamazon_DB"
  });

  connection.connect(function(err) {
    if (err) throw err;
    start();
  });

  function start() {
      inquirer
        .prompt({
           name: "products",
           type: "rawlist",
           message: "What is the ID of the product they would like to buy?",
        })
        then(function(answer) {
            if (answer.products.toUpperCase() === "id") {
                products();
              }
              else {
                buy();
              }
            });
  }