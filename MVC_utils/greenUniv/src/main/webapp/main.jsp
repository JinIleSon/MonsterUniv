<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>   

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MainPage</title>

    <!--css연결-->
    <link rel="stylesheet" href="css/main_main.style.css">
    <link rel="stylesheet" href="css/Header.style.css">
    <link rel="stylesheet" href="css/Footer.style.css">
    <!--부트스트랩 연결-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/fonts.css">
</head>
<body>
    <!--1.헤더영역-->
    <header>
        <!--상단메뉴(HOME/사이트맵/로그인/학생지원)-->
        <div class="topbar">
            <div class="inner">
                <div class="log-area">
                    <ul>
                        <li><a href="/greenUniv/main.jsp">HOME</a></li>
                        <li><a href="/greenUniv/about/about_location.do">사이트맵</a></li>
                        <li><a href="/greenUniv/login/login.do">로그인</a></li>
<<<<<<< HEAD
                        <li><a href="#">학생지원</a></li>
=======
                        <li><a href="/greenUniv/studAssist/courseReg/list.do">학생지원</a></li>
>>>>>>> origin/test
                    </ul>
                </div>
            </div>
        </div>

        <div class="mainNav">
            <div class="inner">
                <!--로고-->
                <a href="/greenUniv/main.jsp"><img src="images/mainpage-logo.webp" alt="몬스터대학교 로고" class="logo"/></a>
                
                <!--메인메뉴(대학소개/입학안내/대학.대학원/대학생활/커뮤니티)-->
                <div class="menu-area">
                    <ul class="main-menu">
                        <li data-menu="intro"><a href="/greenUniv/about/about_greeting.do">대학소개</a></li>
                        <li data-menu="admission"><a href="/greenUniv/admissionGuide/admissionGuide_notice.do">입학안내</a></li>
                        <li data-menu="college"><a href="/greenUniv/college/college_education.do">대학·대학원</a></li>
                        <li data-menu="academic"><a href="/greenUniv/academicAffairs/academicAffairs_notice.do">학사안내</a></li>
                        <li data-menu="life"><a href="/greenUniv/collegeLife/collegeLife_studentCouncil.do">대학생활</a></li>
                        <li data-menu="community"><a href="/greenUniv/community/community_announcement.do">커뮤니티</a></li>
                    </ul>
                </div>
            </div>    
        </div>

        <!-- 통합 드롭다운 바 -->
        <div class="dropdown-bar">
            <div class="inner">
                <div class="dropdown-section" data-menu="intro">
                    <h4>대학소개</h4>
                    <ul>
                        <li><a href="/greenUniv/about/about_greeting.do">총장인사</a></li>
                        <li><a href="/greenUniv/about/about_philosophy.do">교육이념</a></li>
                        <li><a href="/greenUniv/about/about_history.do">연혁</a></li>
                        <li><a href="/greenUniv/about/about_organization.do">조직도</a></li>
                        <li><a href="/greenUniv/about/about_location.do">찾아오시는길</a></li>
                    </ul>
                </div>
                <div class="dropdown-section" data-menu="admission">
                    <h4>입학안내</h4>
                    <ul>
                        <li><a href="/greenUniv/admissionGuide/admissionGuide_early.do">수시모집</a></li>
                        <li><a href="/greenUniv/admissionGuide/admissionGuide_regular.do">정시모집</a></li>
                        <li><a href="/greenUniv/admissionGuide/admissionGuide_transfer.do">편입학</a></li>
                        <li><a href="/greenUniv/admissionGuide/admissionGuide_counsel.do">입학상담</a></li>
                    </ul>
                </div>
                <div class="dropdown-section" data-menu="college">
                    <h4>대학·대학원</h4>
                    <ul>
                        <li><a href="/greenUniv/college/college_humanities.do">단과대학</a></li>
                        <li><a href="/greenUniv/college/college_graduateSchool.do">대학원</a></li>
                    </ul>
                </div>
                <div class="dropdown-section" data-menu="academic">
                    <h4>학사안내</h4>
                    <ul>
                        <li><a href="/greenUniv/academicAffairs/academicAffairs_schedules.do">학사일정</a></li>
                        <li><a href="/greenUniv/academicAffairs/academicAffairs_courseRegist.do">수강신청</a></li>
                        <li><a href="/greenUniv/academicAffairs/academicAffairs_grades.do">성적</a></li>
                        <li><a href="/greenUniv/academicAffairs/academicAffairs_graduation.do">졸업요건</a></li>
                        <li><a href="/greenUniv/academicAffairs/academicAffairs_FAQ.do">F&Q</a></li>
                    </ul>
                </div>
                <div class="dropdown-section" data-menu="life">
                    <h4>대학생활</h4>
                    <ul>
                        <li><a href="/greenUniv/collegeLife/collegeLife_studentCouncil.do">학생회 소개</a></li>
                        <li><a href="/greenUniv/collegeLife/collegeLife_clubStudy.do">동아리</a></li>
                        <li><a href="/greenUniv/collegeLife/collegeLife_menuGuide.do">학생식당</a></li>
                        <li><a href="/greenUniv/collegeLife/collegeLife_gallery.do">갤러리</a></li>
                    </ul>
                </div>
                <div class="dropdown-section" data-menu="community">
                    <h4>커뮤니티</h4>
                    <ul>
                        <li><a href="/greenUniv/community/community_announcement.do">공지사항</a></li>
                        <li><a href="/greenUniv/community/community_newsAndColumn.do">뉴스 및 칼럼</a></li>
                        <li><a href="/greenUniv/community/community_freeDiscussionBoard.do">자유게시판</a></li>
                        <li><a href="/greenUniv/community/community_QnA.do">Q&amp;A</a></li>
                        <li><a href="/greenUniv/community/community_referenceLibrary.do">자료실</a></li>
                    </ul>
                </div>
            </div>    
        </div>
    </header>

    <!--2. 메인영역-->
    <main>
        <!--(1) 히어로/슬라이드-->
        <section class="hero">
            <div class="inner">
                <!-- Bootstrap Carousel -->
                <div id="heroCarousel"
                    class="hero_slider carousel slide"
                    data-bs-ride="carousel"
                    data-bs-interval="4000"
                    data-bs-pause="hover">
                
                <!-- 인디케이터(점) -->
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="슬라이드 1"></button>
                    <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="1" aria-label="슬라이드 2"></button>
                    <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="2" aria-label="슬라이드 3"></button>
                    <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="3" aria-label="슬라이드 4"></button>
                    <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="4" aria-label="슬라이드 5"></button>
                </div>

                <!-- 슬라이드 아이템 -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                    <img src="images/hero_img1.png" class="d-block w-100" alt="대학 대표사진 1">
                    </div>
                    <div class="carousel-item">
                    <img src="images/hero_img5.jpg" class="d-block w-100" alt="대학 대표사진 2">
                    </div>
                    <div class="carousel-item">
                    <img src="images/hero_img4.jpg" class="d-block w-100" alt="대학 대표사진 3">
                    </div>
                    <div class="carousel-item">
                    <img src="images/hero_img3.jpg" class="d-block w-100" alt="대학 대표사진 4">
                    </div>
                    <div class="carousel-item">
                    <img src="images/hero_img2.jpg" class="d-block w-100" alt="대학 대표사진 5">
                    </div>
                </div>

                <!-- 좌우 화살표 -->
                <button class="carousel-control-prev" type="button" data-bs-target="#heroCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Prev</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#heroCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
                </div>

                <!-- 가운데 버튼 (네가 쓰던 것 유지) -->
                <button class="hero_cta">학과소개 바로가기</button>
            </div>
        </section>


        <!--(2) 공지 보드 2단-->
        <section class="boards">
            <div class="inner boards_grid">
                <article class="board board--notice">
                    <header class="board_header">
                        <h3 class="board_title">학사안내</h3>
                        <button class="board_more">+</button>
                    </header>
                    <ul class="board_list">
                        <li>교과목 폐지 및 신설안내</li>
                        <li>2019-2학기 진로취업 프로그램 설계를 위한 학생 대상...</li>
                        <li>제8회 KNDA 학술논문상 공모</li>
                    </ul>
                </article>

                <article class="board board_announce">
                    <header class="board_header">
                        <h3 class="board_title">공지사항</h3>
                        <button class="board_more" aria-label="더보기">+</button>
                    </header>
                    <ul class="board_list">
                        <li>교과목 폐지 및 신설안내</li>
                        <li>2019-2학기 진로취업 프로그램 설계를 위한 학생 대상...</li>
                        <li>제8회 KNDA 학술논문상 공모</li>
                    </ul>
                </article>
            </div>
        </section>

        <!--(3) 포토 갤러리-->
        <section class="gallery">
            <div class="inner">
                <header class="section_header">
                    <h3>PHOTO GALLERY</h3>
                    <button class="section_more">+</button>
                </header>
                <div class="gallery_grid">
                    <img src="images/uni_inside_img1.jpg" alt="photo gallery 1"/>
                    <img src="images/uni_inside_img2.jpg" alt="photo gallery 2"/>
                    <img src="images/uni_inside_img3.webp" alt="photo gallery 3"/>
                    <img src="images/uni_inside_img4.jpg" alt="photo gallery 4"/>
                </div>
            </div>
        </section>

        <!--(4) 동아리 HELPER 플래너-->
        <section class="helper-cta">
            <div class="inner helper-cta_box">
                <h3>동아리 HELPER</h3>
                <p>공무원 시험 준비반을 운용함으로써 정치행정학과에서 공무원 시험을 준비하는 학생들에게<br>
                인터넷 강의, 교재를 제공하고 스터디 그룹의 활동을 도와주고 있습니다.</p>
                <a class="btn" href="#">자세히보기</a>
            </div>
        </section>

        <!--(5) 뉴스 & 스마트링크 2단-->
        <section class="news-smart">
            <div class="inner news-smart_grid">
                <article class="news board">
                    <header class="board_header">
                        <h3 class="board_title">뉴스 및 칼럼</h3>
                        <button class="board_more">+</button>
                    </header>
                    <ul class="board_list">
                        <li>교과목 폐지 및 신설안내</li>
                        <li>2019-2학기 진로취업 프로그램 설계를 위한 학생 대상...</li>
                        <li>제8회 KNDA 학술논문상 공모</li>
                    </ul>
                </article>

                <aside class="smart-link"> 
                    <h3 class="smart-link_title">SMART LINK</h3>
                    <nav class="smart-link_grid">
                        <a href="/greenUniv/admissionGuide/admissionGuide_notice.do" class="bg-main-link">
                            <img src="images/bg-main-link01.png" alt="입학안내 아이콘">
                            <span>입학안내</span>
                        </a>
                        <a href="/greenUniv/academicAffairs/academicAffairs_schedules.do" class="bg-main-link">
                            <img src="images/bg-main-link02.png" alt="학사일정 아이콘">
                            <span>학사일정</span>
                        </a>
                        <a href="/greenUniv/collegeLife/collegeLife_studentCouncil.do" class="bg-main-link">
                            <img src="images/bg-main-link03.png" alt="학생회 아이콘">
                            <span>학생회</span>
                        </a>
                        <a href="#" class="bg-main-link">
                            <img src="images/bg-main-link04.png" alt="교과과정 아이콘">
                            <span>교과과정</span>
                        </a>
                        <a href="/greenUniv/community/community_employmentInformation.do" class="bg-main-link">
                            <img src="images/bg-main-link05.png" alt="취업안내 아이콘">
                            <span>취업안내</span>
                        </a>
                    </nav>
                </aside>
            </div>
        </section>
    </main>

    <!--3. 푸터영역-->    
    <footer class="footer">
        <!--상단-->
        <div class="footer-high">
            <div class="footer-high-inner">
                <ul class="footer-high-quicklinks">
                    <li><a href="#">개인정보처리방침</a></li>
                    <li><a href="#">통합정보시스템</a></li>
                    <li><a href="/greenUniv/academicAffairs/academicAffairs_schedules.do">학사일정</a></li>
                    <li><a href="#">주요인원 연락처</a></li>
                    <li><a href="/greenUniv/academicAffairs/academicAffairs_notice.do">교내공지사항</a></li>
                </ul>
            </div>
        </div>

        <!--하단-->
        <div class="footer-low">
            <div class="footer-low-inner">
                <div class="footer-logo">
                    <img src="images/mainpage-logo.webp" alt="몬스터대학교 로고" class="logo"/>
                </div>

                <div class="footer-info">
                    <p class="footer-uniname">몬스터대학교</p>
                    <p>
                        [12345] 부산광역시 부산진구 부전대로 123 몬스터대학교 /
                        대표전화 : 051-123-1000 / 입학안내 : 051-123-1302
                        팩스 : 051-123-3333
                    </p>
                     <p class="copy">copyright ©Monster University All rights reserved.</p>
                </div>

                <div class="footer-select">
                    <label for="site-select" class="sr-only">주요사이트</label>
                    <select id="site-select" onchange="if(this.value) window.open(this.value, '_blank')">
                        <option value="">주요사이트</option>
                        <option value="https://www.moe.go.kr/">교육부</option>
                        <option value="https://www.kocca.kr/">콘텐츠진흥원</option>
                        <option value="https://www.nrf.re.kr/">연구재단</option>
                    </select>    
                </div>
            </div>
        </div>
    </footer>

    <!--부트스트랩 연결-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>