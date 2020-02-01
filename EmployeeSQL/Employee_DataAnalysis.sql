
/* List the following details of each employee: employee number, last name, first name, gender, and salary */

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
 FROM employee as e
  INNER JOIN salary as s 
   ON e.emp_no = s.emp_no;
  
/*List employees who were hired in 1986 */

SELECT *
 FROM employee as e
  WHERE e.hire_date BETWEEN '01/01/1986' AND '12/31/1986'
   ORDER BY e.hire_date, e.last_name;

/*List the manager of each department with the following information:
department number, department name, the manager's employee number, last name, first name, and start and end employment dates.*/

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
 FROM dept_manager as dm
  LEFT JOIN department as d ON dm.dept_no = d.dept_no
   LEFT JOIN employee as e ON e.emp_no = dm.emp_no
  ORDER BY dm.dept_no, dm.from_date;
   
/*List the department of each employee with the following information: employee number, last name, first name, and department name.*/

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
 FROM dept_emp as de
  LEFT JOIN employee as e ON de.emp_no = e.emp_no
   LEFT JOIN department as d ON de.dept_no = d.dept_no;
   
/*List all employees whose first name is "Hercules" and last names begin with "B."*/
/*use the LIKE operator when using wildcards */

SELECT * 
 FROM employee as e
  WHERE e.first_name = 'Hercules'
   AND  e.last_name LIKE 'B%';

/*List all employees in the Sales department, including their employee number, last name, first name, and department name*/
/* doing a nested query jic looking for it in homework, kind of ugly but interesting.. next task will do in diff way*/

SELECT e.emp_no, e.last_name, e.first_name, sq.dept_Name
 FROM employee as e
  JOIN dept_emp as de ON e.emp_no = de.emp_no
   JOIN
    (SELECT dept_no, dept_name FROM department WHERE dept_name = 'Sales')as sq
	  ON de.dept_no = sq.dept_no;
	  
	  
/*List all employees in the Sales and Development departments, including their:
employee number, last name, first name, and department name. */

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
 FROM employee as e
  JOIN dept_emp as de ON de.emp_no = e.emp_no
   JOIN department as d ON d.dept_no = de.dept_no WHERE dept_name IN ('Sales','Development');
   
/*In descending order, list the frequency count of employee last names,
i.e., how many employees share each last name.*/

SELECT e.last_name, COUNT(e.last_name) as CntOfLastName
 FROM employee as e
  GROUP BY e.last_name
   ORDER BY CntOfLastName DESC;

/*Who is employee 499942 from the Epilogue of the read me?? */
SELECT * FROM employee where emp_no = 499942
/* Oh.. HA HA */

 
  
