SHOW GRANTS FOR 'thswlsdlf0000'@'%';
SELECT Host, User FROM mysql.user WHERE User = 'thswlsdlf0000';
CREATE USER IF NOT EXISTS 'thswlsdlf0000'@'%' IDENTIFIED BY '1234';

SELECT CURRENT_USER() AS matched_account, USER() AS login_identity;

CREATE USER IF NOT EXISTS 'thswlsdlf0000'@'123.142.167.54' IDENTIFIED BY '비밀번호';
GRANT ALL PRIVILEGES ON greendae3.* TO 'thswlsdlf0000'@'123.142.167.54';
FLUSH PRIVILEGES;

USE greendae3;

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

SELECT * FROM commu_anno 
SELECT COUNT(*) FROM commu_anno 

SELECT * FROM commu_anno
ORDER BY id DESC
LIMIT 10 OFFSET 0

SELECT * FROM commu_anno
WHERE id = 5
OR title LIKE '%의료%'
OR nick LIKE '%제우스%'
OR DATE LIKE '%2024%'
OR hits = 120commu_emp

SELECT * FROM commu_emp
WHERE id = 20
OR `condition` LIKE 10
OR nick LIKE 10
OR title LIKE 10
OR DATE LIKE 10

SELECT * FROM collmaj
where unitcol='자연과학대학'
order by deptnum DESC

SELECT * FROM lecture
WHERE ccode = 'G01940'

SELECT * FROM aa_notice
ORDER BY id DESC
LIMIT 5

ALTER TABLE student
MODIFY COLUMN snum INT AUTO_INCREMENT;

USE greendae3;

/* 학사관리시스템 메인 */

/* 학과별 전체 학생 현황*/
SELECT COUNT(*), edept FROM student
GROUP BY edept;

/* 학과별 재학생 현황 */
SELECT COUNT(*), edept FROM student
GROUP BY edept
WHERE CONDITION = '재학중';

/* 학과별 휴학생 현황 */
SELECT COUNT(*), edept FROM student
GROUP BY edept
WHERE CONDITION = '휴학중';

/* 대학 운영 현황 - 개설학과 개수 */
SELECT COUNT(DISTINCT deptname) AS countdept FROM collmaj

/* 대학 운영 현황 - 개설강좌 개수 */
SELECT COUNT(DISTINCT lname) AS countlname FROM lecture

/* 대학 운영 현황 - 전체교수 인원 */
SELECT COUNT(DISTINCT pnum) AS countpnum FROM professor

/* 대학 운영 현황 - 임직원 인원 */
SELECT COUNT(*) AS countuser FROM `User` WHERE identification = 'admin'

/* 대학 운영 현황 - 학생 인원 */
SELECT COUNT(DISTINCT snum) AS countstuall FROM student

/* 대학 운영 현황 - 휴학생 인원 */
SELECT COUNT(DISTINCT snum) AS countstuleave FROM student WHERE `condition` = '휴학중'

/* 대학 운영 현황 - 대학원생 인원 */
SELECT COUNT(DISTINCT snum) AS countstugradschool FROM student WHERE ecol LIKE '%대학원%'

/* 대학 운영 현황 - 졸업생 인원 */
SELECT COUNT(DISTINCT snum) AS countstugraduation FROM student WHERE `condition` = '졸업'