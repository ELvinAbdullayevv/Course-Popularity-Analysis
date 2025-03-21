use Autodoc;

create table course (
course_id int Primary key,
course_name varchar(255) Not null,
faculty varchar(255) Not null);

create table survey(
survey_id int Primary key,
option_a varchar(255) Not null,
option_b varchar(255) Not null,
votes_a int default 0,
votes_b int default 0);


insert into course (course_id, course_name, faculty) values
(1001, 'economics_101', 'business'),
(1002, 'algebra_101', 'math'),
(1003, 'geometry_101', 'math'),
(1004, 'management_101', 'business'),
(1005, 'marketing_101', 'business'),
(1006, 'physics_101', 'science');


insert into survey (survey_id, option_a, option_b, votes_a, votes_b) values
(2001, 'economics_101', 'geometry_101', 61, 34),
(2002, 'algebra_101', 'economics_101', 31, 68),
(2003, 'marketing_101', 'management_101', 11, 72),
(2005, 'management_101', 'algebra_101', 43, 54),
(2004, 'geometry_101', 'marketing_101', 48, 46);


