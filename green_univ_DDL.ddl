-- 생성자 Oracle SQL Developer Data Modeler 24.3.1.347.1153
--   위치:        2025-08-31 17:28:48 KST
--   사이트:      Oracle Database 21c
--   유형:      Oracle Database 21c



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE aa_courreg (
    department       NVARCHAR2(300) NOT NULL,
    grade            NVARCHAR2(300) NOT NULL,
    targetdepartment NVARCHAR2(500) NOT NULL
);

ALTER TABLE aa_courreg ADD CONSTRAINT aa_courreg_pk PRIMARY KEY ( department );

CREATE TABLE aa_faq (
    id       INTEGER NOT NULL,
    question NVARCHAR2(500) NOT NULL,
    answer   NVARCHAR2(500) NOT NULL
);

ALTER TABLE aa_faq ADD CONSTRAINT aa_faq_pk PRIMARY KEY ( id );

CREATE TABLE aa_grad_comp (
    sep       NVARCHAR2(50) NOT NULL,
    gradesum  INTEGER NOT NULL,
    freshmen  INTEGER NOT NULL,
    sophomore INTEGER NOT NULL,
    third     INTEGER NOT NULL,
    fourth    INTEGER NOT NULL
);

ALTER TABLE aa_grad_comp ADD CONSTRAINT aa_grad_comp_pk PRIMARY KEY ( sep );

CREATE TABLE aa_grad_grad (
    sep       NVARCHAR2(50) NOT NULL,
    gradesum  INTEGER NOT NULL,
    plurality INTEGER NOT NULL,
    single    INTEGER NOT NULL,
    minor     NVARCHAR2(100) NOT NULL
);

ALTER TABLE aa_grad_grad ADD CONSTRAINT aa_grad_grad_pk PRIMARY KEY ( sep );

CREATE TABLE aa_grades (
    rating         NVARCHAR2(50) NOT NULL,
    grade          NUMBER NOT NULL,
    percentilerank INTEGER NOT NULL,
    note           NVARCHAR2(100)
);

ALTER TABLE aa_grades ADD CONSTRAINT aa_grades_pk PRIMARY KEY ( rating );

CREATE TABLE aa_notice (
    id       INTEGER
        CONSTRAINT nnc_adm_notice_id NOT NULL,
    title    NVARCHAR2(300) NOT NULL,
    nickname NVARCHAR2(50) NOT NULL,
    "date"   DATE NOT NULL,
    hits     INTEGER DEFAULT 0
);

ALTER TABLE aa_notice ADD CONSTRAINT addm_notice_pk PRIMARY KEY ( id );

CREATE TABLE aa_schedules (
    id       INTEGER NOT NULL,
    content  NVARCHAR2(200) NOT NULL,
    nickname NVARCHAR2(50) NOT NULL
);

ALTER TABLE aa_schedules ADD CONSTRAINT aa_schedules_pk PRIMARY KEY ( id );

CREATE TABLE adm_counsel (
    id        INTEGER NOT NULL,
    classify  NVARCHAR2(100) NOT NULL,
    title     NVARCHAR2(200) NOT NULL,
    nickname  NVARCHAR2(50) NOT NULL,
    "date"    DATE NOT NULL,
    condition NVARCHAR2(100) NOT NULL
);

ALTER TABLE adm_counsel ADD CONSTRAINT adm_counsel_pk PRIMARY KEY ( id );

