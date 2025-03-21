# Course-Popularity-Analysis

**Project Overview**
This project analyzes university course popularity using survey results. The goal is to rank courses based on student preferences using SQL queries. Popularity is determined by comparing votes for different courses in multiple surveys, assigning points based on the vote difference.

 **Objectives**

1) To measure course popularity using survey data.
2) To assign scores based on the vote differences between courses.
3) To ensure all courses are ranked, including those not present in any survey.
4) To execute queries that return results in descending order of popularity.

**Tools & Technologies Used**

Database: MySQL (or any relational database).
Query Language: SQL.
Functions Used: CASE, JOIN, COALESCE, SUM, ABS.
Aggregation & Conditions: Grouping results and handling cases where courses do not appear in surveys.


**Key Features of the SQL Query**

**Dynamic Popularity Calculation:**
Courses gain points based on voting results.
A course gets 1 point if the vote difference is greater than 5% of total votes.
If the difference is ≤ 5%, both courses get 0.5 points each.

**Handling Missing Data:**
Ensures all courses from the "course" table appear in the ranking.
Courses not present in surveys receive 0 points.

**Sorting Popularity:**
Courses are ranked from most popular to least popular.


**Step-by-Step Implementation**

1) We used two tables:
![image](https://github.com/user-attachments/assets/74f9ef73-88f8-4d57-a07b-ace9b39efccc)
![image](https://github.com/user-attachments/assets/c21f4b5b-2f51-489e-b604-34472b27c68b)

2) SQL Query to Rank Course Popularity
That was shown in the code part, you can check

3)Expected Output of the Query
![image](https://github.com/user-attachments/assets/833d75a2-4942-4585-b6ca-b04727a1b7ac)

**Explanation of the Results:**

All courses in surveys received points based on vote differences.
physics_101 was not included in any survey, so its popularity is 0.


**Business Impact**

Helps universities understand course demand.
Assists in curriculum planning & resource allocation.
Identifies trending courses to promote.
