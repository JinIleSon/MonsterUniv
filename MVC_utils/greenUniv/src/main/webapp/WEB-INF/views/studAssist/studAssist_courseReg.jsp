<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>학생지원_수강신청</title>
    <link rel="stylesheet" href="/greenUniv/css/fonts.css">
    <link rel="stylesheet" href="/greenUniv/studAssist_css/main.style.css">
    <style>

       
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
                        <li><a href="#">HOME</a></li>
                        <li><a href="#">사이트맵</a></li>
                        <li><a href="#">로그인</a></li>
                        <li><a href="#">학생지원</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="mainNav">
            <div class="inner">
                <!--로고-->
                <img src="/greenUniv/images/mainpage-logo.webp" alt="몬스터대학교 로고" class="logo"/>

                <!--메인메뉴(대학소개/입학안내/대학.대학원/대학생활/커뮤니티)-->
                <div class="menu-area">
                    <ul>
                        <li><a href="#">대학소개</a></li>
                        <li><a href="#">입학안내</a></li>
                        <li><a href="#">대학·대학원</a></li>
                        <li><a href="#">학사안내</a></li>
                        <li><a href="#">대학생활</a></li>
                        <li style="position: relative;">
                            <a href="#">커뮤니티</a>
                            <div style="width:197.25px; height:42px;
                              position: absolute; top: 205%;
                              transform: translateX(-65%);
                              display:flex;
                              align-items: center;
                              ">
                                <img src="/greenUniv/images/ico-home.png" alt="홈" style="width:23px; height:20px;">
                                <img src="/greenUniv/images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                                <span style="font-weight: 350; font-size:14px; color:#333333; margin-left:15px;">학생지원</span>
                                <img src="/greenUniv/images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                                <span style="font-weight: 350; font-size:14px; color:#071F4B; margin-left:15px;">수강신청</span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>     
        </div>   
    </header>
    <div style="background-color: #ECF2F6; height:42px; display:flex; align-items: center; justify-content: center;">
    </div>
    <div style="height: auto;" class = "inner">
        <div style="height:50px;"></div>
        <div style="display: flex; gap: 60px;">
            <div style=" width: 210px;">
                <b style="display:block; font-weight: 700; font-size:32px; margin-bottom: 14px;">학생지원</b>
                <table class="banner" style="border-collapse:collapse; width:100%; border-top:2px solid black;">
                    <tr>
                        <td style="background-color: #5198f9; border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: white; font-weight: 300;">수강신청</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: black;">수강신청내역</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: black;">교과과정</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: black;">성적조회</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: black;">학적</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div style="padding-top:9px; width: 930px;">
                <div style="padding-bottom:6px;">
                    <b style="font-weight: 700; font-size:26px;">수강신청</b>
                </div>
                <hr style="border:none; border-top: 2px solid;">
                <div style="display: flex; width:100%; margin-top:30px; margin-bottom:20px; justify-content: flex-end;">
                    <form action="/greenUniv/studAssist/courseReg/search.do" style="display: flex;">
                        <select name="searchType" id="" class="board-select" style="border: 1px solid #e9e9e9; height:35px; width: 140px; margin-right:4px;padding-left:8px;">