CREATE TABLE adm_notice (
    id       INTEGER NOT NULL,
    title    NVARCHAR2(300) NOT NULL,
    nickname NVARCHAR2(50) NOT NULL,
    "date"   DATE NOT NULL,
    hits     INTEGER DEFAULT 0
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

CREATE TABLE college (
    major NVARCHAR2(100) NOT NULL,
    dean  NVARCHAR2(100) NOT NULL,
    phone NVARCHAR2(100) NOT NULL,
    note  NVARCHAR2(100)
);

ALTER TABLE college ADD CONSTRAINT college_pk PRIMARY KEY ( major );

CREATE TABLE commu_anno (
    id       INTEGER
        CONSTRAINT nnc_commu_anno_id NOT NULL,
    title    NVARCHAR2(300) NOT NULL,
    nickname NVARCHAR2(50) NOT NULL,
    "date"   DATE NOT NULL,
    hits     INTEGER DEFAULT 0
);

ALTER TABLE commu_anno ADD CONSTRAINT commu_anno_pkv1 PRIMARY KEY ( id );

CREATE TABLE commu_emp (
    id        INTEGER
        CONSTRAINT nnc_commu_emp_id NOT NULL,
    condition NVARCHAR2(100) NOT NULL,
    nickname  NVARCHAR2(50) NOT NULL,
    title     NVARCHAR2(200) NOT NULL,
    "date"    DATE NOT NULL,
    hits      INTEGER DEFAULT 0
);

ALTER TABLE commu_emp ADD CONSTRAINT commu_emp_pk PRIMARY KEY ( id );

CREATE TABLE commu_free (
    id       INTEGER
        CONSTRAINT nnc_commu_free_id NOT NULL,
    title    NVARCHAR2(300) NOT NULL,
    nickname NVARCHAR2(50) NOT NULL,
    "date"   DATE NOT NULL,
    hits     INTEGER DEFAULT 0
);

ALTER TABLE commu_free ADD CONSTRAINT commu_free_pk PRIMARY KEY ( id );

CREATE TABLE commu_news (
    id       INTEGER
        CONSTRAINT nnc_commu_news_id NOT NULL,
    classify NVARCHAR2(100) NOT NULL,
    title    NVARCHAR2(200) NOT NULL,
    nickname NVARCHAR2(50) NOT NULL,
    "date"   DATE NOT NULL,
    hits     INTEGER DEFAULT 0
);

ALTER TABLE commu_news ADD CONSTRAINT commu_news_pk PRIMARY KEY ( id );

CREATE TABLE commu_qna (
    id        INTEGER
        CONSTRAINT nnc_commu_qna_id NOT NULL,
    title     NVARCHAR2(300) NOT NULL,
    nickname  NVARCHAR2(50) NOT NULL,
    "date"    DATE NOT NULL,
    condition NVARCHAR2(100) DEFAULT '0' NOT NULL
);

ALTER TABLE commu_qna ADD CONSTRAINT commu_qna_pk PRIMARY KEY ( id );

CREATE TABLE commu_refer (
    id       INTEGER
        CONSTRAINT nnc_commu_refer_id NOT NULL,
    title    NVARCHAR2(300) NOT NULL,
    nickname NVARCHAR2(50) NOT NULL,
    "date"   DATE NOT NULL,
    hits     INTEGER DEFAULT 0
);

ALTER TABLE commu_refer ADD CONSTRAINT commu_refer_pk PRIMARY KEY ( id );

CREATE TABLE main_acadaffairs (
    id             INTEGER NOT NULL,
    identification NVARCHAR2(200) NOT NULL,
    title          NVARCHAR2(100) NOT NULL,
    "date"         DATE NOT NULL
);

ALTER TABLE main_acadaffairs ADD CONSTRAINT main_academicaffairs_pk PRIMARY KEY ( id );

CREATE TABLE main_notice (
    id             INTEGER NOT NULL,
    identification NVARCHAR2(200) NOT NULL,
    title          NVARCHAR2(100) NOT NULL,
    "date"         DATE NOT NULL
);

ALTER TABLE main_notice ADD CONSTRAINT main_notice_pk PRIMARY KEY ( id );

CREATE TABLE sa_curriculum (
    code               NVARCHAR2(100) NOT NULL,
    year               INTEGER NOT NULL,
    completiondivision NVARCHAR2(10) NOT NULL,
    subject            NVARCHAR2(100) NOT NULL,
    grade              INTEGER NOT NULL
);

ALTER TABLE sa_curriculum ADD CONSTRAINT sa_curriculum_pk PRIMARY KEY ( code );

ALTER TABLE sa_curriculum
    ADD CONSTRAINT sa_curriculum__un UNIQUE ( code,
                                              year,
                                              subject,
                                              grade );

CREATE TABLE sa_details (
    code      NVARCHAR2(100) NOT NULL,
    subject   NVARCHAR2(100) NOT NULL,
    year      INTEGER NOT NULL,
    professor NVARCHAR2(100) NOT NULL,
    grade     INTEGER NOT NULL,
    classify  NVARCHAR2(50) NOT NULL,
    time      NVARCHAR2(100) NOT NULL,
    "where"   NVARCHAR2(100) NOT NULL
);

ALTER TABLE sa_details ADD CONSTRAINT sa_details_pk PRIMARY KEY ( code );

ALTER TABLE sa_details
    ADD CONSTRAINT sa_details__un
        UNIQUE ( code,
                 subject,
                 year,
                 professor,
                 classify,
                 grade );

CREATE TABLE sa_grade (
    code      NVARCHAR2(100) NOT NULL,
    subject   NVARCHAR2(100) NOT NULL,
    year      INTEGER NOT NULL,
    professor NVARCHAR2(100) NOT NULL,
    classify  NVARCHAR2(100) NOT NULL,
    score     NUMBER NOT NULL,
    grade     INTEGER NOT NULL
);

ALTER TABLE sa_grade ADD CONSTRAINT sa_grade_pk PRIMARY KEY ( code );

CREATE TABLE sa_record_grade (
    collegenum  INTEGER NOT NULL,
    major       INTEGER NOT NULL,
    refinement  INTEGER NOT NULL,
    "select"    INTEGER NOT NULL,
    social      INTEGER NOT NULL,
    others      INTEGER NOT NULL,
    requirement INTEGER NOT NULL
);

ALTER TABLE sa_record_grade ADD CONSTRAINT sa_record_grade_pk PRIMARY KEY ( collegenum );

CREATE TABLE sa_record_info (
    collegenum INTEGER NOT NULL,
    nickname   NVARCHAR2(50) NOT NULL,
    phone      NVARCHAR2(100) NOT NULL,
    year       INTEGER NOT NULL,
    term       INTEGER NOT NULL,
    department NVARCHAR2(100) NOT NULL,
    resinum    NVARCHAR2(100) NOT NULL,
    email      NVARCHAR2(100) NOT NULL,
    condition  NVARCHAR2(10) NOT NULL
);

ALTER TABLE sa_record_info ADD CONSTRAINT sa_record_info_pk PRIMARY KEY ( collegenum );

CREATE TABLE sa_record_year (
    collegenum INTEGER NOT NULL,
    year       INTEGER NOT NULL,
    grade      INTEGER NOT NULL,
    term       INTEGER NOT NULL,
    request    INTEGER,
    major      INTEGER NOT NULL,
    "select"   INTEGER NOT NULL,
    others     INTEGER NOT NULL,
    avg        NUMBER NOT NULL,
    "comment"  NVARCHAR2(50)
);

ALTER TABLE sa_record_year
    ADD CONSTRAINT sa_record_year_pk
        PRIMARY KEY ( year,
                      grade,
                      term,
                      collegenum );

CREATE TABLE sa_reg (
    major       NVARCHAR2(100) NOT NULL,
    code        NVARCHAR2(100) NOT NULL,
    classify    NVARCHAR2(50) NOT NULL,
    year        INTEGER NOT NULL,
    subject     NVARCHAR2(100) NOT NULL,
    grade       INTEGER NOT NULL,
    professor   NVARCHAR2(100) NOT NULL,
    numofpeople INTEGER NOT NULL,
    note        NVARCHAR2(50)
);

ALTER TABLE sa_reg ADD CONSTRAINT sa_reg_pk PRIMARY KEY ( major,
                                                          code );

ALTER TABLE sa_reg ADD CONSTRAINT sa_reg__un UNIQUE ( classify,
                                                      professor );

CREATE TABLE "User" (
    identification NVARCHAR2(200) NOT NULL,
    password       NVARCHAR2(200) NOT NULL,
    nickname       NVARCHAR2(50) NOT NULL,
    phone          NVARCHAR2(100) NOT NULL,
    email          NVARCHAR2(100) NOT NULL,
    address        NVARCHAR2(300)
);

ALTER TABLE "User" ADD CONSTRAINT user_pkv2 PRIMARY KEY ( identification );

ALTER TABLE "User"
    ADD CONSTRAINT user__un UNIQUE ( nickname,
                                     phone,
                                     email );

ALTER TABLE "User" ADD CONSTRAINT user__un_nickname UNIQUE ( nickname );

ALTER TABLE aa_schedules
    ADD CONSTRAINT aa_schedules_user_fk FOREIGN KEY ( nickname )
        REFERENCES "User" ( identification );

ALTER TABLE aa_notice
    ADD CONSTRAINT addm_notice_fk FOREIGN KEY ( nickname )
        REFERENCES "User" ( identification );

ALTER TABLE adm_counsel
    ADD CONSTRAINT adm_counsel_user_fk FOREIGN KEY ( nickname )
        REFERENCES "User" ( identification );

ALTER TABLE adm_notice
    ADD CONSTRAINT adm_notice_user_fk FOREIGN KEY ( nickname )
        REFERENCES "User" ( identification );

ALTER TABLE commu_anno
    ADD CONSTRAINT commu_anno_user_fk FOREIGN KEY ( nickname )
        REFERENCES "User" ( identification );

ALTER TABLE commu_emp
    ADD CONSTRAINT commu_emp_user_fk FOREIGN KEY ( nickname )
        REFERENCES "User" ( identification );

ALTER TABLE commu_free
    ADD CONSTRAINT commu_free_user_fk FOREIGN KEY ( nickname )
        REFERENCES "User" ( identification );

ALTER TABLE commu_news
    ADD CONSTRAINT commu_news_user_fk FOREIGN KEY ( nickname )
        REFERENCES "User" ( identification );

ALTER TABLE commu_qna
    ADD CONSTRAINT commu_qna_user_fk FOREIGN KEY ( nickname )
        REFERENCES "User" ( identification );

ALTER TABLE commu_refer
    ADD CONSTRAINT commu_refer_user_fk FOREIGN KEY ( nickname )
        REFERENCES "User" ( identification );

ALTER TABLE main_acadaffairs
    ADD CONSTRAINT main_aa_user_fk FOREIGN KEY ( identification )
        REFERENCES "User" ( identification );

ALTER TABLE main_notice
    ADD CONSTRAINT main_notice_user_fk FOREIGN KEY ( identification )
        REFERENCES "User" ( identification );

ALTER TABLE sa_details
    ADD CONSTRAINT sa_details_sa_curriculum_fk
        FOREIGN KEY ( code,
                      year,
                      subject,
                      grade )
            REFERENCES sa_curriculum ( code,
                                       year,
                                       subject,
                                       grade );

ALTER TABLE sa_details
    ADD CONSTRAINT sa_details_sa_reg_fk
        FOREIGN KEY ( classify,
                      professor )
            REFERENCES sa_reg ( classify,
                                professor );

ALTER TABLE sa_grade
    ADD CONSTRAINT sa_grade_sa_details_fk
        FOREIGN KEY ( code,
                      subject,
                      year,
                      professor,
                      classify,
                      grade )
            REFERENCES sa_details ( code,
                                    subject,
                                    year,
                                    professor,
                                    classify,
                                    grade );

ALTER TABLE sa_record_grade
    ADD CONSTRAINT sa_rec_grade_info_fk FOREIGN KEY ( collegenum )
        REFERENCES sa_record_info ( collegenum );

ALTER TABLE sa_record_year
    ADD CONSTRAINT sa_rec_year_info_fk FOREIGN KEY ( collegenum )
        REFERENCES sa_record_info ( collegenum );

ALTER TABLE sa_record_info
    ADD CONSTRAINT sa_record_info_user_fk
        FOREIGN KEY ( nickname,
                      phone,
                      email )
            REFERENCES "User" ( nickname,
                                phone,
                                email );

ALTER TABLE sa_reg
    ADD CONSTRAINT sa_reg_college_fk FOREIGN KEY ( major )
        REFERENCES college ( major );

ALTER TABLE sa_reg
    ADD CONSTRAINT sa_reg_sa_curriculum_fk
        FOREIGN KEY ( code,
                      year,
                      subject,
                      grade )
            REFERENCES sa_curriculum ( code,
                                       year,
                                       subject,
                                       grade );

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
-- CREATE TABLE                            28
-- CREATE INDEX                             0
-- ALTER TABLE                             53
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
