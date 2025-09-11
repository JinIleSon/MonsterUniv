-- MySQL 8.0+

-- 권장: 데이터베이스 기본 문자셋 설정 (이미 설정돼 있다면 생략 가능)
-- ALTER DATABASE your_db CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

use greendae3;

-- 외래키 제약조건 때문에 삭제 순서가 꼬이지 않도록 먼저 FK 체크 끄기
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS aa_courreg;
DROP TABLE IF EXISTS aa_faq;
DROP TABLE IF EXISTS aa_grades;
DROP TABLE IF EXISTS aa_grad_comp;
DROP TABLE IF EXISTS aa_grad_grad;
DROP TABLE IF EXISTS aa_notice;
DROP TABLE IF EXISTS aa_schedules;
DROP TABLE IF EXISTS adm_counsel;
DROP TABLE IF EXISTS adm_notice;
DROP TABLE IF EXISTS cl_gallery;
DROP TABLE IF EXISTS cl_menuguide;
DROP TABLE IF EXISTS college;
DROP TABLE IF EXISTS commu_anno;
DROP TABLE IF EXISTS commu_emp;
DROP TABLE IF EXISTS commu_free;
DROP TABLE IF EXISTS commu_news;
DROP TABLE IF EXISTS commu_qna;
DROP TABLE IF EXISTS commu_refer;
DROP TABLE IF EXISTS main_acadaffairs;
DROP TABLE IF EXISTS main_notice;
DROP TABLE IF EXISTS sa_curriculum;
DROP TABLE IF EXISTS sa_details;
DROP TABLE IF EXISTS sa_grade;
DROP TABLE IF EXISTS sa_record_grade;
DROP TABLE IF EXISTS sa_record_info;
DROP TABLE IF EXISTS sa_record_year;
DROP TABLE IF EXISTS sa_reg;
DROP TABLE IF EXISTS `user`;
DROP TABLE IF EXISTS collmaj;
DROP TABLE IF EXISTS lecture;
DROP TABLE IF EXISTS professor;
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS `User`;

SET FOREIGN_KEY_CHECKS = 1;

-- 세션 문자셋 보장
SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 1) 테이블 생성

