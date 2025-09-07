<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>대학생활_갤러리</title>
    <link rel="stylesheet" href="../css/fonts.css">
    <link rel="stylesheet" href="../css/collegeLife_main.style.css">
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

        /* 갤러리 스타일 */
        .gallery-section {
            padding: 30px 0;
        }

        .gallery-grid {
            display: grid;
            grid-template-columns: repeat(3, minmax(250px, 300px));
            gap: 20px;
            margin-bottom: 30px;
            
        }

        .gallery-item {
            border: 1px solid #ddd;
            overflow: hidden;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            transition: transform 0.2s ease;
        }

        .gallery-item:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }

        .gallery-image {
            width: 100%;
            height: 150px;
            background-color: #f5f5f5;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #999;
            font-size: 14px;
            overflow: hidden;
        }

        .gallery-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            object-position: center;
        }

        .gallery-info {
            padding: 15px;
            background-color: white;
        }

        .gallery-title {
            font-weight: bold;
            font-size: 14px;
            margin-bottom: 8px;
            color: #333;
        }

        .gallery-meta {
            font-size: 11px;
            color: #666;
            display: flex;
            gap: 10px;
        }

        .gallery-meta span {
            display: flex;
            align-items: center;
            gap: 3px;
        }

        /* 페이지네이션 */
        .pagination {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 10px;
            margin-top: 30px;
        }

        .pagination a {
            padding: 8px 12px;
            text-decoration: none;
            color: #666;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 12px;
        }

        .pagination a.active {
            background-color: #2c5aa0;
            color: white;
            border-color: #2c5aa0;
        }

        .pagination a:hover:not(.active) {
            background-color: #f5f5f5;
        }

        .pagination .nav-btn {
            background-color: white;
            border: 1px solid #ddd;
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
            font-size: 18px;
            font-weight: bold;
            color: #2c5aa0;
        }

        .nav-arrow {
            cursor: pointer;
            font-size: 16px;
            color: #666;
            margin: 0 20px;
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
            font-weight: bold;
        }

        .meal-table td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
            vertical-align: top;
            font-size: 12px;
        }

        .meal-table .meal-type {
            background-color: #f8f9fa;
            font-weight: bold;
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
            background-color: #e3f2fd;
            color: #1976d2;
            padding: 2px 8px;
            border-radius: 10px;
            font-size: 10px;
            margin: 2px;
            border: 1px solid #bbdefb;
        }

        .notice {
            margin-top: 20px;
            padding: 15px;
            background-color: #f8f9fa;
            border-left: 4px solid #2c5aa0;
            font-size: 12px;
            color: #666;
        }

        .notice::before {
            content: "※ ";
            color: #2c5aa0;
            font-weight: bold;
        }
        
        /* 게시판 아래버튼 부분 */
        .first-page{
            background: url('../images/btn-first-page.png') no-repeat center;
            border: 1px #eaeaea solid;
            width: 33px;
            height: 30px;
            margin-right:3px;
        }
        .prev-page{
            background: url('../images/btn-prev-page.png') no-repeat center;
            border: 1px #eaeaea solid;
            margin-right: 15px;
            width: 33px;
            height: 30px;
        }
        .next-page{
            background: url('../images/btn-next-page.png') no-repeat center;
            border: 1px #eaeaea solid;
            margin-left: 15px;
            width: 33px;
            height: 30px;
            margin-right:3px;
        }
        .last-page{
            background: url('../images/btn-last-page.png') no-repeat center;
            border: 1px #eaeaea solid;
            width: 33px;
            height: 30px;
        }
        
        /* 현재 위치 페이지 버튼 */
        .current {
 		    border: 1px #eaeaea solid; 
 		    background-color: #5198f9; 
 		    color: white; 
 		    height: 30px; 
 		    width: 34px; 
 		    margin-right:3px;
		}
        
        /* 다른 페이지 버튼 */
        .off {
        	border: 1px #eaeaea solid; 
        	background-color: #ffffff; 
        	color: #a6a6a6; 
        	height: 30px; 
        	width: 34px; 
        	margin-right:3px;
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
                        <li data-menu="community"><a href="/greenUniv/collegeLife/collegeLife_gallery.do">커뮤니티</a></li>
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
                            <li><a href="/greenUniv/collegeLife/collegeLife_gallery.do">공지사항</a></li>
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
        <div style="width:250px; height:42px;
            position: absolute; 
            transform: translateX(206%);
            display:flex;
            align-items: center;
            ">
                <img src="../images/ico-home.png" alt="홈" style="width:23px; height:20px;">
                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#333333; margin-left:15px;">대학생활</span>
                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#071F4B; margin-left:15px;">갤러리</span>
        </div>
    </div>
    <div class="inner">
        <div class="container">
            <!-- 사이드바 -->
            <div class="sidebar">
                <div class="sidebar-header">대학생활</div>
                <ul>
                    <li><a href="/greenUniv/collegeLife/collegeLife_studentCouncil.do">학생회 소개</a></li>
                    <li><a href="/greenUniv/collegeLife/collegeLife_clubStudy.do">동아리/스터디</a></li>
                    <li><a href="/greenUniv/collegeLife/collegeLife_menuGuide.do">식단안내</a></li>
                    <li><a href="#" class="active">갤러리</a></li>
                </ul>
            </div>
            
            <!-- 메인 컨텐츠 -->
            <div class="main-content" style="">
                <div class="content-header">갤러리</div>
                <div class="gallery-section">
                    <!-- 갤러리 그리드 -->
                    <div class="gallery-grid" style="">
                        <!-- 갤러리 아이템  -->
                        <c:forEach var="gallery" items="${dtoList}" varStatus="status">
                        	<div class="gallery-item" style="">
	                            <div class="gallery-image">
	                                <img src="${gallery.imageroute}" alt="">
	                            </div>
	                            <div class="gallery-info">
	                                <div class="gallery-title">${gallery.title}</div>
	                                <div class="gallery-meta">
	                                    <span>조회수 ${gallery.hits}</span>
	                                    <span>${gallery.where}</span>
	                                    <span>${gallery.regdate}</span>
	                                </div>
	                            </div>
	                            <c:set var="currentPageStartNum" value="${currentPageStartNum-1}" />
                        	</div>
                        </c:forEach>
						<!-- 갤러리 아이템 끝 -->
                  <!-- 페이지네이션 -->
                  
                </div>
            </div>
            <div style=" height: 100px;">
                <form action="" method="get" style="text-align: center; display:flex; justify-content: center;">

                    <input type="button" onclick="location.href='${pageContext.request.contextPath}/collegeLife/collegeLife_gallery.do?pg=${pagenationDTO.pageGroupStart}'" class="first-page">
                    <!-- 이전 페이지: 1페이지일 때 비활성화 -->
					<c:choose>
					  <c:when test="${pagenationDTO.currentPage == 1}">
					    <input type="button" class="prev-page" disabled>
					  </c:when>
					  <c:otherwise>
					    <input type="button"
					           onclick="location.href='${pageContext.request.contextPath}/collegeLife/collegeLife_gallery.do?pg=${pagenationDTO.currentPage-1}'"
					           class="prev-page">
					  </c:otherwise>
					</c:choose>
					
					<c:forEach var="num" begin="${pagenationDTO.pageGroupStart}" end="${pagenationDTO.pageGroupEnd}">
                    	<input type="button" onclick="location.href='${pageContext.request.contextPath}/collegeLife/collegeLife_gallery.do?pg=${num}'" value="${num}" class="${pagenationDTO.currentPage == num ? 'current' : 'off'}" style="">
                    </c:forEach>
					
					<!-- 다음 페이지: 마지막 페이지일 때 비활성화 -->             
           			<c:choose>
					  <c:when test="${pagenationDTO.currentPage == pagenationDTO.lastPageNum}">
					    <input type="button" class="next-page" disabled>
					  </c:when>
					  <c:otherwise>
					    <input type="button"
					           onclick="location.href='${pageContext.request.contextPath}/collegeLife/collegeLife_gallery.do?pg=${pagenationDTO.currentPage+1}'"
					           class="next-page">
					  </c:otherwise>
					</c:choose>
                    <input type="button" onclick="location.href='${pageContext.request.contextPath}/collegeLife/collegeLife_gallery.do?pg=${pagenationDTO.pageGroupEnd}'" class="last-page">
               	 </form>
               </div>
        	</div>
    	</div>
    </div>
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