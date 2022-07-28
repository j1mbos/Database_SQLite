1)UPDATE streams SET started_at = SUBSTR(started_at, 7, 4) || '-' || SUBSTR(started_at, 4, 2) || '-' || SUBSTR(started_at, 1, 2);
2)SELECT course_id, number FROM streams ORDER BY started_at DESC LIMIT 1;
3)SELECT DISTINCT SUBSTR(started_at, 1, 4) FROM streams;
4)SELECT id, COUNT(*) FROM teachers;
5)SELECT started_at FROM streams ORDER BY started_at DESC LIMIT 2;
6)SELECT teacher_id, AVG(grade) FROM grades WHERE teacher_id = 1;