=======
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>학생지원_수강신청</title>
<link rel="stylesheet" href="/greenUniv/css/fonts.css">
<link rel="stylesheet" href="/greenUniv/studAssist_css/main.style.css">
<style>
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
						<li><a href="#">HOME</a></li>
						<li><a href="#">사이트맵</a></li>
						<li><a href="#">로그인</a></li>
						<li><a href="#">학생지원</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="mainNav">
			<div class="inner">
				<!--로고-->
				<img src="/greenUniv/images/mainpage-logo.webp" alt="몬스터대학교 로고"
					class="logo" />

				<!--메인메뉴(대학소개/입학안내/대학.대학원/대학생활/커뮤니티)-->
				<div class="menu-area">
					<ul>
						<li><a href="#">대학소개</a></li>
						<li><a href="#">입학안내</a></li>
						<li><a href="#">대학·대학원</a></li>
						<li><a href="#">학사안내</a></li>
						<li><a href="#">대학생활</a></li>
						<li style="position: relative;"><a href="#">커뮤니티</a>
							<div
								style="width: 197.25px; height: 42px; position: absolute; top: 205%; transform: translateX(-65%); display: flex; align-items: center;">
								<img src="/greenUniv/images/ico-home.png" alt="홈"
									style="width: 23px; height: 20px;"> <img
									src="/greenUniv/images/bg-path-arrow.png" alt="화살표"
									style="width: 8px; height: 13px; margin-left: 15px;"> <span
									style="font-weight: 350; font-size: 14px; color: #333333; margin-left: 15px;">학생지원</span>
								<img src="/greenUniv/images/bg-path-arrow.png" alt="화살표"
									style="width: 8px; height: 13px; margin-left: 15px;"> <span
									style="font-weight: 350; font-size: 14px; color: #071F4B; margin-left: 15px;">수강신청</span>
							</div></li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	<div
		style="background-color: #ECF2F6; height: 42px; display: flex; align-items: center; justify-content: center;">
	</div>
	<div style="height: auto;" class="inner">
		<div style="height: 50px;"></div>
		<div style="display: flex; gap: 60px;">
			<div style="width: 210px;">
				<b
					style="display: block; font-weight: 700; font-size: 32px; margin-bottom: 14px;">학생지원</b>
				<table class="banner"
					style="border-collapse: collapse; width: 100%; border-top: 2px solid black;">
					<tr>
						<td
							style="background-color: #5198f9; border-bottom: 1px solid #e9e9e9;">
							<a href="#" style="color: white; font-weight: 300;">수강신청</a>
						</td>
					</tr>
					<tr>
						<td style="border-bottom: 1px solid #e9e9e9;"><a href="#"
							style="color: black;">수강신청내역</a></td>
					</tr>
					<tr>
						<td style="border-bottom: 1px solid #e9e9e9;"><a href="#"
							style="color: black;">교과과정</a></td>
					</tr>
					<tr>
						<td style="border-bottom: 1px solid #e9e9e9;"><a href="#"
							style="color: black;">성적조회</a></td>
					</tr>
					<tr>
						<td style="border-bottom: 1px solid #e9e9e9;"><a href="#"
							style="color: black;">학적</a></td>
					</tr>
				</table>
			</div>
			<div style="padding-top: 9px; width: 930px;">
				<div style="padding-bottom: 6px;">
					<b style="font-weight: 700; font-size: 26px;">수강신청</b>
				</div>
				<hr style="border: none; border-top: 2px solid;">
				<div
					style="display: flex; width: 100%; margin-top: 30px; margin-bottom: 20px; justify-content: flex-end;">
					<form action="/greenUniv/studAssist/courseReg/search.do"
						style="display: flex;">
						<select name="searchType" id="" class="board-select"
							style="border: 1px solid #e9e9e9; height: 35px; width: 140px; margin-right: 4px; padding-left: 8px;">
>>>>>>> origin/test
							<option value="" disabled selected>선택</option>
							<option value="openMaj">개설학과</option>
							<option value="compDiv">구분</option>
							<option value="year">학년</option>
							<option value="deptCode">코드</option>
							<option value="lname">과목명</option>
							<option value="grade">학점</option>
							<option value="prof">담당교수</option>
