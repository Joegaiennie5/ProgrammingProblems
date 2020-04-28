#Mary is a teacher in a middle school and she has a table seat storing students' names and their corresponding seat ids.
#The column id is continuous increment.
#Mary wants to change seats for the adjacent students.
#Can you write a SQL query to output the result for Mary?

SELECT id-1 as id, student FROM seat
WHERE MOD(id,2) = 0

UNION

(SELECT id+1 as id,student FROM seat 
WHERE MOD(id + 1,2) = 0
AND id + 1 in (SELECT id from seat))

UNION 

(select id,student from seat
WHERE id + 1 not in (select id from seat)
AND MOD(id,2) != 0)

order by id asc
