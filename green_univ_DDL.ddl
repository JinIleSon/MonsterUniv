-- 생성자 Oracle SQL Developer Data Modeler 24.3.1.347.1153
--   위치:        2025-09-04 20:46:56 KST
--   사이트:      Oracle Database 21c
--   유형:      Oracle Database 21c



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE aa_faq (
    id       INTEGER NOT NULL,
    question NVARCHAR2(500) NOT NULL,
    answer   NVARCHAR2(500) NOT NULL
);

ALTER TABLE aa_faq ADD CONSTRAINT aa_faq_pk PRIMARY KEY ( id );

CREATE TABLE aa_notice (
    id     INTEGER
        CONSTRAINT nnc_adm_notice_id NOT NULL,
    title  NVARCHAR2(300) NOT NULL,
    "date" DATE NOT NULL,
    hits   INTEGER DEFAULT 0
);

ALTER TABLE aa_notice ADD CONSTRAINT addm_notice_pk PRIMARY KEY ( id );

CREATE TABLE aa_schedules (
    id      INTEGER NOT NULL,
    content NVARCHAR2(200) NOT NULL
);

ALTER TABLE aa_schedules ADD CONSTRAINT aa_schedules_pk PRIMARY KEY ( id );

CREATE TABLE adm_counsel (
    id        INTEGER NOT NULL,
    classify  NVARCHAR2(100) NOT NULL,
    title     NVARCHAR2(200) NOT NULL,
    "date"    DATE NOT NULL,
    condition NVARCHAR2(100) NOT NULL
);

ALTER TABLE adm_counsel ADD CONSTRAINT adm_counsel_pk PRIMARY KEY ( id );

CREATE TABLE adm_notice (
    id     INTEGER NOT NULL,
    title  NVARCHAR2(300) NOT NULL,
    "date" DATE NOT NULL,
    hits   INTEGER DEFAULT 0
);

ALTER TABLE adm_notice ADD CONSTRAINT adm_notice_pkv1 PRIMARY KEY ( id );

CREATE TABLE cl_gallery (
    imageroute NVARCHAR2(1000) NOT NULL,
    title      NVARCHAR2(100) NOT NULL,
    hits       INTEGER DEFAULT 0,
    "where"    NVARCHAR2(50) NOT NULL,
    regdate    DATE NOT NULL
);

ALTER TABLE cl_gallery ADD CONSTRAINT cl_gallery_pk PRIMARY KEY ( imageroute );

CREATE TABLE cl_menuguide (
    "date" DATE NOT NULL,
    price  NVARCHAR2(50) NOT NULL,
    rice   NVARCHAR2(50),
    soup   NVARCHAR2(50),
    side1  NVARCHAR2(50),
    side2  NVARCHAR2(50),
    side3  NVARCHAR2(50),
    side4  NVARCHAR2(50)
);

ALTER TABLE cl_menuguide ADD CONSTRAINT cl_menuguide_pk PRIMARY KEY ( "date" );

CREATE TABLE collmaj (
    deptnum  INTEGER NOT NULL,
    colname  NVARCHAR2(200) NOT NULL,
    coleng   NVARCHAR2(200) NOT NULL,
    coltit   NVARCHAR2(200) NOT NULL,
    colcont  NVARCHAR2(500) NOT NULL,
    colimgo  NVARCHAR2(500) NOT NULL,
    colimgs  NVARCHAR2(500) NOT NULL,
    deptname NVARCHAR2(300) NOT NULL,
    estyear  DATE NOT NULL,
    depttel  NVARCHAR2(200) NOT NULL,
    unitcol  NVARCHAR2(500) NOT NULL,
    engname  NVARCHAR2(500) NOT NULL,
    dean     NVARCHAR2(100) NOT NULL,
    deptoff  NVARCHAR2(200) NOT NULL
);

ALTER TABLE collmaj ADD CONSTRAINT collmaj_pk PRIMARY KEY ( deptnum );

CREATE TABLE commu_anno (
    id     INTEGER
        CONSTRAINT nnc_commu_anno_id NOT NULL,
    title  NVARCHAR2(300) NOT NULL,
    "date" DATE NOT NULL,
    hits   INTEGER DEFAULT 0
);

ALTER TABLE commu_anno ADD CONSTRAINT commu_anno_pkv1 PRIMARY KEY ( id );

CREATE TABLE commu_emp (
    id        INTEGER
        CONSTRAINT nnc_commu_emp_id NOT NULL,
    condition NVARCHAR2(100) NOT NULL,
    title     NVARCHAR2(200) NOT NULL,
    "date"    DATE NOT NULL,
    hits      INTEGER DEFAULT 0
);