<<<<<<< HEAD
                        </select>
                        <input type="text" name="keyword" placeholder="검색어를 입력해 주세요" style="border: 1px solid #e9e9e9; width:242px; height:32px; flex:1;padding-left:8px;"/>
                        <input type="submit" value="검색" style="border: 1px solid #e9e9e9; background-color: #5198f9; width:60px; height:35px; color:white; font-weight: 200;">
                    </form>
                </div>
                <table style="border-collapse: collapse; border:1px solid; width:100%; text-align: center; border:none;">
                    <tr style="height:60px; font-weight: 700; background-color: #fafafa; border-top: 2px solid black; border-bottom: 1px solid #b8b8b8;">
                        <td style="width: 130px;">개설학과</td>
                        <td style="width: 80px;">구분</td>
                        <td style="width: 53px;">학년</td>
                        <td style="width: 85px;">코드</td>
                        <td style="width: 180px;">과목명</td>
                        <td style="width: 53px;">학점</td>
                        <td style="width: 80px;">담당교수</td>
                        <td style="width: 80px;">수강인원</td>
                        <td style="width: 70px;">비고</td>
                        <td style="width: 80px;">신청</td>
                    </tr>
                    <c:forEach var="lecture" items="${ dtoList }">
	                    <tr style="height:70px; border-bottom: 1px solid #b8b8b8;">
	                        <td>${ lecture.openMaj }</td>
	                        <td>${ lecture.compDiv }</td>
	                        <td>${ lecture.year }</td>
	                        <td>${ lecture.deptCode }</td>
	                        <td>${ lecture.lname }</td>
	                        <td>${ lecture.grade }</td>
	                        <td>${ lecture.prof }</td>
	                        <td>${ lecture.nowNum }/${ lecture.maxNum }</td>
	                        <td></td>
	                        <form action="/greenUniv/studAssist/courseReg/register.do?deptCode=${ lecture.deptCode }" method="get">
	                            <td>
	                                <input type="button" value="신청" style="background-color: #132f73; color: white; font-weight: 300; height:30px; border:none;">
	                            </td>
	                        </form>
	                    </tr>
                    </c:forEach>
                </table>
                <div style=" height: 100px; margin-top:30px;">
                <form action="" method="get" style="text-align: center; display:flex; justify-content: center;">
                    <input type="button" class="first-page" onclick="window.location.href='/greenUniv/studAssist/courseReg/list.do?pg=1';">
                    <input type="button" class="prev-page" onclick="window.location.href='/greenUniv/studAssist/courseReg/list.do?pg=${ pagenationDTO.currentPage > 1 ? pagenationDTO.currentPage - 1 : 1 }';">
					<c:forEach var="num" begin="${ pagenationDTO.pageGroupStart }" end="${ pagenationDTO.pageGroupEnd }">
                    	<input type="button" value="${ num }" class="${ pagenationDTO.currentPage == num ? 'current' : 'off' }" onclick="window.location.href='/greenUniv/studAssist/courseReg/list.do?pg=${ num }';">
					</c:forEach>
                    <input type="button" class="next-page" onclick="window.location.href='/greenUniv/studAssist/courseReg/list.do?pg=${ pagenationDTO.currentPage < pagenationDTO.lastPageNum ? pagenationDTO.currentPage + 1 : pagenationDTO.lastPageNum }';">
                    <input type="button" class="last-page" onclick="window.location.href='/greenUniv/studAssist/courseReg/list.do?pg=${ pagenationDTO.lastPageNum }';">
                </form>
                </div>
            </div>
        </div>
    </div>
    <!--3. 푸터영역-->    
    <footer class="footer">
        <!--상단-->
        <div class="footer-high">
            <div class="footer-high-inner">
                <ul class="footer-high-quicklinks">
                    <li><a href="#">개인정보처리방침</a></li>
                    <li><a href="#">통합정보시스템</a></li>
                    <li><a href="#">학사일정</a></li>
                    <li><a href="#">주요인원 연락처</a></li>
                    <li><a href="#">교내공지사항</a></li>
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
=======
						</select> <input type="text" name="keyword" placeholder="검색어를 입력해 주세요"
							style="border: 1px solid #e9e9e9; width: 242px; height: 32px; flex: 1; padding-left: 8px;" />
						<input type="submit" value="검색"
							style="border: 1px solid #e9e9e9; background-color: #5198f9; width: 60px; height: 35px; color: white; font-weight: 200;">
					</form>
				</div>
				<table
					style="border-collapse: collapse; border: 1px solid; width: 100%; text-align: center; border: none;">
					<tr
						style="height: 60px; font-weight: 700; background-color: #fafafa; border-top: 2px solid black; border-bottom: 1px solid #b8b8b8;">
						<td style="width: 130px;">개설학과</td>
						<td style="width: 80px;">구분</td>
						<td style="width: 53px;">학년</td>
						<td style="width: 85px;">코드</td>
						<td style="width: 180px;">과목명</td>
						<td style="width: 53px;">학점</td>
						<td style="width: 80px;">담당교수</td>
						<td style="width: 80px;">수강인원</td>
						<td style="width: 70px;">비고</td>
						<td style="width: 80px;">신청</td>
					</tr>
					<c:forEach var="lecture" items="${ dtoList }">
						<tr style="height: 70px; border-bottom: 1px solid #b8b8b8;">
							<td>${ lecture.openMaj }</td>
							<td>${ lecture.compDiv }</td>
							<td>${ lecture.year }</td>
							<td>${ lecture.deptCode }</td>
							<td>${ lecture.lname }</td>
							<td>${ lecture.grade }</td>
							<td>${ lecture.prof }</td>
							<td>${ lecture.nowNum }/${ lecture.maxNum }</td>
							<td></td>
							<form action="" method="get">
								<td><input type="button" value="신청"
									onclick="window.location.href='/greenUniv/studAssist/courseReg/register.do?deptCode=${ lecture.deptCode }';"
									style="background-color: #132f73; color: white; font-weight: 300; height: 30px; border: none;">
								</td>
							</form>
						</tr>
					</c:forEach>
				</table>
				<div style="height: 100px; margin-top: 30px;">
					<form action="" method="get"
						style="text-align: center; display: flex; justify-content: center;">
						<input type="button" class="first-page"
							onclick="window.location.href='/greenUniv/studAssist/courseReg/list.do?pg=1';">
						<input type="button" class="prev-page"
							onclick="window.location.href='/greenUniv/studAssist/courseReg/list.do?pg=${ pagenationDTO.currentPage > 1 ? pagenationDTO.currentPage - 1 : 1 }';">
						<c:forEach var="num" begin="${ pagenationDTO.pageGroupStart }"
							end="${ pagenationDTO.pageGroupEnd }">
							<input type="button" value="${ num }"
								class="${ pagenationDTO.currentPage == num ? 'current' : 'off' }"
								onclick="window.location.href='/greenUniv/studAssist/courseReg/list.do?pg=${ num }';">
						</c:forEach>
						<input type="button" class="next-page"
							onclick="window.location.href='/greenUniv/studAssist/courseReg/list.do?pg=${ pagenationDTO.currentPage < pagenationDTO.lastPageNum ? pagenationDTO.currentPage + 1 : pagenationDTO.lastPageNum }';">
						<input type="button" class="last-page"
							onclick="window.location.href='/greenUniv/studAssist/courseReg/list.do?pg=${ pagenationDTO.lastPageNum }';">
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--3. 푸터영역-->
	<footer class="footer">
		<!--상단-->
		<div class="footer-high">
			<div class="footer-high-inner">
				<ul class="footer-high-quicklinks">
					<li><a href="#">개인정보처리방침</a></li>
					<li><a href="#">통합정보시스템</a></li>
					<li><a href="#">학사일정</a></li>
					<li><a href="#">주요인원 연락처</a></li>
					<li><a href="#">교내공지사항</a></li>
				</ul>
			</div>
		</div>

		<!--하단-->
		<div class="footer-low">
			<div class="footer-low-inner">
				<div class="footer-logo">
					<img src="/greenUniv/images/mainpage-logo.webp" alt="몬스터대학교 로고"
						class="logo" />
				</div>

				<div class="footer-info">
					<p class="footer-uniname">몬스터대학교</p>
					<p>[12345] 부산광역시 부산진구 부전대로 123 몬스터대학교 / 대표전화 : 051-123-1000 /
						입학안내 : 051-123-1302 팩스 : 051-123-3333</p>
					<p class="copy">copyright ©Monster University All rights
						reserved.</p>
				</div>

				<div class="footer-select">
					<label for="site-select" class="sr-only">주요사이트</label> <select
						id="site-select"
						onchange="if(this.value) window.open(this.value, '_blank')">
						<option value="">주요사이트</option>
						<option value="https://www.moe.go.kr/">교육부</option>
						<option value="https://www.kocca.kr/">콘텐츠진흥원</option>
						<option value="https://www.nrf.re.kr/">연구재단</option>
					</select>
				</div>
			</div>
		</div>
	</footer>
>>>>>>> origin/test
</body>
</html>