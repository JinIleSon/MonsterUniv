-- MySQL 8.0+ / InnoDB / utf8mb4 변환본

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- 스키마(필요시)
-- CREATE DATABASE your_db DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
-- USE your_db;

-- 공통 기본 옵션
-- 각 테이블 끝에: ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `aa_courreg` (
  `department` VARCHAR(300) NOT NULL,
  `grade` VARCHAR(300) NOT NULL,
  `targetdepartment` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`department`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `aa_faq` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `question` VARCHAR(500) NOT NULL,
  `answer` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `aa_grad_comp` (
  `sep` VARCHAR(50) NOT NULL,
  `gradesum` INT NOT NULL,
  `freshmen` INT NOT NULL,
  `sophomore` INT NOT NULL,
  `third` INT NOT NULL,
  `fourth` INT NOT NULL,
  PRIMARY KEY (`sep`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `aa_grad_grad` (
  `sep` VARCHAR(50) NOT NULL,
  `gradesum` INT NOT NULL,
  `plurality` INT NOT NULL,
  `single` INT NOT NULL,
  `minor` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`sep`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `aa_grades` (
  `rating` VARCHAR(50) NOT NULL,
  `grade` DECIMAL(10,2) NOT NULL,
  `percentilerank` INT NOT NULL,
  `note` VARCHAR(100) NULL,
  PRIMARY KEY (`rating`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `User` (
  `identification` VARCHAR(200) NOT NULL,
  `password` VARCHAR(200) NOT NULL,
  `nickname` VARCHAR(50) NOT NULL,
  `phone` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `address` VARCHAR(300) NULL,
  PRIMARY KEY (`identification`),
  UNIQUE KEY `user__un` (`nickname`,`phone`,`email`),
  UNIQUE KEY `user__un_nickname` (`nickname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `aa_notice` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(300) NOT NULL,
  `nickname` VARCHAR(200) NOT NULL,  -- FK 대상 길이에 맞춤(identification 200)
  `date` DATETIME NOT NULL,
  `hits` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_aa_notice_nickname` (`nickname`),
  CONSTRAINT `fk_aa_notice_user`
    FOREIGN KEY (`nickname`) REFERENCES `User`(`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `aa_schedules` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `content` VARCHAR(200) NOT NULL,
  `nickname` VARCHAR(200) NOT NULL,  -- 길이 200로 상향
  PRIMARY KEY (`id`),
  KEY `idx_aa_schedules_nickname` (`nickname`),
  CONSTRAINT `fk_aa_schedules_user`
    FOREIGN KEY (`nickname`) REFERENCES `User`(`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `adm_counsel` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `classify` VARCHAR(100) NOT NULL,
  `title` VARCHAR(200) NOT NULL,
  `nickname` VARCHAR(200) NOT NULL,  -- 길이 200로 상향
  `date` DATETIME NOT NULL,
  `condition` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_adm_counsel_nickname` (`nickname`),
  CONSTRAINT `fk_adm_counsel_user`
    FOREIGN KEY (`nickname`) REFERENCES `User`(`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `adm_notice` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(300) NOT NULL,
  `nickname` VARCHAR(200) NOT NULL,  -- 길이 200로 상향
  `date` DATETIME NOT NULL,
  `hits` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_adm_notice_nickname` (`nickname`),
  CONSTRAINT `fk_adm_notice_user`
    FOREIGN KEY (`nickname`) REFERENCES `User`(`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `cl_gallery` (
  `imageroute` VARCHAR(768) NOT NULL,
  `title` VARCHAR(100) NOT NULL,
  `hits` INT NOT NULL DEFAULT 0,
  `where` VARCHAR(50) NOT NULL,
  `regdate` DATETIME NOT NULL,
  PRIMARY KEY (`imageroute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `cl_menuguide` (
  `date` DATE NOT NULL,
  `price` VARCHAR(50) NOT NULL,
  `rice` VARCHAR(50) NULL,
  `soup` VARCHAR(50) NULL,
  `side1` VARCHAR(50) NULL,
  `side2` VARCHAR(50) NULL,
  `side3` VARCHAR(50) NULL,
  `side4` VARCHAR(50) NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `college` (
  `major` VARCHAR(100) NOT NULL,
  `dean` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(100) NOT NULL,
  `note` VARCHAR(100) NULL,
  PRIMARY KEY (`major`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `commu_anno` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(300) NOT NULL,
  `nickname` VARCHAR(200) NOT NULL,  -- 길이 200로 상향
  `date` DATETIME NOT NULL,
  `hits` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_commu_anno_nickname` (`nickname`),
  CONSTRAINT `fk_commu_anno_user`
    FOREIGN KEY (`nickname`) REFERENCES `User`(`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `commu_emp` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `condition` VARCHAR(100) NOT NULL,
  `nickname` VARCHAR(200) NOT NULL,  -- 길이 200로 상향
  `title` VARCHAR(200) NOT NULL,
  `date` DATETIME NOT NULL,
  `hits` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_commu_emp_nickname` (`nickname`),
  CONSTRAINT `fk_commu_emp_user`
    FOREIGN KEY (`nickname`) REFERENCES `User`(`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `commu_free` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(300) NOT NULL,
  `nickname` VARCHAR(200) NOT NULL,  -- 길이 200로 상향
  `date` DATETIME NOT NULL,
  `hits` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_commu_free_nickname` (`nickname`),
  CONSTRAINT `fk_commu_free_user`
    FOREIGN KEY (`nickname`) REFERENCES `User`(`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `commu_news` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `classify` VARCHAR(100) NOT NULL,
  `title` VARCHAR(200) NOT NULL,
  `nickname` VARCHAR(200) NOT NULL,  -- 길이 200로 상향
  `date` DATETIME NOT NULL,
  `hits` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_commu_news_nickname` (`nickname`),
  CONSTRAINT `fk_commu_news_user`
    FOREIGN KEY (`nickname`) REFERENCES `User`(`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `commu_qna` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(300) NOT NULL,
  `nickname` VARCHAR(200) NOT NULL,  -- 길이 200로 상향
  `date` DATETIME NOT NULL,
  `condition` VARCHAR(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_commu_qna_nickname` (`nickname`),
  CONSTRAINT `fk_commu_qna_user`
    FOREIGN KEY (`nickname`) REFERENCES `User`(`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `commu_refer` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(300) NOT NULL,
  `nickname` VARCHAR(200) NOT NULL,  -- 길이 200로 상향
  `date` DATETIME NOT NULL,
  `hits` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_commu_refer_nickname` (`nickname`),
  CONSTRAINT `fk_commu_refer_user`
    FOREIGN KEY (`nickname`) REFERENCES `User`(`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `main_acadaffairs` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `identification` VARCHAR(200) NOT NULL,
  `title` VARCHAR(100) NOT NULL,
  `date` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_main_aa_identification` (`identification`),
  CONSTRAINT `fk_main_aa_user`
    FOREIGN KEY (`identification`) REFERENCES `User`(`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `main_notice` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `identification` VARCHAR(200) NOT NULL,
  `title` VARCHAR(100) NOT NULL,
  `date` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_main_notice_identification` (`identification`),
  CONSTRAINT `fk_main_notice_user`
    FOREIGN KEY (`identification`) REFERENCES `User`(`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sa_curriculum` (
  `code` VARCHAR(100) NOT NULL,
  `year` INT NOT NULL,
  `completiondivision` VARCHAR(10) NOT NULL,
  `subject` VARCHAR(100) NOT NULL,
  `grade` INT NOT NULL,
  PRIMARY KEY (`code`),
  UNIQUE KEY `sa_curriculum__un` (`code`,`year`,`subject`,`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sa_details` (
  `code` VARCHAR(100) NOT NULL,
  `subject` VARCHAR(100) NOT NULL,
  `year` INT NOT NULL,
  `professor` VARCHAR(100) NOT NULL,
  `grade` INT NOT NULL,
  `classify` VARCHAR(50) NOT NULL,
  `time` VARCHAR(100) NOT NULL,
  `where` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`code`),
  UNIQUE KEY `sa_details__un` (`code`,`subject`,`year`,`professor`,`classify`,`grade`),
  KEY `idx_sa_details_curriculum` (`code`,`year`,`subject`,`grade`),
  KEY `idx_sa_details_reg` (`classify`,`professor`),
  CONSTRAINT `fk_sa_details_curriculum`
    FOREIGN KEY (`code`,`year`,`subject`,`grade`)
    REFERENCES `sa_curriculum`(`code`,`year`,`subject`,`grade`),
  CONSTRAINT `fk_sa_details_reg`
    FOREIGN KEY (`classify`,`professor`)
    REFERENCES `sa_reg`(`classify`,`professor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sa_grade` (
  `code` VARCHAR(100) NOT NULL,
  `subject` VARCHAR(100) NOT NULL,
  `year` INT NOT NULL,
  `professor` VARCHAR(100) NOT NULL,
  `classify` VARCHAR(100) NOT NULL,
  `score` DECIMAL(10,2) NOT NULL,
  `grade` INT NOT NULL,
  PRIMARY KEY (`code`),
  KEY `idx_sa_grade_details` (`code`,`subject`,`year`,`professor`,`classify`,`grade`),
  CONSTRAINT `fk_sa_grade_details`
    FOREIGN KEY (`code`,`subject`,`year`,`professor`,`classify`,`grade`)
    REFERENCES `sa_details`(`code`,`subject`,`year`,`professor`,`classify`,`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sa_record_info` (
  `collegenum` INT NOT NULL,
  `nickname` VARCHAR(50) NOT NULL,
  `phone` VARCHAR(100) NOT NULL,
  `year` INT NOT NULL,
  `term` INT NOT NULL,
  `department` VARCHAR(100) NOT NULL,
  `resinum` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `condition` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`collegenum`),
  KEY `idx_sa_record_info_user_triplet` (`nickname`,`phone`,`email`),
  CONSTRAINT `fk_sa_record_info_user_triplet`
    FOREIGN KEY (`nickname`,`phone`,`email`)
    REFERENCES `User`(`nickname`,`phone`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sa_record_grade` (
  `collegenum` INT NOT NULL,
  `major` INT NOT NULL,
  `refinement` INT NOT NULL,
  `select` INT NOT NULL,
  `social` INT NOT NULL,
  `others` INT NOT NULL,
  `requirement` INT NOT NULL,
  PRIMARY KEY (`collegenum`),
  CONSTRAINT `fk_sa_record_grade_info`
    FOREIGN KEY (`collegenum`) REFERENCES `sa_record_info`(`collegenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sa_record_year` (
  `collegenum` INT NOT NULL,
  `year` INT NOT NULL,
  `grade` INT NOT NULL,
  `term` INT NOT NULL,
  `request` INT NULL,
  `major` INT NOT NULL,
  `select` INT NOT NULL,
  `others` INT NOT NULL,
  `avg` DECIMAL(10,2) NOT NULL,
  `comment` VARCHAR(50) NULL,
  PRIMARY KEY (`year`,`grade`,`term`,`collegenum`),
  KEY `idx_sa_record_year_collegenum` (`collegenum`),
  CONSTRAINT `fk_sa_record_year_info`
    FOREIGN KEY (`collegenum`) REFERENCES `sa_record_info`(`collegenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sa_reg` (
  `major` VARCHAR(100) NOT NULL,
  `code` VARCHAR(100) NOT NULL,
  `classify` VARCHAR(50) NOT NULL,
  `year` INT NOT NULL,
  `subject` VARCHAR(100) NOT NULL,
  `grade` INT NOT NULL,
  `professor` VARCHAR(100) NOT NULL,
  `numofpeople` INT NOT NULL,
  `note` VARCHAR(50) NULL,
  PRIMARY KEY (`major`,`code`),
  UNIQUE KEY `sa_reg__un` (`classify`,`professor`),
  KEY `idx_sa_reg_curriculum` (`code`,`year`,`subject`,`grade`),
  KEY `idx_sa_reg_college` (`major`),
  CONSTRAINT `fk_sa_reg_college`
    FOREIGN KEY (`major`) REFERENCES `college`(`major`),
  CONSTRAINT `fk_sa_reg_curriculum`
    FOREIGN KEY (`code`,`year`,`subject`,`grade`)
    REFERENCES `sa_curriculum`(`code`,`year`,`subject`,`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 시퀀스/트리거는 MySQL에서 불필요하므로 생성하지 않습니다(AUTO_INCREMENT 적용됨).

SET FOREIGN_KEY_CHECKS = 1;
