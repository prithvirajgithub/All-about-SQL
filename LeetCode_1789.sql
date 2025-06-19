-- Link: https://leetcode.com/problems/primary-department-for-each-employee/?envType=study-plan-v2&envId=top-sql-50

WITH single_d AS (
    SELECT employee_id, MIN(department_id) AS department_id
    FROM Employee 
    GROUP BY employee_id
    HAVING COUNT(DISTINCT department_id) = 1
),
multiple_d AS (
    SELECT employee_id, department_id
    FROM Employee 
    WHERE primary_flag = 'Y'
)
SELECT employee_id, department_id 
FROM multiple_d

UNION

SELECT employee_id, department_id 
FROM single_d;