CREATE TABLE aa_faq (
  id        INT NOT NULL,
  question  VARCHAR(500) NOT NULL,
  answer    VARCHAR(500) NOT NULL,
  CONSTRAINT aa_faq_pk PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE aa_notice (
  id     INT NOT NULL AUTO_INCREMENT,
  title  VARCHAR(300) NOT NULL,
  `date` DATE NOT NULL,
  hits   INT DEFAULT 0,
  CONSTRAINT addm_notice_pk PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE aa_schedules (
  id      INT NOT NULL AUTO_INCREMENT,
  content VARCHAR(200) NOT NULL,
  CONSTRAINT aa_schedules_pk PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE adm_counsel (
  id         INT NOT NULL AUTO_INCREMENT,
  classify   VARCHAR(100) NOT NULL,
  title      VARCHAR(200) NOT NULL,
  `date`     DATE NOT NULL,
  `condition` VARCHAR(100) NOT NULL,
  CONSTRAINT adm_counsel_pk PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE adm_notice (
  id     INT NOT NULL AUTO_INCREMENT,
  title  VARCHAR(300) NOT NULL,
  `date` DATE NOT NULL,
  hits   INT DEFAULT 0,
  CONSTRAINT adm_notice_pkv1 PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE cl_gallery (
  imageroute VARCHAR(512) NOT NULL,
  title      VARCHAR(100) NOT NULL,
  hits       INT DEFAULT 0,
  `where`    VARCHAR(50) NOT NULL,
  regdate    DATE NOT NULL,
  CONSTRAINT cl_gallery_pk PRIMARY KEY (imageroute)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE cl_menuguide (
  `date` DATE NOT NULL,
  price  VARCHAR(50) NOT NULL,
  rice   VARCHAR(50),
  soup   VARCHAR(50),
  side1  VARCHAR(50),
  side2  VARCHAR(50),
  side3  VARCHAR(50),
  side4  VARCHAR(50),
  CONSTRAINT cl_menuguide_pk PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE collmaj (
  deptnum  INT NOT NULL,
  colname  VARCHAR(200) NOT NULL,
  coleng   VARCHAR(200) NOT NULL,
  coltit   VARCHAR(200) NOT NULL,
  colcont  VARCHAR(500) NOT NULL,
  colimgo  VARCHAR(500) NOT NULL,
  colimgs  VARCHAR(500) NOT NULL,
  deptname VARCHAR(300) NOT NULL,
  estyear  DATE NOT NULL,
  depttel  VARCHAR(200) NOT NULL,
  unitcol  VARCHAR(500) NOT NULL,
  engname  VARCHAR(500) NOT NULL,
  dean     VARCHAR(100) NOT NULL,
  deptoff  VARCHAR(200) NOT NULL,
  CONSTRAINT collmaj_pk PRIMARY KEY (deptnum)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE commu_anno (
  id     INT NOT NULL AUTO_INCREMENT,
  title  VARCHAR(300) NOT NULL,
  `date` DATE NOT NULL,
  hits   INT DEFAULT 0,
  CONSTRAINT commu_anno_pkv1 PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE commu_emp (
  id         INT NOT NULL AUTO_INCREMENT,
  `condition` VARCHAR(100) NOT NULL,
  title      VARCHAR(200) NOT NULL,
  `date`     DATE NOT NULL,
  hits       INT DEFAULT 0,
  CONSTRAINT commu_emp_pk PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE commu_free (
  id     INT NOT NULL AUTO_INCREMENT,
  title  VARCHAR(300) NOT NULL,
  `date` DATE NOT NULL,
  hits   INT DEFAULT 0,
  CONSTRAINT commu_free_pk PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE commu_news (
  id       INT NOT NULL AUTO_INCREMENT,
  classify VARCHAR(100) NOT NULL,
  title    VARCHAR(200) NOT NULL,
  `date`   DATE NOT NULL,
  hits     INT DEFAULT 0,
  CONSTRAINT commu_news_pk PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE commu_qna (
  id         INT NOT NULL AUTO_INCREMENT,
  title      VARCHAR(300) NOT NULL,
  `date`     DATE NOT NULL,
  `condition` VARCHAR(100) NOT NULL DEFAULT '0',
  CONSTRAINT commu_qna_pk PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE commu_refer (
  id     INT NOT NULL AUTO_INCREMENT,
  title  VARCHAR(300) NOT NULL,
  `date` DATE NOT NULL,
  hits   INT DEFAULT 0,
  CONSTRAINT commu_refer_pk PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 주의: Oracle의 DATE는 날짜+시간입니다. 수업 시간 관련 컬럼은 DATETIME으로 변환했습니다.
CREATE TABLE lecture (
  deptcode VARCHAR(100) NOT NULL,
  `year`   VARCHAR(100) NOT NULL,
  semester VARCHAR(100) NOT NULL,
  compdiv  VARCHAR(100) NOT NULL,
  lname    VARCHAR(100) NOT NULL,
  lexpl    VARCHAR(100) NOT NULL,
  opencol  VARCHAR(100) NOT NULL,
  openmaj  VARCHAR(100) NOT NULL,
  grade    INT NOT NULL,
  prof     VARCHAR(100) NOT NULL,
  yclass   DATETIME NOT NULL,
  yclase   DATETIME NOT NULL,
  `times`  DATETIME NOT NULL,
  timee    DATETIME NOT NULL,
  timed    DATETIME NOT NULL,
  evaway   VARCHAR(1000) NOT NULL,
  book     VARCHAR(200) NOT NULL,
  room     VARCHAR(300) NOT NULL,
  maxnum   INT NOT NULL,
  nownum   INT NOT NULL,
  CONSTRAINT lecture_pk PRIMARY KEY (deptcode),
  CONSTRAINT lecture__one UNIQUE (lname)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE lecture
ADD COLUMN uniq_hash CHAR(64)
  AS (SHA2(CONCAT_WS('#',
     DATE_FORMAT(yclass, '%Y-%m-%d %H:%i:%s'),
     semester, deptcode, lname, `year`, prof, grade, compdiv, room), 256))
  STORED,
ADD UNIQUE KEY uq_lecture_hash (uniq_hash);

CREATE TABLE main_acadaffairs (
  id     INT NOT NULL AUTO_INCREMENT,
  title  VARCHAR(100) NOT NULL,
  `date` DATE NOT NULL,
  CONSTRAINT main_academicaffairs_pk PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE main_notice (
  id     INT NOT NULL AUTO_INCREMENT,
  title  VARCHAR(100) NOT NULL,
  `date` DATE NOT NULL,
  CONSTRAINT main_notice_pk PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE professor (
  pnum     INT NOT NULL,
  pname    VARCHAR(100) NOT NULL,
  pgender  VARCHAR(100) NOT NULL,
  ptel     VARCHAR(100) NOT NULL,
  pzip     VARCHAR(500) NOT NULL,
  paddr1   VARCHAR(300) NOT NULL,
  paddr2   VARCHAR(500),
  pregno   VARCHAR(100) NOT NULL,
  pengname VARCHAR(100) NOT NULL,
  pnation  VARCHAR(100) NOT NULL,
  pemail   VARCHAR(100) NOT NULL,
  gradun   VARCHAR(200) NOT NULL,
  graddate DATE NOT NULL,
  takecol  VARCHAR(200) NOT NULL,
  takedept VARCHAR(200) NOT NULL,
  major    VARCHAR(200) NOT NULL,
  degree   VARCHAR(200) NOT NULL,
  appdate  DATE NOT NULL,
  role     VARCHAR(100) NOT NULL,
  CONSTRAINT professor_pk PRIMARY KEY (pnum)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE sa_details (
  snum     INT NOT NULL,
  yclass   DATETIME NOT NULL,
  semester VARCHAR(100) NOT NULL,
  deptcode VARCHAR(100) NOT NULL,
  lname    VARCHAR(100) NOT NULL,
  `year`   VARCHAR(100) NOT NULL,
  prof     VARCHAR(100) NOT NULL,
  grade    INT NOT NULL,
  compdiv  VARCHAR(100) NOT NULL,
  `time`   VARCHAR(200) NOT NULL,
  room     VARCHAR(300) NOT NULL,
  CONSTRAINT sa_details_pk PRIMARY KEY (snum, deptcode),
  CONSTRAINT sa_details__un UNIQUE (
    deptcode, `year`, prof, grade, compdiv, yclass, semester, snum
  )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE sa_grade (
  snum     INT NOT NULL,
  deptcode VARCHAR(100) NOT NULL,
  lname    VARCHAR(100) NOT NULL,
  `year`   VARCHAR(100) NOT NULL,
  prof     VARCHAR(100) NOT NULL,
  compdiv  VARCHAR(100) NOT NULL,
  score    DECIMAL(5,2) NOT NULL,
  rating   VARCHAR(10) NOT NULL,
  grade    INT NOT NULL,
  yclass   DATETIME NOT NULL,
  semester VARCHAR(100) NOT NULL,
  CONSTRAINT sa_grade_pk PRIMARY KEY (snum, deptcode)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE student (
  snum     INT NOT NULL,
  sname    VARCHAR(100) NOT NULL,
  sgender  VARCHAR(50) NOT NULL,
  stel     VARCHAR(100) NOT NULL,
  szip     VARCHAR(500) NOT NULL,
  saddr1   VARCHAR(500) NOT NULL,
  saddr2   VARCHAR(500),
  sregno   VARCHAR(100) NOT NULL,
  sengname VARCHAR(100) NOT NULL,
  snation  VARCHAR(100) NOT NULL,
  semail   VARCHAR(200) NOT NULL,
  eyear    INT NOT NULL,
  esort    VARCHAR(200) NOT NULL,
  egrade   VARCHAR(100) NOT NULL,
  eterm    VARCHAR(100) NOT NULL,
  gyear    INT NOT NULL,
  ecol     VARCHAR(200) NOT NULL,
  edept    VARCHAR(500) NOT NULL,
  advprof  VARCHAR(100) NOT NULL,
  role     VARCHAR(100) NOT NULL,
  CONSTRAINT student_pk PRIMARY KEY (snum)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `User` (
  identification VARCHAR(200) NOT NULL,
  `password`     VARCHAR(200) NOT NULL,
  nickname       VARCHAR(50) NOT NULL,
  phone          VARCHAR(100) NOT NULL,
  email          VARCHAR(100) NOT NULL,
  address        VARCHAR(300),
  role           VARCHAR(100) NOT NULL,
  CONSTRAINT user_pkv2 PRIMARY KEY (identification),
  CONSTRAINT user__un_nickname UNIQUE (nickname),
  CONSTRAINT user__un UNIQUE (nickname, phone, email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 2) 외래키

ALTER TABLE sa_details
ADD COLUMN lecture_hash CHAR(64)
  AS (SHA2(CONCAT_WS('#',
     DATE_FORMAT(yclass, '%Y-%m-%d %H:%i:%s'),
     semester, deptcode, lname, `year`, prof, grade, compdiv, room), 256))
  STORED,
ADD INDEX idx_sa_details_lecture_hash (lecture_hash),
ADD CONSTRAINT sa_details_lecture_fk
  FOREIGN KEY (lecture_hash)
  REFERENCES lecture (uniq_hash);

ALTER TABLE sa_details
  ADD CONSTRAINT sa_details_student_fk
  FOREIGN KEY (snum)
  REFERENCES student (snum);

ALTER TABLE sa_grade
  ADD CONSTRAINT sa_grade_lecture_fk
  FOREIGN KEY (lname)
  REFERENCES lecture (lname);

ALTER TABLE sa_grade
  ADD CONSTRAINT sa_grade_sa_details_fk
  FOREIGN KEY (
    deptcode, `year`, prof, grade, compdiv, yclass, semester, snum
  )
  REFERENCES sa_details (
    deptcode, `year`, prof, grade, compdiv, yclass, semester, snum
  );

-- (참고) Oracle의 시퀀스/트리거는 MySQL AUTO_INCREMENT로 대체되었으므로 별도 생성 불필요.
-- 필요 시 수동 입력을 원하시면 해당 테이블의 AUTO_INCREMENT를 제거하고 응용 로직에서 값 채우시면 됩니다.
