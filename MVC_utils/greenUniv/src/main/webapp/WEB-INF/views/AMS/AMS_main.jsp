<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>몬스터대학교 학사관리시스템</title>
<!--css연결-->
<link rel="stylesheet" href="/greenUniv/css/Header.style.css">
<link rel="stylesheet" href="/greenUniv/css/Footer.style.css">
</head>
<style>
html, body {
	margin: 0 auto;
	padding: 0;
}

/* main */
main {
	margin: 0 auto;
}

.container {
	width: 100%;
	height: 100%;
	position: relative;
	display: flex;
}

aside a {
	text-decoration: none;
}

aside ol {
	color: #222222;
}

.sidebar {
	background-color: #eaeaea;
	border: 1px solid #C0C0C0;
	display: inline-block;
	width: 269px;
	height: 1300px;
	margin-left: 1px;
}

.menu {
	margin-left: 15px;
}

.sidebar .menu h3 {
	margin: 9px 0px 9px 0px;
}

.sidebar h3 img {
	width: 1em;
	height: 1em;
	vertical-align: middle;
	margin-right: 2px;
}

.sidebar h3 a {
	color: #222222;
}

.sidebar .menu ul {
	list-style: none;
	margin-top: 9px;
	padding: 0px 0px 0px 30px;
}
.sidebar a {
        	text-decoration: none;
}

.sidebar a:visited { 
	color:black; 
}
        
.menu ul li::before {
	content: "•";
	font-size: 0.6em;
	margin-right: 8px;
	position: relative;
	top: -2px;
}

.menu ul li {
	cursor: pointer;
	height: 26px;
	/* height: 30px; */
}

.menu ul li a {
	color: #111111;
}

.menu1 {
	width: 269px;
	height: 102px;
}

.menu2 {
	width: 269px;
	height: 222px;
}

.menu3 {
	width: 269px;
	height: 132px;
}

.menu4 {
	width: 269px;
	height: 102px;
}

.menu5 {
	width: 269px;
	height: 252px;
}

.main-title {
	align-items: center;
	border-bottom: 1px solid #C0C0C0;
	display: flex;
	height: 46px;
	justify-content: space-between;
	margin-top: 20px;
	margin-left: 20px;
	width: 1090px;
}

.main-title p span {
	color: #145074;
}

.sub-title {
	font-size: 14pt;
	width: 1090px;
	height: 24px;
	line-height: 18px;
	margin-left: 20px;
	margin-top: 20px;
	margin-bottom: 5px;
	color: #145074;
	display: flex;
	align-items: center;
	position: relative;
}

.container .sub-title h4 {
	background-image: url("images/bullet-h4.png");
	background-size: 5px;
	background-repeat: no-repeat;
	background-position: left;
	padding-left: 10px;
	margin-right: auto;
}

.container section>div>div {
	margin-left: 20px;
	width: 1090px;
}

.container section>div div table {
	width: 100%;
	height: 99px;
	border-top: 4px solid #8798A3;
	border-collapse: collapse;
	font-size: 13px;
	color: #333333;
	text-align: center;
}

.container section>div div table tr {
	width: 100%;
}

.container section>div div table th {
	border-bottom: 1px solid #A3A3A3;
	background-color: #FAFAFA;
}

.container section>div div table td {
	border-top: 1px solid #D8D8D8;
	border-bottom: 1px solid #E6E6E6;
	text-align: center;
}

