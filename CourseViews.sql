CREATE VIEW CourseSchedules AS
SELECT
    c.course_id,
    c.course_name,
    s.schedule_id,
    s.day_of_week,
    s.start_time,
    s.end_time,
    s.location
FROM
    Courses c
JOIN
    Schedules s ON c.course_id = s.course_id;

CREATE VIEW CourseAssignments AS
SELECT
    c.course_id,
    c.course_name,
    a.assignment_id,
    a.title,
    a.description,
    a.due_date,
    a.status
FROM
    Courses c
JOIN
    Assignments a ON c.course_id = a.course_id;

CREATE VIEW CourseLabs AS
SELECT
    c.course_id,
    c.course_name,
    l.lab_id,
    l.title,
    l.description,
    l.date,
    l.status
FROM
    Courses c
JOIN
    Labs l ON c.course_id = l.course_id;

CREATE VIEW CourseQuizzes AS
SELECT
    c.course_id,
    c.course_name,
    q.quiz_id,
    q.title,
    q.description,
    q.date,
    q.status
FROM
    Courses c
JOIN
    Quizzes q ON c.course_id = q.course_id;

CREATE VIEW CourseTests AS
SELECT
    c.course_id,
    c.course_name,
    t.test_id,
    t.title,
    t.description,
    t.date,
    t.status
FROM
    Courses c
JOIN
    Tests t ON c.course_id = t.course_id;


SELECT * FROM CourseSchedules WHERE course_id = 2;