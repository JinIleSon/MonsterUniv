<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>학사관리시스템 - 대학 및 학과 등록</title>
    <!--css연결-->
	<link rel="stylesheet" href="/greenUniv/css/Header.style.css">
	<link rel="stylesheet" href="/greenUniv/css/Footer.style.css">
    <style>
        @font-face {
            font-family: 'NotoSansKR-Light';
            src: url('/greenUniv/font/NotoSansKR-Light.otf') format('opentype');
            font-weight: 350;
            font-style: DemiLight;
        }
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'NotoSansKR-Light';
        }
        .inner {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        /* ================================
        Header
        ================================ */
        header {
            width: 100%;
            border-bottom: 1px solid #ddd;
        }

        /* ---------- 상단 유틸바 ---------- */
        .topbar {
            background-color: #1e2732;
            margin: 0;
        }
        .topbar .inner {
            height: 27px;
            display: flex;
            align-items: center;
        }

        /* 로그인/회원 등 오른쪽 메뉴 */
        .log-area {
            margin: 0;
            padding: 0;
            list-style: none;
            display: flex;
            gap: 14px;
            margin-left: auto;
        }
        .log-area ul {
            display: flex;
            justify-content: flex-end;
            gap: 15px;
            list-style: none;
            margin: 0;
            padding: 0;
        }
        .log-area a {
            text-decoration: none;
            font-size: 12px;
            color: #b8c2cf;
            transition: color 0.2s ease;
        }
        .log-area a:hover {
            color: #fff;
        }

        /* ---------- 로고 ---------- */
        .logo {
            height: 77px;
            display: block;
        }

        /* ---------- 메인 네비게이션 ---------- */
        .mainNav .inner {
            height: 77px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        /* 메뉴 그룹 */
        .menu-area {
            display: flex;
            justify-content: flex-end;
        }
        .menu-area ul {
            display: flex;
            align-items: center;
            gap: 30px;
            list-style: none;
            margin: 0;
            padding: 0;
        }
        .menu-area a {
            text-decoration: none;
            font-size: 18px;
            color: #333;
            transition: color 0.2s ease;
        }
        .menu-area a:hover {
            color: rgb(80, 101, 133);
        }
        
        /* ================================
        Container
        ================================ */
        .container {
            display: flex;
            width: 1400px;
            margin: 0 auto;
            min-height: 600px;
        }
        
        /* ================================
        Sidebar
        ================================ */
        .sidebar {
            background-color: #eaeaea;
            border: 1px solid #C0C0C0;
            display: inline-block;
            width: 269px;
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
        .sidebar .menu ul {
            list-style: none; 
            margin-top: 9px;
            padding: 0px 0px 0px 30px;
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
        }
        .menu1 { width: 269px; height: 102px; } 
        .menu2 { width: 269px; height: 222px; } 
        .menu3 { width: 269px; height: 132px; } 
        .menu4 { width: 269px; height: 102px; } 
        .menu5 { width: 269px; height: 252px; }
        
        .sidebar a {
        	text-decoration: none;
        }
        
        .sidebar a:visited { 
        	color:black; 
        }
        
        /* ================================
        Main Content
        ================================ */
        .main-content {
            flex: 1;
            padding: 0;
        }
        .main-title {
            align-items: center;
            border-bottom: 1px solid #C0C0C0;
            display: flex;
            height: 46px;
            justify-content: space-between;
            margin-top: 20px;
            margin-left: 20px;
            padding-bottom: 10px;
            width: 1090px;
        }
        .main-title p span {
            color: #145074;
        }
        
        /* 폼 섹션 스타일 */
        .form-container {
            padding: 30px 20px;
        }
        .form-section {
            margin-bottom: 40px;
        }
        .form-section h4 {
            background-color: #f5f5f5;
            padding: 12px 15px;
            border-left: 4px solid #1A528E;
            margin-bottom: 20px;
            font-size: 16px;
            color: #333;
        }
        .form-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        .form-table td {
            border: 1px solid #ddd;
            padding: 12px;
            font-size: 13px;
        }
        .form-table td:first-child {
            background-color: #f9f9f9;
            width: 150px;
            font-weight: bold;
            color: #555;
        }
        .form-table input[type="text"], 
        .form-table input[type="date"], 
        .form-table select {
            width: 250px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 13px;
        }
        .form-table textarea {
            width: 100%;
            min-height: 120px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
            resize: vertical;
            font-size: 13px;
        }
        .form-table input[type="file"] {
            font-size: 13px;
        }
        .submit-btn {
            background-color: #1A528E;
            color: white;
            border: none;
            padding: 10px 30px;
            font-size: 14px;
            cursor: pointer;
            border-radius: 4px;
            margin-top: 10px;
        }
        .submit-btn:hover {
            background-color: #357abd;
        }
        .center-cell {
            text-align: right;
            padding: 15px !important;
        }
        
        /* ================================
        Footer
        ================================ */
        :root {
            --footer-bg: #141b23;
            --footer-top-bg: #1e2732;
            --footer-text: #b8c2cf;
            --footer-muted: #8893a1;
            --footer-line: rgba(255,255,255,0.2);
            --footer-link: #d7dee8;
            --footer-link-hover: white;
        }

        .footer { background: var(--footer-bg); color: var(--footer-text); }

        .footer-high { background: var(--footer-top-bg); }
        .footer-high-inner {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        .footer-high-quicklinks {
            display: flex; justify-content: center; gap: 32px;
            list-style: none; margin: 0; padding: 12px 0;
            position: relative;
        }
        .footer-high-quicklinks li {
            position: relative; padding: 6px 0 8px;
        }
        .footer-high-quicklinks li + li::before {
            content: ""; position: absolute; left: -16px; top: 50%;
            transform: translateY(-50%);
            width: 1px; height: 16px; background: var(--footer-line);
        }
        .footer-high-quicklinks a {
            color: var(--footer-link); text-decoration: none; font-size: 14px;
        }
        .footer-high-quicklinks a:hover { color: var(--footer-link-hover); }

        .footer-low { border-top: 1px solid var(--footer-line); }
        .footer-low-inner {
            max-width: 1200px;
            margin: 0 auto;
            padding: 24px 20px 36px;
            display: grid;
            grid-template-columns: 160px 1fr 220px;
            gap: 24px;
            align-items: start;
        }

        .footer-logo img {
            display: block; width: 140px; height: auto; opacity: .85;
        }

        .footer-info { line-height: 1.7; }
        .footer-info .footer-uniname {
            margin: 0 0 6px; color: #e5ecf5; font-weight: 600; font-size: 15px;
        }
        .footer-info p {
            margin: 0 0 6px; color: var(--footer-text); font-size: 13px;
        }
        .footer-info .copy {
            margin-top: 10px; color: var(--footer-muted); font-size: 12px;
        }

        .footer-select {
            margin-left: auto; display: flex; justify-content: flex-end;
        }
        .footer-select select {
            width: 100%; max-width: 220px; height: 36px;
            border: 0; outline: none;
            background: #111820; color: #dfe6f1;
            padding: 0 12px; border-radius: 4px;
            box-shadow: inset 0 0 0 1px rgba(255,255,255,0.15);
        }
        .footer-select select:hover {
            box-shadow: inset 0 0 0 1px rgba(255,255,255,0.25);
            cursor: pointer;
        }

        .sr-only {
            position: absolute; width: 1px; height: 1px;
            padding: 0; margin: -1px;
            overflow: hidden; clip: rect(0,0,0,0);
            white-space: nowrap; border: 0;
        }
    </style>
</head>
<body>
    <!--1.헤더영역-->
	<header>
		<!--상단메뉴(HOME/사이트맵/로그인/학생지원)-->
		<div class="topbar" style="">
			<div class="inner" style=" max-width:1400px !important;">
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
			<div class="inner" style="display: flex; justify-content:center; max-width:1700px !important;">
				<!--로고-->
				<div style=" margin-right:665px; margin-left:15px;">
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
    
    <div class="container">
        <nav class="sidebar">
            <div class="menu menu1">
                <h3><img src='/greenUniv/images/ico-admin-setting.png'>환경설정</h3>
                <ul>
                    <li class="menu-item">기본환경정보</li>
                    <li class="menu-item">약관관리</li>
                </ul>
            </div>
            <div class="menu menu2">
                <h3><img src='/greenUniv/images/ico-admin-academic.png'>학사운영</h3>
                <ul>
                    <li class="menu-item">교육 운영 현황</li>
                    <li class="menu-item">학년별 학생 현황</li>
                    <li class="menu-item">학과별 학생 현황</li>
                    <li class="menu-item">강의 목록</li>
                    <li class="menu-item">강의 등록</li>
                    <li class="menu-item">수강 현황</li>
                </ul>
            </div>
            <div class="menu menu3">
                <h3><img src='/greenUniv/images/ico-admin-persons.png'>인사관리</h3>
                <ul>
                    <li class="menu-item">학생 목록 및 등록</li>
                    <li class="menu-item"><a href="/greenUniv/professor/list.do">교수 목록</a></li>
                    <li class="menu-item"><a href="/greenUniv/professor/register.do">교수 등록</a></li>
                    <li class="menu-item">임직원 목록 및 등록</li>
                </ul>
            </div>
            <div class="menu menu4">
                <h3><img src='/greenUniv/images/ico-admin-college.png'>대학 및 학과</h3>
                <ul>
                    <li class="menu-item"><a href="/greenUniv/collegeAndDepartment/list.do">대학 및 학과 목록</a></li>
                    <li class="menu-item"><a href="/greenUniv/collegeAndDepartment/register.do">대학 및 학과 등록</a></li>
                </ul>
            </div>
            <div class="menu menu5">
                <h3><img src='/greenUniv/images/ico-admin-board.png'>게시판관리</h3>
                <ul>
                    <li class="menu-item">입학안내 공지사항</li>
                    <li class="menu-item">학사안내 공지사항</li>
                    <li class="menu-item">커뮤니티 공지사항</li>
                    <li class="menu-item">입학상담</li>
                    <li class="menu-item">질문 및 답변</li>
                    <li class="menu-item">식단안내</li>
                    <li class="menu-item">자료실</li>
                </ul>
            </div>
        </nav>

        <main class="main-content">
            <div class="main-title">
                <h3>대학 및 학과 등록</h3>
                <p>대학 및 학과 &nbsp; > &nbsp; <span>대학 및 학과 등록</span></p>
            </div>
            
            <div class="form-container">
                <!-- 대학 정보 입력 섹션 -->
                <div class="form-section">
                    <h4>대학 정보 입력</h4>
                    <form action="/greenUniv/collegeAndDepartment/register.do" method="post" id="collForm">
                        <input type="hidden" name="formType" value="college">
                        <table class="form-table">
                            <tr>
                                <td>대학명</td>
                                <td><input type="text" name="colname" id="colname" placeholder="예) 인문사회대학"></td>
                            </tr>
                            <tr>
                                <td>대학 영문명</td>
                                <td><input type="text" name="coleng" id="coleng" placeholder="예) College of Humanities"></td>
                            </tr>
                            <tr>
                                <td rowspan="3">대학소개</td>
                                <td><input type="text" name="coltit" id="coltit" placeholder="대학 소개 제목 입력" style="width: 100%;"></td>
                            </tr>
                            <tr>
                                <td><textarea name="colcont" id="colcont" placeholder="대학 소개 내용 입력"></textarea></td>
                            </tr>
                            <tr>
                                <td><input type="file" name="uniFile"></td>
                            </tr>
                            <tr>
                                <td colspan="2" class="center-cell">
                                    <input type="submit" class="submit-btn" value="등록">
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>

                <!-- 학과 정보 입력 섹션 -->
                <div class="form-section">
                    <h4>학과 정보 입력</h4>
                    <form action="#" method="post" id="deptForm">
                    	<input type="hidden" name="formType" value="dept">
                        <table class="form-table">
                            <tr>
                                <td>학과번호</td>
                                <td>고유 2자리숫자 자동생성</td>
                                <td>단과대학</td>
                                <td>
                                    <select name="unitcol">
                                        <option value="default">선택</option>
                                        <c:forEach var="dept" items="${deptList}">
                                        	<option value="${dept}">${dept}</option>	
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>학과명</td>
                                <td><input type="text" name="deptname" id="deptname" placeholder="학과명 입력"></td>
                                <td>영문명</td>
                                <td><input type="text" name="engname" id="engname" placeholder="학과 공식 영문 이름"></td>
                            </tr>
                            <tr>
                                <td>설립연도</td>
                                <td><input type="date" name="estyear" id="estyear"></td>
                                <td>학과장</td>
                                <td>
                                    <select name="dean">
                                        <option value="default">선택</option>
                                        <option value="김교수">김교수</option>
                                        <option value="이교수">이교수</option>
                                        <option value="박교수">박교수</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>학과 연락처</td>
                                <td><input type="text" name="depttel" id="depttel" placeholder="학과 연락처 입력"></td>
                                <td>학과 사무실</td>
                                <td><input type="text" name="deptoff" id="deptoff" placeholder="인문관 3층 306호"></td>
                            </tr>
                            <tr>
                                <td colspan="4" class="center-cell">
                                    <input type="submit" class="submit-btn" value="등록">
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </main>
    </div>
    
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
                    <img src=/greenUniv/images/mainpage-logo.webp" alt="몬스터대학교 로고" class="logo"/>
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