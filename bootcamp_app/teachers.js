const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: 'labber',
  host: 'localhost',
  database: 'bootcampx'
});

const queryString = `
  SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
  FROM teachers
  JOIN assistance_requests on teacher_id = teachers.id
  JOIN students on student_id = students.id
  JOIN cohorts on cohort_id = cohorts.id
  WHERE cohorts.name LIKE $1
  ORDER BY teacher;
`;

const cohortName = process.argv[2];
const values = [`%${cohortName}`];

pool.query(queryString, values).then((res) => {
  res.rows.forEach((user) => {
    console.log(`${user.cohort}: ${user.teacher}`);
  });
});