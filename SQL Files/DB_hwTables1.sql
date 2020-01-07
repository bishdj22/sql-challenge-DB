CREATE TABLE "employees" (
  "emp_no" int,
  "birth_date" varchar(30),
  "first_name" varchar(30),
  "last_name" varchar(30),
  "gender" varchar(30),
  "hire_date" date,
  PRIMARY KEY ("emp_no")
);

CREATE TABLE "salaries" (
  "emp_no" int,
  "salary" int,
  "from_date" date,
  "to_date" date,
  PRIMARY KEY ("emp_no")
);

CREATE TABLE "titles" (
  "emp_no" int REFERENCES employees ("emp_no"),
  "title" varchar(30),
  "from_date" date,
  "to_date" date
);

--CREATE INDEX "FK" ON  "titles" ("emp_no");

CREATE TABLE "departments" (
  "dept_no" varchar(30),
  "dept_name" varchar(30),
  PRIMARY KEY ("dept_no")
);

CREATE TABLE "dept_manager" (
  "dept_no" varchar(30) REFERENCES departments ("dept_no"),
  "emp_no" int,
  "from_date" date,
  "to_date" date,
  PRIMARY KEY ("emp_no")
);

--CREATE INDEX "FK" ON  "dept_manager" ("dept_no");

CREATE TABLE "dept_emp" (
  "emp_no" int REFERENCES employees ("emp_no"),
  "dept_no" varchar(30) REFERENCES departments ("dept_no"),
  "from_date" date,
  "to_date" date
);

--CREATE INDEX "FK" ON  "dept_emp" ("emp_no", "dept_no");