ALTER TABLE commu_emp ADD CONSTRAINT commu_emp_pk PRIMARY KEY ( id );

CREATE TABLE commu_free (
    id     INTEGER
        CONSTRAINT nnc_commu_free_id NOT NULL,
    title  NVARCHAR2(300) NOT NULL,
    "date" DATE NOT NULL,
    hits   INTEGER DEFAULT 0
);

ALTER TABLE commu_free ADD CONSTRAINT commu_free_pk PRIMARY KEY ( id );

CREATE TABLE commu_news (
    id       INTEGER
        CONSTRAINT nnc_commu_news_id NOT NULL,
    classify NVARCHAR2(100) NOT NULL,
    title    NVARCHAR2(200) NOT NULL,
    "date"   DATE NOT NULL,
    hits     INTEGER DEFAULT 0
);

ALTER TABLE commu_news ADD CONSTRAINT commu_news_pk PRIMARY KEY ( id );

CREATE TABLE commu_qna (
    id        INTEGER
        CONSTRAINT nnc_commu_qna_id NOT NULL,
    title     NVARCHAR2(300) NOT NULL,
    "date"    DATE NOT NULL,
    condition NVARCHAR2(100) DEFAULT '0' NOT NULL
);

ALTER TABLE commu_qna ADD CONSTRAINT commu_qna_pk PRIMARY KEY ( id );

CREATE TABLE commu_refer (
    id     INTEGER
        CONSTRAINT nnc_commu_refer_id NOT NULL,
    title  NVARCHAR2(300) NOT NULL,
    "date" DATE NOT NULL,
    hits   INTEGER DEFAULT 0
);

ALTER TABLE commu_refer ADD CONSTRAINT commu_refer_pk PRIMARY KEY ( id );

CREATE TABLE lecture (
    deptcode NVARCHAR2(100) NOT NULL,
    year     NVARCHAR2(100) NOT NULL,
    semester NVARCHAR2(100) NOT NULL,
    compdiv  NVARCHAR2(100) NOT NULL,
    lname    NVARCHAR2(100) NOT NULL,
    lexpl    NVARCHAR2(100) NOT NULL,
    opencol  NVARCHAR2(100) NOT NULL,
    openmaj  NVARCHAR2(100) NOT NULL,
    grade    INTEGER NOT NULL,
    prof     NVARCHAR2(100) NOT NULL,
    yclass   DATE NOT NULL,
    yclase   DATE NOT NULL,
    times    DATE NOT NULL,
    timee    DATE NOT NULL,
    timed    DATE NOT NULL,
    evaway   NVARCHAR2(1000) NOT NULL,
    book     NVARCHAR2(200) NOT NULL,
    room     NVARCHAR2(300) NOT NULL,
    maxnum   NUMBER NOT NULL,
    nownum   NUMBER NOT NULL
);

ALTER TABLE lecture ADD CONSTRAINT lecture_pk PRIMARY KEY ( deptcode );

ALTER TABLE lecture
    ADD CONSTRAINT lecture__un
        UNIQUE ( yclass,
                 semester,
                 deptcode,
                 lname,
                 year,
                 prof,
                 grade,
                 compdiv,
                 room );

ALTER TABLE lecture ADD CONSTRAINT lecture__one UNIQUE ( lname );

CREATE TABLE main_acadaffairs (
    id     INTEGER NOT NULL,
    title  NVARCHAR2(100) NOT NULL,
    "date" DATE NOT NULL
);

ALTER TABLE main_acadaffairs ADD CONSTRAINT main_academicaffairs_pk PRIMARY KEY ( id );

CREATE TABLE main_notice (
    id     INTEGER NOT NULL,
    title  NVARCHAR2(100) NOT NULL,
    "date" DATE NOT NULL
);

ALTER TABLE main_notice ADD CONSTRAINT main_notice_pk PRIMARY KEY ( id );

CREATE TABLE professor (
    pnum     INTEGER NOT NULL,
    pname    NVARCHAR2(100) NOT NULL,
    pgender  NVARCHAR2(100) NOT NULL,
    ptel     NVARCHAR2(100) NOT NULL,
    pzip     NVARCHAR2(500) NOT NULL,
    paddr1   NVARCHAR2(300) NOT NULL,
    paddr2   NVARCHAR2(500),
    pregno   NVARCHAR2(100) NOT NULL,
    pengname NVARCHAR2(100) NOT NULL,
    pnation  NVARCHAR2(100) NOT NULL,
    pemail   NVARCHAR2(100) NOT NULL,
    gradun   NVARCHAR2(200) NOT NULL,
    graddate DATE NOT NULL,
    takecol  NVARCHAR2(200) NOT NULL,
    takedept NVARCHAR2(200) NOT NULL,
    major    NVARCHAR2(200) NOT NULL,
    degree   NVARCHAR2(200) NOT NULL,
    appdate  DATE NOT NULL,
    role     NVARCHAR2(100) NOT NULL
);

