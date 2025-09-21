<p align="center">
  <img src="./images/github_readme_logo.jpg" alt="Monster University hero" width="200" />
</p>

# Monster University Website

### 메인
![메인 스크린샷](https://github.com/user-attachments/assets/ed7a1dcd-aa04-4880-b52c-c55ed160d378)

### 로그인
![로그인](https://github.com/user-attachments/assets/4cbdd60f-77e8-417e-8213-06b9f1cba353)

## 통합정보시스템
![통합정보시스템](https://github.com/user-attachments/assets/9370ae3f-f78b-4846-8a84-8c6f4d7e0afb)

## 게시판
![게시판](https://github.com/user-attachments/assets/92a387f3-e4bf-4fd5-8722-2d0b4b461508)


### ▶ 시연 영상
- [YouTube 보러가기](https://youtu.be/UTVsuxLt-o4) | [Notion 버전](https://www.notion.so/MonsterUniv-JSP-Servlet-26cba5b0d4908016a2badf706197922b#26cba5b0d49080819ca1e01c27f63992)

> **HTML/CSS/JS + JSP/Servlet**로 구현한 “몬스터 대학교” 공식 웹사이트.  
> 입학·학사·학과 소개부터 공지/커뮤니티까지, 실제 대학 포털처럼 **빠르고 직관적인 UX**로 구성했습니다.

## 🚀 기술 스택

- **Frontend**: HTML, CSS, JavaScript  
- **Backend**: Java, JSP, Servlet  
- **Database**: MySQL, Oracle  
- **Deployment**: Tomcat (On-Prem / VM), AWS EC2+RDS, 또는 컨테이너(K8s)  
- **Design**: Figma

---

## 아키텍처/ERD
![Architecture](https://github.com/user-attachments/assets/894004c3-7aaf-4f08-99f5-38f09a96a8b1)

## ✨ 주요 기능

- 📚 **학과/교과과정 페이지**: 전공별 커리큘럼·강의계획서 열람  
- 🗞 **공지·소식**: 학사공지/행사/채용 등 카테고리별 피드  
- 🧑‍🎓 **학생 서비스**: 로그인/회원가입, 마이페이지, 게시판/댓글  
- 🔎 **전역 검색**: 학과·과목·게시글 키워드 검색  

---

## 맡은 업무

1. 팀장 (프로젝트 총괄 및 핵심 개발자)
- 프로젝트 일정 관리 및 팀원 업무 분배
- MVC 아키텍처 및 DB 설계 주도
- 개발 속도가 지연될 경우 직접 주요 기능 구현 (DB 연동, 게시판 페이징/검색 등)
- 코드 리뷰 및 품질 관리로 팀 전체 완성도 향상

2. 데이터베이스(DB) 설계
- ERD(Entity Relationship Diagram) 작성 및 테이블/관계 정의

3. MVC 아키텍처 설계
- JSP 기반 MVC 패턴 적용
- Controller/Service/DAO 레이어를 분리하여 유지보수성 향상

4. 대학 포털 시스템 DB 연동
- 학사, 수업, 게시판 등 서브시스템과 메인 DB 연동
- JDBC를 통한 안정적인 데이터 처리 구현

5. 게시판 기능 고도화
- 페이징 처리(페이지네이션) 구현으로 대량 데이터 조회 속도 개선
- 다중 조건 검색 기능 추가(제목, 작성자, 내용 등)

## 개선 예정

- 비밀번호 해시(BCrypt), 예외 로깅 고도화
- 본 프로젝트는 JSP/Servlet 기반 MVC 아키텍처로 시작하여, 웹 개발의 기본 동작 원리를 직접 구현했습니다. 이후 Spring MVC로 리팩토링을 진행하여 유지보수성과 확장성을 강화할 예정입니다.
