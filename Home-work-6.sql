1)SELECT number, name, started_at
		FROM streams JOIN courses
 		ON courses.id = course_id;

2)SELECT name, SUM(students_amount)
		FROM courses JOIN streams
		ON courses.id = course_id
		 GROUP BY name;	

3)SELECT teachers.id, teachers.name, teachers.surname, AVG(grade)
		FROM grades LEFT JOIN teachers
		ON teachers.id = teacher_id
		GROUP BY teacher_id;

4)SELECT
		teachers.name,
		teachers.surname,
		courses.name AS course_name,
		MIN(grades.grade) AS min_grade,
 		MAX(grades.grade) AS max_grade,
		streams.started_at
 	FROM teachers
		JOIN grades
			ON teachers.id = grades.teacher_id
		 JOIN streams
			ON grades.stream_id = streams.id
		JOIN courses
			ON streams.course_id = courses.id
		GROUP BY grades.teacher_id;


	


		