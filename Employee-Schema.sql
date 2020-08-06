DROP DATABASE IF EXISTS employeesDB;
CREATE database employeesDB;

USE employeesDB;

CREATE TABLE department
(
  id INTEGER NOT NULL
  auto_increment PRIMARY KEY,
  name VARCHAR
  (40)
);

  CREATE TABLE role
  (
    id INTEGER NOT NULL
    auto_increment PRIMARY KEY,
    title VARCHAR
    (40),
    salary DECIMAL ,
    department_id INTEGER,
    FOREIGN KEY
    (department_id) REFERENCES department
    (id)

  );

    CREATE TABLE employee
    (
      id INTEGER NOT NULL
      auto_increment PRIMARY KEY,
      first_name VARCHAR
      (40),
      last_name VARCHAR
      (40) ,
      role_id INTEGER,
      manager_id INTEGER,
      FOREIGN KEY
      (role_id) REFERENCES role
      (id),
      FOREIGN KEY
      (manager_id) REFERENCES role
      (id)
    );


