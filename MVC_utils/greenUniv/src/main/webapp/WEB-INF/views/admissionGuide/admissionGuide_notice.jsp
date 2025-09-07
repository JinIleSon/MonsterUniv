<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %> 

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>입학안내_공지사항</title>
    <link rel="stylesheet" href="../css/fonts.css">
    <link rel="stylesheet" href="../css/admissionGuide_main.style.css">
    <!--css연결-->
    <link rel="stylesheet" href="../css/main_main.style.css">
    <link rel="stylesheet" href="../css/Header.style.css">
    <link rel="stylesheet" href="../css/Footer.style.css">
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

        .search-section {
            background-color: white;
            padding: 20px;
            border-bottom: 2px solid black;
            text-align: right;
        }

        .search-box {
            display: inline-flex;
            align-items: center;
            gap: 10px;
        }

        .search-box select {
            padding: 8px 12px;
            border: 1px solid #ddd;
            font-size: 12px;
            border-radius: 3px;
        }

        .search-box input {
            padding: 8px 12px;
            border: 1px solid #ddd;
            font-size: 12px;
            width: 200px;
            border-radius: 3px;
        }

        .search-btn {
            background-color: #4a90e2;
            color: white;
            border: none;
            padding: 9px 20px;
            font-size: 12px;
            cursor: pointer;
            border-radius: 3px;
        }

        .search-btn:hover {
            background-color: #3a7bc8;
        }

        /* 테이블 */
        .table-container {
            background-color: white;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 12px;
        }

        th {
            background-color: #f8f9fa;
            
            padding: 12px;
            text-align: center;
            font-weight: bold;
            color: #333;
        }

        td {
            border-top: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }

        .title-cell {
            text-align: left;
            padding-left: 20px;
        }

        .title-cell a {
            color: #333;
            text-decoration: none;
        }

        .title-cell a:hover {
            text-decoration: underline;
            color: #4a90e2;
        }

        /* 페이지네이션 */
        .pagination {
            text-align: center;
            padding: 30px;
            background-color: white;
        }

        .pagination a {
            display: inline-block;
            padding: 8px 12px;
            margin: 0 2px;
            text-decoration: none;
            color: #333;
            border: 1px solid #ddd;
            font-size: 12px;
            border-radius: 3px;
        }

        .pagination a:hover:not(.current):not(.disabled) {
            background-color: #f0f0f0;
        }

        .pagination .current {
            background-color: #4a90e2;
            color: white;
            border-color: #4a90e2;
        }

        .pagination .disabled {
            color: #ccc;
            cursor: not-allowed;
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
                        <li><a href="#">학생지원</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="mainNav">
            <div class="inner">
                <!--로고-->
                <a href="/greenUniv/main.jsp"><img src="../images/mainpage-logo.webp" alt="몬스터대학교 로고" class="logo"/></a>
                
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
    
    <div style="background-color: #ECF2F6; height:42px; display:flex; align-items: center; justify-content: center;">
        <div style="width:220px; height:42px;
            position: absolute; 
            transform: translateX(221%);
            display:flex;
            align-items: center;
            ">
                <img src="../images/ico-home.png" alt="홈" style="width:23px; height:20px;">
                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#333333; margin-left:15px;">입학안내</span>
                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#071F4B; margin-left:15px;">공지사항</span>
        </div>
    </div>
    <!-- 메인 컨테이너 -->
    <div class="inner">
        <div class="container">
            <!-- 사이드바 -->
            <div class="sidebar" style="">
            	<div style=""></div>
                <div class="sidebar-header" style="">입학안내</div>
                
                <ul>
                    <li><a href="#" class="active">공지사항</a></li>
                    <li><a href="/greenUniv/admissionGuide/admissionGuide_early.do" style="color: black !important;">수시모집</a></li>
                    <li><a href="/greenUniv/admissionGuide/admissionGuide_regular.do" style="color: black !important;">정시모집</a></li>
                    <li><a href="/greenUniv/admissionGuide/admissionGuide_transfer.do" style="color: black !important;">편입학</a></li>
                    <li><a href="/greenUniv/admissionGuide/admissionGuide_counsel.do" style="color: black !important;">입학상담</a></li>
                </ul>
            </div>

            <!-- 메인 컨텐츠 -->
            <div class="main-content">
                <div class="content-header">공지사항</div>
                
                <div class="search-section">
                    <div class="search-box">
                        <select>
                            <option>전체</option>
                        </select>
                        <input type="text" placeholder="검색어를 입력해 주세요">
                        <button class="search-btn">검색</button>
                    </div>
                </div>

                <div class="table-container">
                    <table>
                        <thead>
                            <tr>
                                <th width="60">번호</th>
                                <th>제목</th>
                                <th width="80">작성자</th>
                                <th width="80">작성일</th>
                                <th width="60">조회</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>3</td>
                                <td class="title-cell">
                                    <img src="../images/ico-new01.gif" alt="new">
                                    <a href="#">2025학년도 신입학 3차 추가모집 모집요강 및 모집...</a>
                                </td>
                                <td>담당자</td>
                                <td>24.04.09</td>
                                <td>160</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td class="title-cell">
                                    <img src="../images/ico-new01.gif" alt="new">
                                    <a href="#">2025학년도 신입학 2차 추가모집 모집요강 및 모집...</a>
                                </td>
                                <td>담당자</td>
                                <td>24.04.09</td>
                                <td>160</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td class="title-cell">
                                    2025학년도 신입학 추가모집 모집요강 및 모집일정 공지
                                </td>
                                <td>담당자</td>
                                <td>24.04.09</td>
                                <td>160</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="pagination">
                    <a href="#" class="disabled">«</a>
                    <a href="#" class="disabled">‹</a>
                    <a href="#" class="current">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">›</a>
                    <a href="#">»</a>
                </div>
            </div>
        </div>
    </div>
    <div style="height:100px;"></div>
</body>
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
                <img src="../images/mainpage-logo.webp" alt="몬스터대학교 로고" class="logo"/>
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