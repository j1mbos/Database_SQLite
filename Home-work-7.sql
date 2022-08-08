1)CREATE VIEW courses_info AS
 	SELECT
  	courses.name,
    MAX(streams.number),
    streams.started_at,
    AVG(grades.grade)
 	FROM courses
    LEFT JOIN streams
       ON courses.id = streams.course_id
    LEFT JOIN grades
      ON streams.id = grades.stream_id
 	GROUP BY name;

2) BEGIN TRANSACTION;
 		DELETE FROM teachers WHERE id = 3;
		DELETE FROM grades WHERE teacher_id = 3; 
	COMMIT;

3)CREATE TRIGGER grade_cheked BEFORE INSERT
	ON grades
 	BEGIN
  SELECT CASE
  WHEN
		(NEW.grade NOT BETWEEN 1 AND 5)
  THEN
   	RAISE(ABORT, 'Score must be from 1 to 5')
  END;
 END;	