 1)SELECT
   ...> number,
   ...> (SELECT name FROM courses WHERE courses.id = course_id) AS course_name,
   ...> students_amount
   ...> FROM streams WHERE students_amount>= 40;

2)SELECT
   ...> grade,
   ...> (SELECT name FROM courses WHERE courses.id = stream_id) AS course_name,
   ...> (SELECT name || surname FROM teachers WHERE teachers.id = teacher_id) AS teacher_name
   ...> FROM grades ORDER BY grade ASC LIMIT 2;

3) SELECT
   ...> (SELECT id FROM teachers WHERE teachers.name = 'Николай' AND teachers.surname = 'Савельев') AS teacher_id,
   ...> AVG(grade)
   ...> FROM grades WHERE (SELECT id FROM teachers WHERE teachers.name = 'Николай' AND teachers.surname = 'Савельев');

4)SELECT id FROM streams
   ...> WHERE streams.id = (SELECT stream_id FROM grades WHERE teacher_id =
   ...> (SELECT id FROM teachers WHERE name = 'Наталья' AND surname = 'Петрова'))
   ...> UNION ALL
   ...> SELECT
   ...> (SELECT name || surname FROM teachers WHERE teachers.id = teacher_id) AS teacher_name
   ...> FROM grades WHERE grade < 4.8;

5)SELECT ABS(MAX(grade) - MIN(grade)) AS grade
   ...> FROM grades;