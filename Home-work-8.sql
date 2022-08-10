1)SELECT DISTINCT
 		courses.name,
 		SUM(streams.students_amount) OVER(w_students) AS sum_students
 	FROM streams
 		LEFT JOIN courses
 			ON streams.course_id = courses.id
  WINDOW w_students AS (PARTITION BY courses.name);

2)SELECT DISTINCT
 		teachers.id,
 		teachers.name,
 		teachers.surname,
 		AVG(grades.grade) OVER(w_grades) AS avg_grade
 	FROM teachers
 		LEFT JOIN grades
 			ON teachers.id = grades.teacher_id
 	WINDOW w_grades AS (PARTITION BY teacher_id);

3)CREATE INDEX idx_teaches_surname_name ON teachers(surname, name);
	CREATE INDEX idx_streams_number ON streams(number);	