ALTER TABLE professor ADD CONSTRAINT professor_pk PRIMARY KEY ( pnum );

CREATE TABLE sa_details (
    snum     INTEGER NOT NULL,
    yclass   DATE NOT NULL,
    semester NVARCHAR2(100) NOT NULL,
    deptcode NVARCHAR2(100) NOT NULL,
    lname    NVARCHAR2(100) NOT NULL,
    year     NVARCHAR2(100) NOT NULL,
    prof     NVARCHAR2(100) NOT NULL,
    grade    INTEGER NOT NULL,
    compdiv  NVARCHAR2(100) NOT NULL,
    time     NVARCHAR2(200) NOT NULL,
    room     NVARCHAR2(300) NOT NULL
);

ALTER TABLE sa_details ADD CONSTRAINT sa_details_pk PRIMARY KEY ( snum,
                                                                  deptcode );

ALTER TABLE sa_details
    ADD CONSTRAINT sa_details__un
        UNIQUE ( deptcode,
                 year,
                 prof,
                 grade,
                 compdiv,
                 yclass,
                 semester,
                 snum );

CREATE TABLE sa_grade (
    snum     INTEGER NOT NULL,
    deptcode NVARCHAR2(100) NOT NULL,
    lname    NVARCHAR2(100) NOT NULL,
    year     NVARCHAR2(100) NOT NULL,
    prof     NVARCHAR2(100) NOT NULL,
    compdiv  NVARCHAR2(100) NOT NULL,
    score    NUMBER NOT NULL,
    rating   NVARCHAR2(10) NOT NULL,
    grade    INTEGER NOT NULL,
    yclass   DATE NOT NULL,
    semester NVARCHAR2(100) NOT NULL
);

ALTER TABLE sa_grade ADD CONSTRAINT sa_grade_pk PRIMARY KEY ( snum,
                                                              deptcode );

CREATE TABLE student (
    snum     INTEGER NOT NULL,
    sname    NVARCHAR2(100) NOT NULL,
    sgender  NVARCHAR2(50) NOT NULL,
    stel     NVARCHAR2(100) NOT NULL,
    szip     NVARCHAR2(500) NOT NULL,
    saddr1   NVARCHAR2(500) NOT NULL,
    saddr2   NVARCHAR2(500),
    sregno   NVARCHAR2(100) NOT NULL,
    sengname NVARCHAR2(100) NOT NULL,
    snation  NVARCHAR2(100) NOT NULL,
    semail   NVARCHAR2(200) NOT NULL,
    eyear    INTEGER NOT NULL,
    esort    NVARCHAR2(200) NOT NULL,
    egrade   NVARCHAR2(100) NOT NULL,
    eterm    NVARCHAR2(100) NOT NULL,
    gyear    INTEGER NOT NULL,
    ecol     NVARCHAR2(200) NOT NULL,
    edept    NVARCHAR2(500) NOT NULL,
    advprof  NVARCHAR2(100) NOT NULL,
    role     NVARCHAR2(100) NOT NULL
);

ALTER TABLE student ADD CONSTRAINT student_pk PRIMARY KEY ( snum );

CREATE TABLE "User" (
    identification NVARCHAR2(200) NOT NULL,
    password       NVARCHAR2(200) NOT NULL,
    nickname       NVARCHAR2(50) NOT NULL,
    phone          NVARCHAR2(100) NOT NULL,
    email          NVARCHAR2(100) NOT NULL,
    address        NVARCHAR2(300),
    role           NVARCHAR2(100) NOT NULL
);

ALTER TABLE "User" ADD CONSTRAINT user_pkv2 PRIMARY KEY ( identification );

ALTER TABLE "User" ADD CONSTRAINT user__un_nickname UNIQUE ( nickname );

ALTER TABLE "User"
    ADD CONSTRAINT user__un UNIQUE ( nickname,
                                     phone,
                                     email );

