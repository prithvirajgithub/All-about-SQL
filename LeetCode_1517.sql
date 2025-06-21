-- T-SQL Solution
SELECT user_id, name, mail
FROM Users
WHERE 
    RIGHT(mail, 13) = '@leetcode.com' COLLATE Latin1_General_CS_AS
    AND 
    LEFT(mail, 1) COLLATE Latin1_General_CS_AS LIKE '[a-zA-Z]'
    AND 
    REPLACE(mail, '@leetcode.com', '') COLLATE Latin1_General_CS_AS NOT LIKE '%[^a-zA-Z0-9_.-]%'
