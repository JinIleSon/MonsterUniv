SELECT COUNT(*)
FROM commu_anno c
LEFT JOIN professor p ON c.nick = p.pname
LEFT JOIN student s ON c.nick = s.sname
LEFT JOIN `User` u ON c.nick = u.nickname
WHERE p.pname IS NOT NULL
   OR s.sname IS NOT NULL
   OR u.nickname IS NOT NULL;
   
   
SELECT
    C.*,
    COALESCE(P.pname, S.sname, U.nickname) AS nick
FROM commu_anno AS C
LEFT JOIN professor  AS P ON C.nick = P.pname
LEFT JOIN student    AS S ON C.nick = S.sname
LEFT JOIN `User`greendae3     AS U ON C.nick = U.nickname
WHERE P.pname IS NOT NULL
   OR S.sname IS NOT NULL
   OR U.nickname IS NOT NULL
ORDER BY C.id DESC
LIMIT 10 OFFSET 0;

SELECT 
    C.*, 
    COALESCE(P.pname, S.sname, U.nickname) AS nick
FROM commu_anno AS C
LEFT JOIN professor AS P ON C.nick = P.pname
LEFT JOIN student   AS S ON C.nick = S.sname
LEFT JOIN `User`   AS U ON C.nick = U.nickname
WHERE P.pname IS NOT NULL
   OR S.sname IS NOT NULL
   OR U.nickname IS NOT NULL
ORDER BY C.id DESC
LIMIT 10 OFFSET 0;