ALTER TABLE sa_details
    ADD CONSTRAINT sa_details_lecture_fk
        FOREIGN KEY ( yclass,
                      semester,
                      deptcode,
                      lname,
                      year,
                      prof,
                      grade,
                      compdiv,
                      room )
            REFERENCES lecture ( yclass,
                                 semester,
                                 deptcode,
                                 lname,
                                 year,
                                 prof,
                                 grade,
                                 compdiv,
                                 room );

ALTER TABLE sa_details
    ADD CONSTRAINT sa_details_student_fk FOREIGN KEY ( snum )
        REFERENCES student ( snum );

ALTER TABLE sa_grade
    ADD CONSTRAINT sa_grade_lecture_fk FOREIGN KEY ( lname )
        REFERENCES lecture ( lname );

ALTER TABLE sa_grade
    ADD CONSTRAINT sa_grade_sa_details_fk
        FOREIGN KEY ( deptcode,
                      year,
                      prof,
                      grade,
                      compdiv,
                      yclass,
                      semester,
                      snum )
            REFERENCES sa_details ( deptcode,
                                    year,
                                    prof,
                                    grade,
                                    compdiv,
                                    yclass,
                                    semester,
                                    snum );

CREATE SEQUENCE aa_notice_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER aa_notice_id_trg BEFORE
    INSERT ON aa_notice
    FOR EACH ROW
    WHEN ( new.id IS NULL )
BEGIN
    :new.id := aa_notice_id_seq.nextval;
END;
/

CREATE SEQUENCE aa_schedules_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER aa_schedules_id_trg BEFORE
    INSERT ON aa_schedules
    FOR EACH ROW
    WHEN ( new.id IS NULL )
BEGIN
    :new.id := aa_schedules_id_seq.nextval;
END;
/

CREATE SEQUENCE adm_counsel_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER adm_counsel_id_trg BEFORE
    INSERT ON adm_counsel
    FOR EACH ROW
    WHEN ( new.id IS NULL )
BEGIN
    :new.id := adm_counsel_id_seq.nextval;
END;
/

CREATE SEQUENCE adm_notice_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER adm_notice_id_trg BEFORE
    INSERT ON adm_notice
    FOR EACH ROW
    WHEN ( new.id IS NULL )
BEGIN
    :new.id := adm_notice_id_seq.nextval;
END;
/

CREATE SEQUENCE commu_anno_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER commu_anno_id_trg BEFORE
    INSERT ON commu_anno
    FOR EACH ROW
    WHEN ( new.id IS NULL )
BEGIN
    :new.id := commu_anno_id_seq.nextval;
END;
/

CREATE SEQUENCE commu_emp_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER commu_emp_id_trg BEFORE
    INSERT ON commu_emp
    FOR EACH ROW
    WHEN ( new.id IS NULL )
BEGIN
    :new.id := commu_emp_id_seq.nextval;
END;
/

CREATE SEQUENCE commu_free_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER commu_free_id_trg BEFORE
    INSERT ON commu_free
    FOR EACH ROW
    WHEN ( new.id IS NULL )
BEGIN
    :new.id := commu_free_id_seq.nextval;
END;
/

CREATE SEQUENCE commu_news_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER commu_news_id_trg BEFORE
    INSERT ON commu_news
    FOR EACH ROW
    WHEN ( new.id IS NULL )
BEGIN
    :new.id := commu_news_id_seq.nextval;
END;
/

CREATE SEQUENCE commu_qna_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER commu_qna_id_trg BEFORE
    INSERT ON commu_qna
    FOR EACH ROW
    WHEN ( new.id IS NULL )
BEGIN
    :new.id := commu_qna_id_seq.nextval;
END;
/

CREATE SEQUENCE commu_refer_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER commu_refer_id_trg BEFORE
    INSERT ON commu_refer
    FOR EACH ROW
    WHEN ( new.id IS NULL )
BEGIN
    :new.id := commu_refer_id_seq.nextval;
END;
/

CREATE SEQUENCE main_acadaffairs_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER main_acadaffairs_id_trg BEFORE
    INSERT ON main_acadaffairs
    FOR EACH ROW
    WHEN ( new.id IS NULL )
BEGIN
    :new.id := main_acadaffairs_id_seq.nextval;
END;
/

CREATE SEQUENCE main_notice_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER main_notice_id_trg BEFORE
    INSERT ON main_notice
    FOR EACH ROW
    WHEN ( new.id IS NULL )
BEGIN
    :new.id := main_notice_id_seq.nextval;
END;
/



-- Oracle SQL Developer Data Modeler 요약 보고서: 
-- 
-- CREATE TABLE                            22
-- CREATE INDEX                             0
-- ALTER TABLE                             31
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                          12
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                         12
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
