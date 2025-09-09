<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티_질문과_답변</title>
    <link rel="stylesheet" href="../css/fonts.css">
    <link rel="stylesheet" href="../community_css/main.style.css">
    <!--css연결-->
    <link rel="stylesheet" href="../css/main_main.style.css">
    <link rel="stylesheet" href="../css/Header.style.css">
    <link rel="stylesheet" href="../css/Footer.style.css">
    <style>
        /* 전체 컨테이너 위치 조정 */
        .container{
            margin: 0 auto;
            width: 1210px;
        }
        hr{
            border: none;
            height: 2px;
            background-color: black;
        }
        a {
            text-decoration: none;
        }
        /* 배너 공간 */
        .banner td {
            height: 60px;
            
        }
        .banner a {
            display:block;
            width:100%;
            height:100%;
            line-height: 60px;
            padding-left:16px;
        }
        .board-select {
            color: #666666; /* 글씨 색 */
            appearance: none;           /* 기본 화살표 제거 (크로스브라우징 위해 vendor prefix) */
            -webkit-appearance: none;
            -moz-appearance: none;

            background: url('../images/btn-sel-open01.png') 
                        no-repeat right 8px center/12px auto;
            padding-right: 24px;  /* 화살표 공간 확보 */
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
        .sidebar a {
		    text-decoration: none;
		    font-size: 15px;
		}
		
		.sidebar a.active {
		    background-color: #4a90e2;
		    color: white;
		}
		
		.sidebar a:hover:not(.active) {
		    background-color: #f0f0f0;
		}
        /* 게시판 아래버튼 부분 끝 */
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
    <main style="background-color:white !important;">
    <div style="background-color: #ECF2F6; height:42px; display:flex; align-items: center; justify-content: center;">
        <div style="width:250px; height:42px;
            position: absolute; 
            transform: translateX(195%);
            display:flex;
            align-items: center;
            ">
                <img src="../images/ico-home.png" alt="홈" style="width:23px; height:20px;">
                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#333333; margin-left:15px;">커뮤니티</span>
                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#071F4B; margin-left:15px;">질문과 답변</span>
        </div>
    </div>
    <div style="" class = "inner">
        <div style="height:50px;"></div>
        <div style="display: flex; gap: 60px;">
            <div style=" width: 210px;">
                <b style="display:block; font-weight: 700; font-size:32px; margin-bottom: 14px;">커뮤니티</b>
                <table class="banner sidebar" style="border-collapse:collapse; width:100%; border-top:2px solid black;">
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9">
                            <a href="/greenUniv/community/community_announcement.do" style="color: black;">공지사항</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="/greenUniv/community/community_newsAndColumn.do" style="color: black;">뉴스 및 칼럼</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="/greenUniv/community/community_employmentInformation.do" style="color: black;">취업정보</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="/greenUniv/community/community_freeDiscussionBoard.do" style="color: black;">자유게시판</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: #5198f9; border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: white; font-weight:300;" class="active">질문과 답변</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="/greenUniv/community/community_referenceLibrary.do" style="color: black;">자료실</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div style="padding-top:9px; width: 930px;">
                <div style="padding-bottom:6px;">
                    <b style="font-weight: 700; font-size:26px;">질문과 답변</b>
                </div>
                <hr style="border:none; border-top: 2px solid;">
                <div style="display: flex; width:100%; margin-top:30px; margin-bottom:20px; justify-content: flex-end;">
                    <form action="/greenUniv/community/comm_QnA_search.do" style="display: flex;">
                        <select name="searchType" id="" class="board-select" style="border: 1px solid #e9e9e9; height:35px; width: 140px; margin-right:4px;padding-left:8px;">
                            <option value="all">전체</option>
                            <option value="title">제목</option>
                            <option value="nick">작성자</option>
                        </select>
                        <input type="text" name="keyword" placeholder="검색어를 입력해 주세요" style="border: 1px solid #e9e9e9; width:242px; height:32px; padding-left:8px; flex:1;"/>
                        <input type="submit" value="검색" style="border: 1px solid #e9e9e9; background-color: #5198f9; width:60px; height:35px; color:white; font-weight: 200;">
                    </form>
                </div>
                <table style="border-collapse: collapse; border:1px solid; width:100%; text-align: center; border:none;">
                    <tr style="height:62px; font-weight: 700; background-color: #fafafa; border-top: 2px solid black; border-bottom: 1px solid #b8b8b8;">
                        <td style="width: 90px;">번호</td>
                        <td style="width: 530px;">제목</td>
                        <td style="">작성자</td>
                        <td style="">작성일</td>
                        <td style="width:140px;">상태</td>
                    </tr>
                    <c:forEach var="commu" items="${dtoList}" varStatus="status">
					    <c:choose>
					        <%-- 답변글 (제목에 RE 포함) --%>
					        <c:when test="${fn:contains(commu.title, 'RE')}">
					            <tr style="height:60px; background-color:#efefef;">
					                <td style="width:80px; border-bottom:1px solid #b8b8b8; background-color:#efefef;">
					                    ${pagenationDTO.currentPageStartNum - status.index}
					                </td>
					                <td style="width:500px; border-bottom:1px solid #b8b8b8; text-align:left; background-color:#efefef;">
					                    <a href="#" style="color:black; display:flex; align-items:center;">
					                        &nbsp;<img src="../images/ico-reply.png" alt="" style="height:10px; width:15px; margin-right:6px;">
					                        ${commu.title}
					                    </a>
					                </td>
					                <td style="border-bottom:1px solid #b8b8b8; background-color:#efefef;">${commu.nick}</td>
					                <td style="border-bottom:1px solid #b8b8b8; background-color:#efefef;">${commu.date}</td>
					                <td style="width:65px; border-bottom:1px solid #b8b8b8; background-color:#efefef;">
					                    <c:choose>
					                        <c:when test="${commu.condition eq '답변완료'}">
					                            <b style="color:#3f9524; font-weight:500;">${commu.condition}</b>
					                        </c:when>
					                        <c:when test="${commu.condition eq '답변대기'}">
					                            <b style="color:red; font-weight:500;">${commu.condition}</b>
					                        </c:when>
					                        <c:otherwise>
					                            ${commu.condition}
					                        </c:otherwise>
					                    </c:choose>
					                </td>
					            </tr>
					        </c:when>
					
					        <%-- 문의글 (제목에 '문의' 포함) --%>
					        <c:when test="${fn:contains(commu.title, '문의')}">
					            <tr style="height:60px;">
					                <td style="width:80px; border-bottom:1px solid #b8b8b8;">
					                    ${pagenationDTO.currentPageStartNum - status.index}
					                </td>
					                <td style="width:500px; border-bottom:1px solid #b8b8b8; text-align:left;">
					                    <a href="#" style="color:black; display:flex; align-items:center;">
					                        &nbsp;<img src="../images/ico-lock.png" alt="" style="margin-right:7px;">
					                        ${commu.title}
					                    </a>
					                </td>
					                <td style="border-bottom:1px solid #b8b8b8;">${commu.nick}</td>
					                <td style="border-bottom:1px solid #b8b8b8;">${commu.date}</td>
					                <td style="width:65px; border-bottom:1px solid #b8b8b8;">
					                    <c:choose>
					                        <c:when test="${commu.condition eq '답변완료'}">
					                            <b style="color:#3f9524; font-weight:500;">${commu.condition}</b>
					                        </c:when>
					                        <c:when test="${commu.condition eq '답변대기'}">
					                            <b style="color:red; font-weight:500;">${commu.condition}</b>
					                        </c:when>
					                        <c:otherwise>
					                            ${commu.condition}
					                        </c:otherwise>
					                    </c:choose>
					                </td>
					            </tr>
					        </c:when>
					
					        <%-- 일반 글 --%>
					        <c:otherwise>
					            <tr style="height:60px;">
					                <td style="width:80px; border-bottom:1px solid #b8b8b8;">
					                    ${pagenationDTO.currentPageStartNum - status.index}
					                </td>
					                <td style="width:500px; border-bottom:1px solid #b8b8b8; text-align:left;">
					                    <a href="#" style="color:black; display:flex; align-items:center;">
					                        ${commu.title}
					                    </a>
					                </td>
					                <td style="border-bottom:1px solid #b8b8b8;">${commu.nick}</td>
					                <td style="border-bottom:1px solid #b8b8b8;">${commu.date}</td>
					                <td style="width:65px; border-bottom:1px solid #b8b8b8;">
					                    <c:choose>
					                        <c:when test="${commu.condition eq '답변완료'}">
					                            <b style="color:#3f9524; font-weight:500;">${commu.condition}</b>
					                        </c:when>
					                        <c:when test="${commu.condition eq '답변대기'}">
					                            <b style="color:red; font-weight:500;">${commu.condition}</b>
					                        </c:when>
					                        <c:otherwise>
					                            ${commu.condition}
					                        </c:otherwise>
					                    </c:choose>
					                </td>
					            </tr>
					        </c:otherwise>
					    </c:choose>
					</c:forEach>
                </table>
                <div style=" height: 100px; margin-top:30px;">
	                <form action="" method="get" style="text-align: center; display:flex; justify-content: center;">
		
		                    <input type="button" onclick="location.href='${pageContext.request.contextPath}/community/community_QnA.do?pg=${pagenationDTO.pageGroupStart}'" class="first-page">
		                    <!-- 이전 페이지: 1페이지일 때 비활성화 -->
							<c:choose>
							  <c:when test="${pagenationDTO.currentPage == 1}">
							    <input type="button" class="prev-page" disabled>
							  </c:when>
							  <c:otherwise>
							    <input type="button"
							           onclick="location.href='${pageContext.request.contextPath}/community/community_QnA.do?pg=${pagenationDTO.currentPage-1}'"
							           class="prev-page">
							  </c:otherwise>
							</c:choose>
							
							<c:forEach var="num" begin="${pagenationDTO.pageGroupStart}" end="${pagenationDTO.pageGroupEnd}">
		                    	<input type="button" onclick="location.href='${pageContext.request.contextPath}/community/community_QnA.do?pg=${num}'" value="${num}" class="${pagenationDTO.currentPage == num ? 'current' : 'off'}" style="">
		                    </c:forEach>
							
							<!-- 다음 페이지: 마지막 페이지일 때 비활성화 -->             
	            			<c:choose>
							  <c:when test="${pagenationDTO.currentPage == pagenationDTO.lastPageNum}">
							    <input type="button" class="next-page" disabled>
							  </c:when>
							  <c:otherwise>
							    <input type="button"
							           onclick="location.href='${pageContext.request.contextPath}/community/community_QnA.do?pg=${pagenationDTO.currentPage+1}'"
							           class="next-page">
							  </c:otherwise>
							</c:choose>
		                    <input type="button" onclick="location.href='${pageContext.request.contextPath}/community/community_QnA.do?pg=${pagenationDTO.pageGroupEnd}'" class="last-page">
	                </form>
                </div>
            </div>
        </div>
    </div>
    </main>
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

</body>
</html>