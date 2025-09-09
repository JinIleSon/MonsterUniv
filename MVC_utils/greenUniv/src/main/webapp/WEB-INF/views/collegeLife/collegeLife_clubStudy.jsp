<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>대학생활_동아리/스터디</title>
    <link rel="stylesheet" href="/greenUniv/css/fonts.css">
    <link rel="stylesheet" href="/greenUniv/css/collegeLife_main.style.css">
    <!--css연결-->
    <link rel="stylesheet" href="/greenUniv/css/main_main.style.css">
    <link rel="stylesheet" href="/greenUniv/css/Header.style.css">
    <link rel="stylesheet" href="/greenUniv/css/Footer.style.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        @font-face {
            font-family: 'NotoSansKR';
            src: url('font/NotoSansKR-Regular.woff2') format('woff2');
        }
        body {
            font-family: 'NotoSansKR', sans-serif;
            font-size: 12px;
            
        }

        .container {
            display: flex;
            gap: 50px; 
            padding-top: 35px;
        }
       
        /* 메인 컨텐츠 */
        .main-content {
            flex: 1;
            padding: 0;
        }
        .content-header {
            background-color: white;
            border-bottom: 2px solid black;
            padding: 20px 20px 20px 0;
            font-size: 21px; 
            font-weight: bold;
            height: 65px;
            display: flex;
            align-items: center;
        }

        /* 식단표 스타일 */
        .meal-section {
            padding: 30px 0;
        }

        .date-navigation {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 30px;
            font-size: 25px;
            font-weight: bold;
            color: #2c5aa0;
        }

        .nav-arrow {
            cursor: pointer;
            font-size: 16px;
            color: #666;
            margin: 0px 50px;
        }

        .meal-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .meal-table th {
            background-color: #2c5aa0;
            color: white;
            padding: 12px;
            text-align: center;
            font-size: 13px;
        }

        .meal-table td {
            border: 1px solid #ddd;
            border-bottom: 1px solid #6d9ce4;
            padding: 10px;
            text-align: center;
            vertical-align: top;
            font-size: 12px;
        }

        .meal-table .meal-type {
            background-color: #f8f9fa;
            width: 80px;
        }

        .meal-content {
            line-height: 1.5;
            min-height: 80px;
        }

        .menu-item {
            display: block;
            margin: 2px 0;
        }

        .price-tag {
            display: inline-block;
            background-color: white;
            color: green;
            padding: 2px 8px;
            font-size: 12px;
            margin: 2px;
            border: 1px solid green;
        }

        .notice {
            font-size: 12px;
            color: #666;
        }

        main > :first-child{ margin-top: 0; }
		main {background-color: white;}
    </style>
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
                        <li><a href="/greenUniv/studAssist/courseReg/list.do">학생지원</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="mainNav">
            <div class="inner">
                <!--로고-->
                <a href="/greenUniv/main.jsp"><img src="/greenUniv/images/mainpage-logo.webp" alt="몬스터대학교 로고" class="logo"/></a>
                
                <!--메인메뉴(대학소개/입학안내/대학.대학원/대학생활/커뮤니티)-->
                <div class="menu-area">
                    <ul class="main-menu">
                        <li data-menu="intro"><a href="/greenUniv/about/about_greeting.do">대학소개</a></li>
                        <li data-menu="admission"><a href="/greenUniv/admissionGuide/admissionGuide_notice.do"">입학안내</a></li>
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
                        <ul style="">
                            <li><a href="/greenUniv/community/community_announcement.do">공지사항</a></li>
                            <li><a href="/greenUniv/community/community_newsAndColumn.do">뉴스 및 칼럼</a></li>
                            <li><a href="/greenUniv/community/community_freeDiscussionBoard.do">자유게시판</a></li>
                            <li><a href="/greenUniv/community/community_QnA.do">Q&amp;A</a></li>
                            <li style="position: relative;"><a href="/greenUniv/community/community_referenceLibrary.do">자료실</a></li>
                        </ul>
                    </div>
                </div>
            </div>  
        </div>
    </header>
    <main style="background-color:white !important;">
    <div style="background-color: #ECF2F6; height:42px; display:flex; align-items: center; justify-content: center;">
        <div style="width:250px; height:42px;
            position: absolute; 
            transform: translateX(188%);
            display:flex;
            align-items: center;
            ">
                <img src="/greenUniv/images/ico-home.png" alt="홈" style="width:23px; height:20px;">
                <img src="/greenUniv/images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#333333; margin-left:15px;">대학생활</span>
                <img src="/greenUniv/images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#071F4B; margin-left:15px;">동아리/스터디</span>
        </div>
    </div>
    <div class="inner">
        <div class="container">
            <!-- 사이드바 -->
            <div class="sidebar">
                <div class="sidebar-header">대학생활</div>
                <ul>
                    <li><a href="/greenUniv/collegeLife/collegeLife_studentCouncil.do" style="color: black !important;">학생회 소개</a></li>
                    <li><a href="#"  class="active">동아리/스터디</a></li>
                    <li><a href="/greenUniv/collegeLife/collegeLife_menuGuide.do" style="color: black !important;">식단안내</a></li>
                    <li><a href="/greenUniv/collegeLife/collegeLife_gallery.do" style="color: black !important;">갤러리</a></li>
                </ul>
            </div>
            <!-- 메인 컨텐츠 -->
            <div class="main-content">
                <div class="content-header">동아리/스터디</div>
                
                <div class="meal-section">

 

    <!-- 동아리 목록 -->
    <div style="display:grid; grid-template-columns:repeat(2, 1fr); gap:20px;">

        <!-- 동아리 카드 -->
        <div style="display:flex; background:#fff; border:1px solid #ddd; border-radius:8px; overflow:hidden;">
            <img src="/greenUniv/images/ironbar.jpg" alt="IronBar" style="width:150px; height:100px; object-fit:cover;">
            <div style="padding:10px;">
                <h3 style="margin:0 0 5px 0; font-size:16px; font-weight:bold;">IronBar(IB)</h3>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 전문성 </b>맨몸운동</p>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 동아리방 위치 </b></p>
            </div>
        </div>

        <div style="display:flex; background:#fff; border:1px solid #ddd; border-radius:8px; overflow:hidden;">
            <img src="/greenUniv/images/wave.jpg" alt="WAVE" style="width:150px; height:100px; object-fit:cover;">
            <div style="padding:10px;">
                <h3 style="margin:0 0 5px 0; font-size:16px; font-weight:bold;">WAVE</h3>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 전문성 </b>서핑</p>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 동아리방 위치 </b></p>
            </div>
        </div>


        <!-- 동아리(1)-->
        <div style="display:flex; background:#fff; border:1px solid #ddd; border-radius:8px; overflow:hidden;">
            <img src="/greenUniv/images/greenneomer.jpg" alt="그린너머" style="width:150px; height:100px; object-fit:cover;">
            <div style="padding:10px;">
                <h3 style="margin:0 0 5px 0; font-size:16px; font-weight:bold;">그린너머</h3>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 전문성 </b>지속가능발전</p>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 동아리방 위치 </b>위치</p>
            </div>
        </div>

         <!-- 동아리(2)-->    
        <div style="display:flex; background:#fff; border:1px solid #ddd; border-radius:8px; overflow:hidden;">
            <img src="/greenUniv/images/nohitno.jpg" alt="노히트노런" style="width:150px; height:100px; object-fit:cover;">
            <div style="padding:10px;">
                <h3 style="margin:0 0 5px 0; font-size:16px; font-weight:bold;">노히트노런</h3>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 전문성 </b>야구관람</p>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 동아리방 위치 </b>위치</p>
            </div>
        </div>
        
        <!-- 동아리(3)-->
        <div style="display:flex; background:#fff; border:1px solid #ddd; border-radius:8px; overflow:hidden;">
            <img src="/greenUniv/images/sfc.jpg" alt="SFC" style="width:150px; height:100px; object-fit:cover;">
            <div style="padding:10px;">
                <h3 style="margin:0 0 5px 0; font-size:16px; font-weight:bold;">SFC</h3>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 전문성 </b>기독교</p>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 동아리방 위치 </b>위치 </p>
            </div>
        </div>

         <!-- 동아리(4)-->    
        <div style="display:flex; background:#fff; border:1px solid #ddd; border-radius:8px; overflow:hidden;">
            <img src="/greenUniv/images/live.jpg" alt="라이브" style="width:150px; height:100px; object-fit:cover;">
            <div style="padding:10px;">
                <h3 style="margin:0 0 5px 0; font-size:16px; font-weight:bold;">라이브</h3>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 전문성 </b>음악</p>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 동아리방 위치 </b></p>
            </div>
        </div>

    </div>
</div>
                    
                </div>
            </div>
        </div>
    </div>
    </main>
</body>
<!--3. 푸터영역-->    
    <footer class="footer">
        <!--상단-->
        <div class="footer-high">
            <div class="footer-high-inner">
                <ul class="footer-high-quicklinks">
                    <li><a href="#">개인정보처리방침</a></li>
                    <li><a href="/greenUniv/AMS/AMS_main.do">통합정보시스템</a></li>
                    <li><a href="/greenUniv/academicAffairs/academicAffairs_schedules.do">학사일정</a></li>
                    <li><a href="/greenUniv/college/college_humanities.do">주요인원 연락처</a></li>
                    <li><a href="/greenUniv/academicAffairs/academicAffairs_notice.do">교내공지사항</a></li>
                </ul>
            </div>
        </div>

        <!--하단-->
        <div class="footer-low">
            <div class="footer-low-inner">
                <div class="footer-logo">
                    <img src="/greenUniv/images/mainpage-logo.webp" alt="몬스터대학교 로고" class="logo"/>
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

</html>