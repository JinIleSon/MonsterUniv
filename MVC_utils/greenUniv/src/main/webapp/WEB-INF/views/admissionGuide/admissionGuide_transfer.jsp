<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %> 

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>입학안내_편입학</title>
    <link rel="stylesheet" href="/greenUniv/css/fonts.css">
    <link rel="stylesheet" href="/greenUniv/css/admissionGuide_main.style.css">
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

        

        body {
            font-family: 'NotoSansKR', sans-serif;
            font-size: 12px;
           
            /* padding: 10px; */
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
                        <li><a href="/greenUniv/main.do">HOME</a></li>
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
                <a href="/greenUniv/main.do"><img src="/greenUniv/images/mainpage-logo.webp" alt="몬스터대학교 로고" class="logo"/></a>
                
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
        <div style="width:220px; height:42px;
            position: absolute; 
            transform: translateX(224%);
            display:flex;
            align-items: center;
            ">
                <img src="/greenUniv/images/ico-home.png" alt="홈" style="width:23px; height:20px;">
                <img src="/greenUniv/images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#333333; margin-left:15px;">입학안내</span>
                <img src="/greenUniv/images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#071F4B; margin-left:15px;">편입학</span>
        </div>
    </div>
    <!-- 메인 컨테이너 -->
    <div class="inner">
        <div class="container">
            <!-- 사이드바 -->
            <div class="sidebar">
                <div class="sidebar-header">입학안내</div>
                <ul>
                    <li><a href="/greenUniv/admissionGuide/admissionGuide_notice.do" style="color: black !important;">공지사항</a></li>
                    <li><a href="/greenUniv/admissionGuide/admissionGuide_early.do" style="color: black !important;">수시모집</a></li>
                    <li><a href="/greenUniv/admissionGuide/admissionGuide_regular.do" style="color: black !important;">정시모집</a></li>
                    <li><a href="#" class="active">편입학</a></li>
                    <li><a href="/greenUniv/admissionGuide/admissionGuide_counsel.do" style="color: black !important;">입학상담</a></li>
                </ul>
            </div>

            <!-- 메인 컨텐츠 -->
            <div class="main-content">
                <div class="content-header">편입학</div> 

                <div>
                    <div style="display:flex; gap:20px; margin:20px;" >  

                    <!-- 수시(1) 면접고사 사전 공지 -->
                    <a href="#" style="text-decoration:none;">
                    <div style="border:1px solid #ddd; border-radius:8px; width:280px; padding:16px; background:#fff;">
                        <div style="display:inline-block; padding:4px 8px; font-size:12px; font-weight:bold; border-radius:4px; margin-bottom:8px; color:#fff; background:#006600;">
                            편입학
                        </div>
                        <div>
                            <p style="font-size:14px; color:#555; margin:0 0 6px 0;">일반전형, 지역인재전형</p>
                            <h3 style="font-size:16px; font-weight:bold; margin:0;color:black;">편입학 필기고사 안내</h3>
                        </div>
                    </div>
                    </a>

 


                    </div>
                    

                </div>
                </div>
            </div>
        </div>
    </div>
    <div style="height:100px;"></div>
    </main>
</body>
<!--3. 푸터영역-->    
    <footer class="footer">
        <!--상단-->
        <div class="footer-high">
            <div class="footer-high-inner">
                <ul class="footer-high-quicklinks">
                    <li><a href="https://privacy.thewaltdisneycompany.com/ko/">개인정보처리방침</a></li>
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