.container .tfoot>td {
	background-color: #FAFAFA;
	border-bottom-color: initial;
	border-bottom-color: #A3A3A3;
}
</style>
<body>
	<!--1.헤더영역-->
	<header>
		<!--상단메뉴(HOME/사이트맵/로그인/학생지원)-->
		<div class="topbar" style="">
			<div class="inner" style=" max-width:1365px !important;">
				<div class="log-area" style="">
					<ul>
						<li><a href="/greenUniv/main.do">HOME</a></li>
						<li><a href="/greenUniv/about/about_location.do">사이트맵</a></li>
						<c:choose>
						    <c:when test="${not empty sessionScope.LOGIN_USER}">
						      <li><a href="${pageContext.request.contextPath}/login/logout.do">로그아웃</a></li>
						    </c:when>
						    <c:otherwise>
						      <li><a href="${pageContext.request.contextPath}/login/login.do">로그인</a></li>
						    </c:otherwise>
						</c:choose>
						<li><a href="/greenUniv/studAssist/courseReg/list.do">학생지원</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="mainNav" style="">
			<div class="inner" style="display: flex; justify-content:center; max-width:1600px !important;">
				<!--로고-->
				<div style=" margin-right:630px; margin-left:15px;">
				<a href="/greenUniv/main.do"><img
					src="/greenUniv/images/mainpage-logo.webp" alt="몬스터대학교 로고" class="logo" /></a>
				</div>
				<!--메인메뉴(대학소개/입학안내/대학.대학원/대학생활/커뮤니티)-->
				<div class="menu-area" style="margin-right:30px; flex-shrink:0;">
					<ul class="main-menu">
						<li data-menu="intro"><a
							href="/greenUniv/about/about_greeting.do">대학소개</a></li>
						<li data-menu="admission"><a
							href="/greenUniv/admissionGuide/admissionGuide_notice.do"">입학안내</a></li>
						<li data-menu="college"><a
							href="/greenUniv/college/college_education.do">대학·대학원</a></li>
						<li data-menu="academic"><a
							href="/greenUniv/academicAffairs/academicAffairs_notice.do">학사안내</a></li>
						<li data-menu="life"><a
							href="/greenUniv/collegeLife/collegeLife_studentCouncil.do">대학생활</a></li>
						<li data-menu="community"><a
							href="/greenUniv/community/community_announcement.do">커뮤니티</a></li>
					</ul>
				</div>
			</div>
		</div>



		<!-- 통합 드롭다운 바 -->
		<div class="dropdown-bar" style="">
			<div class="inner" style="">
				<div class="dropdown-section" data-menu="intro" style="">
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
						<li><a
							href="/greenUniv/admissionGuide/admissionGuide_early.do">수시모집</a></li>
						<li><a
							href="/greenUniv/admissionGuide/admissionGuide_regular.do">정시모집</a></li>
						<li><a
							href="/greenUniv/admissionGuide/admissionGuide_transfer.do">편입학</a></li>
						<li><a
							href="/greenUniv/admissionGuide/admissionGuide_counsel.do">입학상담</a></li>
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
						<li><a
							href="/greenUniv/academicAffairs/academicAffairs_schedules.do">학사일정</a></li>
						<li><a
							href="/greenUniv/academicAffairs/academicAffairs_courseRegist.do">수강신청</a></li>
						<li><a
							href="/greenUniv/academicAffairs/academicAffairs_grades.do">성적</a></li>
						<li><a
							href="/greenUniv/academicAffairs/academicAffairs_graduation.do">졸업요건</a></li>
						<li><a
							href="/greenUniv/academicAffairs/academicAffairs_FAQ.do">F&Q</a></li>
					</ul>
				</div>
				<div class="dropdown-section" data-menu="life">
					<h4>대학생활</h4>
					<ul>
						<li><a
							href="/greenUniv/collegeLife/collegeLife_studentCouncil.do">학생회
								소개</a></li>
						<li><a href="/greenUniv/collegeLife/collegeLife_clubStudy.do">동아리</a></li>
						<li><a href="/greenUniv/collegeLife/collegeLife_menuGuide.do">학생식당</a></li>
						<li><a href="/greenUniv/collegeLife/collegeLife_gallery.do">갤러리</a></li>
					</ul>
				</div>
				<div class="dropdown-section" data-menu="community">
					<h4>커뮤니티</h4>
					<ul style="">
						<li><a href="/greenUniv/community/community_announcement.do">공지사항</a></li>
						<li><a href="/greenUniv/community/community_newsAndColumn.do">뉴스
								및 칼럼</a></li>
						<li><a
							href="/greenUniv/community/community_freeDiscussionBoard.do">자유게시판</a></li>
						<li><a href="/greenUniv/community/community_QnA.do">Q&amp;A</a></li>
						<li style="position: relative;"><a
							href="/greenUniv/community/community_referenceLibrary.do">자료실</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	<main style="background-color: white !important;">
		
		<div class="container" style="margin-left: 0; display:flex; justify-content:center;">
			<aside>
				<div>
					<nav class="sidebar">
						<div class="menu menu1">
							<h3>
								<img src='/greenUniv/images/ico-admin-setting.png'><a href="#">환경설정</a>
							</h3>
							<ul>
								<li class="menu-item"><a href="#">기본환경정보</a></li>
								<li class="menu-item"><a href="#">약관관리</a></li>
							</ul>
						</div>
						<div class="menu menu2">
							<h3>
								<img src='/greenUniv/images/ico-admin-academic.png'><a href="#">학사운영</a>
							</h3>
							<ul>
								<li class="menu-item"><a href="/greenUniv/AMS/AMS_educationOperation/list.do">교육 운영 현황</a></li>
			                    <li class="menu-item"><a href="#">학년별 학생 현황</a></li>
			                    <li class="menu-item"><a href="#">학과별 학생 현황</a></li>
			                    <li class="menu-item"><a href="/greenUniv/AMS/AMS_lectureList.do">강의 목록</a></li>
			                    <li class="menu-item"><a href="/greenUniv/AMS/AMS_lectureRegist.do">강의 등록</a></li>
			                    <li class="menu-item"><a href="/greenUniv/AMS/AMS_course.do">수강 현황</a></li>
							</ul>
						</div>
						<div class="menu menu3">
							<h3>
								<img src='/greenUniv/images/ico-admin-persons.png'><a href="#">학생
									목록 및 등록</a>
							</h3>
							<ul>
								<li class="menu-item"><a href="/greenUniv/AMS/AMS_studentList.do">학생 목록 및 등록</a></li>
								<li class="menu-item"><a href="/greenUniv/professor/list.do">교수 목록</a></li>
                    			<li class="menu-item"><a href="/greenUniv/professor/register.do">교수 등록</a></li>
								<li class="menu-item"><a href="#">임직원 목록 및 등록</a></li>
							</ul>
						</div>
						<div class="menu menu4">
							<h3>
								<img src='/greenUniv/images/ico-admin-college.png'><a href="#">인사관리</a>
							</h3>
							<ul>
								<li class="menu-item"><a href="/greenUniv/collegeAndDepartment/list.do">대학 및 학과 목록</a></li>
                   				<li class="menu-item"><a href="/greenUniv/collegeAndDepartment/register.do">대학 및 학과 등록</a></li>
							</ul>
						</div>
						<div class="menu menu5">
							<h3>
								<img src='/greenUniv/images/ico-admin-board.png'><a href="#">게시판관리</a>
							</h3>
							<ul>
								<li class="menu-item"><a href="/greenUniv/admissionGuide/admissionGuide_notice.do">입학안내 공지사항</a></li>
			                    <li class="menu-item"><a href="/greenUniv/academicAffairs/academicAffairs_notice.do">학사안내 공지사항</a></li>
			                    <li class="menu-item"><a href="/greenUniv/community/community_announcement.do">커뮤니티 공지사항</a></li>
			                    <li class="menu-item"><a href="/greenUniv/admissionGuide/admissionGuide_counsel.do">입학상담</a></li>
			                    <li class="menu-item"><a href="/greenUniv/community/community_QnA.do">질문 및 답변</a></li>
			                    <li class="menu-item"><a href="/greenUniv/collegeLife/collegeLife_menuGuide.do">식단안내</a></li>
			                    <li class="menu-item"><a href="/greenUniv/community/community_referenceLibrary.do">자료실</a></li>
							</ul>
						</div>
					</nav>
				</div>
			</aside>
			<section>
				<div style="width: 1130px; ">
					<div class="main-title">
						<h3>운영현황 메인</h3>
						<p style="font-size: 14px;">
							HOME &nbsp; > &nbsp; <span>운영현황 메인</span>
						</p>
					</div>
					<div class="sub-title">
						<h4>대학 운영 현황</h4>
					</div>
					<div>
						<table style="height: 99px;">
							<colgroup>
								<col style="width: 12.5%;">
								<col style="width: 12.5%;">
								<col style="width: 12.5%;">
								<col style="width: 12.5%;">
								<col style="width: 12.5%;">
								<col style="width: 12.5%;">
								<col style="width: 12.5%;">
								<col style="width: 12.5%;">
							</colgroup>
							<tr class="thead" style="height: 45px;">
								<th>개설학과</th>
								<th>개설강좌</th>
								<th>전체교수</th>
								<th>임직원</th>
								<th>학생</th>
								<th>휴학생</th>
								<th>대학원생</th>
								<th>졸업생</th>
							</tr>
							<c:forEach var="COL" items="${dtoList10}" varStatus="st">
								<tr style="height: 52px;">
									<td style="">${COL.countDept}</td>
									<td style="">${dtoList11[st.index].countLname}</td>
									<td style="">${dtoList12[st.index].countPnum}</td>
									<td style="">${dtoList13[st.index].countUser}</td>
									<td style="">${dtoList14[st.index].countStuAll}</td>
									<td style="">${dtoList15[st.index].countStuLeave}</td>
									<td style="">${dtoList16[st.index].countStuGradSchool}</td>
									<td style="">${dtoList17[st.index].countStuGraduation}</td>
								</tr>
							</c:forEach>
						</table>
					</div>
					<div class="sub-title">
						<h4>교육 운영 현황</h4>
						<a href="/greenUniv/AMS/AMS_educationOperation/list.do"><img src="/greenUniv/images/bg-viewmore01.png" alt=""></a>
					</div>
					<div>
						<table style="height: 307px;">
							<colgroup>
								<col style="width: 150.8px;">
								<col style="width: 98.55px;">
								<col style="width: 150.8px;">
								<col style="width: 98.55px;">
								<col style="width: 98.55px;">
								<col style="width: 98.55px;">
								<col style="width: 98.55px;">
								<col style="width: 98.55px;">
							</colgroup>
							<tr class="thead">
								<th>학과</th>
								<th>과목코드</th>
								<th>과목명</th>
								<th>학년</th>
								<th>담당교수</th>
								<th>구분</th>
								<th>학점</th>
								<th>강의장</th>
								<th>수강인원</th>
								<th>수강률</th>
							</tr>
							<c:forEach var="RUN" items="${dtoList9}" varStatus="status">
								<tr style="height: 52px;">
									<td style="">${RUN.openMaj}</td>
									<td style="">${RUN.deptCode}</td>
									<td style="">${RUN.lname}</td>
									<td style="">${RUN.year}</td>
									<td style="">${RUN.prof}</td>
									<td style="">${RUN.compDiv}</td>
									<td style="">${RUN.grade}</td>
									<td style="">${RUN.room}</td>
									<td style="">${RUN.nowNum}/${RUN.maxNum}</td>
									<td style="">${RUN.percent}%</td>
								</tr>
							</c:forEach>
						</table>
					</div>
					<div style="display: flex; height: 350px;">
						<div style="width: 534.09px; margin-right: auto;">
							<div class="sub-title" style="width: 100%; margin-left: 0;">
								<h4>학년별 학생 현황</h4>
							</div>
							<div>
								<table style="height: 300px;">
									<tr class="thead" style="height: 45px;">
										<th>학년</th>
										<th>재학생</th>
										<th>휴학생</th>
										<th>전체</th>
									</tr>
									<c:set var="totalIn" value="0" />
									<c:set var="totalLeave" value="0" />
									<c:set var="totalAll" value="0" />
									<c:forEach var="StuEgrade" items="${dtoList6}" varStatus="st">
										<c:set var="totalIn"
											value="${totalIn + dtoList8[st.index].egradeCount}" />
										<c:set var="totalLeave"
											value="${totalLeave + dtoList7[st.index].egradeCount}" />
										<c:set var="totalAll"
											value="${totalAll + StuEgrade.egradeCount}" />
										<tr style="height: 52px;">
											<td style="width: 133px;">${StuEgrade.egrade}학년</td>
											<td style="width: 133px;"><a href="#"
												style="color: black; text-decoration: none;">${dtoList8[st.index].egradeCount}</a></td>
											<td style="width: 133px;">${dtoList7[st.index].egradeCount}</td>
											<td>${StuEgrade.egradeCount}</td>
										</tr>
									</c:forEach>
									<tr class="tfoot" style="height: 45px;">
										<td>총합</td>
										<td>${totalIn}</td>
										<td>${totalLeave}</td>
										<td>${totalAll}</td>
									</tr>
								</table>
							</div>
						</div>
						<div style="width: 534.09px;">
							<div class="sub-title" style="width: 100%; margin-left: 0;">
								<h4>학과별 학생 현황</h4>
								<a href="/greenUniv/collegeAndDepartment/list.do"><img src="/greenUniv/images/bg-viewmore01.png" alt=""></a>
							</div>
							<div>
								<table style="height: 300px;">
									<tr class="thead" style="height: 45px;">
										<th>학과</th>
										<th>재학생</th>
										<th>휴학생</th>
										<th>전체</th>
									</tr>
									<c:set var="totalIn" value="0" />
									<c:set var="totalLeave" value="0" />
									<c:set var="totalAll" value="0" />
									<c:forEach var="StuEdept" items="${dtoList3}" varStatus="st">
										<c:set var="totalIn"
											value="${totalIn + dtoList5[st.index].edeptCount}" />
										<c:set var="totalLeave"
											value="${totalLeave + dtoList4[st.index].edeptCount}" />
										<c:set var="totalAll"
											value="${totalAll + StuEdept.edeptCount}" />
										<tr style="height: 52px;">
											<td style="width: 133px;">${StuEdept.edept}</td>
											<td style="width: 133px;"><a href="#"
												style="color: black; text-decoration: none;">${dtoList5[st.index].edeptCount}</a></td>
											<td style="width: 133px;">${dtoList4[st.index].edeptCount}</td>
											<td>${StuEdept.edeptCount}</td>
										</tr>
									</c:forEach>
									<tr class="tfoot" style="height: 45px;">
										<td>총합</td>
										<td>${totalIn}</td>
										<td>${totalLeave}</td>
										<td>${totalAll}</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div style="display: flex; height: 362px;">
						<div style="width: 534.09px; margin-right: auto;">
							<div class="sub-title" style="width: 100%; margin-left: 0;">
								<h4>학사안내 공지사항</h4>
								<a href="/greenUniv/academicAffairs/academicAffairs_notice.do"><img src="/greenUniv/images/bg-viewmore01.png" alt=""></a>
							</div>
							<div>
								<table style="height: 307px; font-weight: 350;">
									<tr class="thead" style="height: 45px;">
										<th>번호</th>
										<th>제목</th>
										<th>작성자</th>
										<th>작성일</th>
									</tr>
									<c:forEach var="AA" items="${dtoList1}" varStatus="status">
										<tr style="height: 52px;">
											<td style="width: 73px;">${AA.id}</td>
											<td style="width: 233px;"><a href="#"
												style="color: black; text-decoration: none;">${AA.title}</a></td>
											<td style="width: 113px;">${AA.nick}</td>
											<td>${AA.date}</td>
										</tr>
									</c:forEach>
								</table>
							</div>
						</div>
						<div style="width: 534.09px;">
							<div class="sub-title" style="width: 100%; margin-left: 0;">
								<h4>입학상담</h4>
								<a href="/greenUniv/admissionGuide/admissionGuide_counsel.do"><img src="/greenUniv/images/bg-viewmore01.png" alt=""></a>
							</div>
							<div>
								<table style="height: 307px; font-weight: 350;">
									<tr class="thead" style="height: 45px;">
										<th>번호</th>
										<th>제목</th>
										<th>작성일</th>
										<th>상태</th>
									</tr>
									<c:forEach var="ADM" items="${dtoList2}" varStatus="status">
										<tr style="height: 52px;">
											<td style="width: 73px;">${ADM.adm_id}</td>
											<td style="width: 233px;"><a href="#"
												style="color: black; text-decoration: none;">${ADM.adm_title}</a></td>
											<td style="width: 113px;">${ADM.adm_date}</td>
											<td
												style="color:${ADM.adm_condition eq '답변대기' ? '#CD3631' : '#207918'};
											">${ADM.adm_condition}</td>
										</tr>
									</c:forEach>
								</table>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</main>
	<!--3. 푸터영역-->    
    <footer class="footer" style="margin-top:50px;">
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
</body>
</html>