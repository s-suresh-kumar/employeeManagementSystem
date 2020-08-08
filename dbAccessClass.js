const mysql = require("mysql");

class Database {
  constructor(config) {
    this.connection = mysql.createConnection(config);
  }

  query(sql, args) {
    return new Promise((resolve, reject) => {
      this.connection.query(sql, args, (err, rows) => {
        if (err) {
          console.log(err.sql);

          console.log("");
          // return;
          return reject(err);
        }
        //    console.table(rows);
        //    return rows;
        resolve(rows);
      });
    }).catch((error) => {
      console.log("Query Excepton caught");
      //console.log('caught', error.message);
    });
  }

  close() {
    return new Promise((resolve, reject) => {
      this.connection.end((err) => {
        if (err) return reject(err);

        resolve();
      });
    });
  }
}

module.exports = Database;
