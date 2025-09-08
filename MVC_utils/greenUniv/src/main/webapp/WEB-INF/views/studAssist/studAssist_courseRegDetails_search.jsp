<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>학생지원_수강신청내역</title>
<link rel="stylesheet" href="/greenUniv/css/fonts.css">
<link rel="stylesheet" href="/greenUniv/studAssist_css/main.style.css">
<script>
	document.addEventListener("DOMContentLoaded", function(){
		function getQueryParam(param) {
		    const urlParams = new URLSearchParams(window.location.search);
		    return urlParams.get(param);  // 'name' 또는 'age' 같은 파라미터 이름을 넣으면 해당 값을 반환
	 	}
		
		const selectedYear = getQueryParam("year");
		const selectedSemester = getQueryParam("semester");
		console.log(selectedYear);
		
		const optionYear = document.querySelector('option[value="'+selectedYear+'"]');
		const optionSemester = document.querySelector('option[value="'+selectedSemester+'"]');
		
		optionYear.selected = true;
		optionSemester.selected = true;
		
		const selectedValues = document.getElementsByTagName("select");
		const year = selectedValues[0];
		const semester = selectedValues[1];
		
		year.addEventListener("change", function() {
			console.log("year : " + year.value);
			console.log("semester: " + semester.value);
			location.href = '/greenUniv/studAssist/courseRegDetails/search.do?year=' + year.value + '&semester=' + semester.value;
		});
		
		semester.addEventListener("change", function() {
			console.log("year : " + year.value);
			console.log("semester: " + semester.value);
			location.href = '/greenUniv/studAssist/courseRegDetails/search.do?year=' + year.value + '&semester=' + semester.value;
		});
	});
</script>
<style>
hr {
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
	display: block;
	width: 100%;
	height: 100%;
	line-height: 60px;
	margin-left: 16px;
}

.board-select {
	color: #666666; /* 글씨 색 */
	appearance: none; /* 기본 화살표 제거 (크로스브라우징 위해 vendor prefix) */
	-webkit-appearance: none;
	-moz-appearance: none;
	background: url('/greenUniv/images/btn-sel-open01.png') no-repeat right
		8px center/12px auto;
	padding-right: 24px; /* 화살표 공간 확보 */
}
/* 게시판 아래버튼 부분 */
.first-page {
	background: url('/greenUniv/images/btn-first-page.png') no-repeat center;
	border: 1px #eaeaea solid;
	width: 33px;
	height: 30px;
	margin-right: 3px;
}

.prev-page {
	background: url('/greenUniv/images/btn-prev-page.png') no-repeat center;
	border: 1px #eaeaea solid;
	margin-right: 15px;
	width: 33px;
	height: 30px;
}

.next-page {
	background: url('/greenUniv/images/btn-next-page.png') no-repeat center;
	border: 1px #eaeaea solid;
	margin-left: 15px;
	width: 33px;
	height: 30px;
	margin-right: 3px;
}

.last-page {
	background: url('/greenUniv/images/btn-last-page.png') no-repeat center;
	border: 1px #eaeaea solid;
	width: 33px;
	height: 30px;
}

/* 게시판 아래버튼 부분 끝 */
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
									style="width: 8px; height: 13px; margin-left: 9px;"> <span
									style="font-weight: 350; font-size: 14px; color: #333333; margin-left: 9px;">학생지원</span>
								<img src="/greenUniv/images/bg-path-arrow.png" alt="화살표"
									style="width: 8px; height: 13px; margin-left: 9px;"> <span
									style="font-weight: 350; font-size: 14px; color: #071F4B; margin-left: 9px;">수강신청내역</span>
							</div></li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	<div
		style="background-color: #ECF2F6; height: 42px; display: flex; align-items: center; justify-content: center;">
	</div>
	<div style="height: 791px;" class="inner">
		<div style="height: 54px;"></div>
		<div style="display: flex; gap: 60px;">
			<div style="width: 210px;">
				<b
					style="display: block; font-weight: 700; font-size: 32px; margin-bottom: 14px;">학생지원</b>
				<table class="banner"
					style="border-collapse: collapse; width: 100%; border-top: 2px solid black;">
					<tr>
						<td style="border-bottom: 1px solid #e9e9e9;"><a href="#"
							style="color: black;">수강신청</a></td>
					</tr>
					<tr>
						<td
							style="background-color: #5198f9; border-bottom: 1px solid #e9e9e9;">
							<a href="#" style="color: white; font-weight: 300;">수강신청내역</a>
						</td>
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
					<b style="font-weight: 700; font-size: 26px;">수강신청내역</b>
				</div>
				<hr style="border: none; border-top: 2px solid;">
				<div
					style="display: flex; width: 100%; margin-top: 30px; margin-bottom: 20px;">
					<form action="" style="display: flex;">
						<select name="" id="" class="board-select"
							style="border: 1px solid #e9e9e9; height: 40px; width: 100px; margin-right: 4px; padding-left: 10px;">
							<option value="2025">2025</option>
							<option value="2024">2024</option>
							<option value="2023">2023</option>
							<option value="2022">2022</option>
							<option value="2021">2021</option>
							<option value="2020">2020</option>
						</select> <span style="line-height: 40px; margin-right: 8px;">년</span> <select
							name="" id="" class="board-select"
							style="border: 1px solid #e9e9e9; height: 40px; width: 50px; margin-right: 4px; padding-left: 10px;">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="여름계절">여름계절</option>
							<option value="겨울계절">겨울계절</option>
						</select> <span style="line-height: 40px;">학기</span>
					</form>
					<span
						style="margin-top: 15px; margin-left: 370px; font-weight: 700; font-size: 14pt;">신청과목수
						6과목, 총 신청학점 18학점</span>
				</div>
				<table
					style="border-collapse: collapse; border: 1px solid; width: 100%; text-align: center; border: none;">
					<tr
						style="height: 60px; font-weight: 700; background-color: #fafafa; border-top: 2px solid black; border-bottom: 1px solid #b8b8b8;">
						<td style="width: 110px;">교과목코드</td>
						<td style="width: 130px;">과목명</td>
						<td style="width: 100px;">대상학년</td>
						<td style="width: 90px;">담당교수</td>
						<td style="width: 100px;">학점</td>
						<td>이수구분</td>
						<td style="">강의시간</td>
						<td style="">강의장</td>
						<td style="width: 98px;">관리</td>
					</tr>
					<c:forEach var="regDetail" items="${ dtoList }">
						<tr style="height: 70px; border-bottom: 1px solid #b8b8b8;">
							<td>${ regDetail.deptCode }</td>
							<td>${ regDetail.lname }</td>
							<td>${ regDetail.year }학년</td>
							<td>${ regDetail.prof }</td>
							<td>${ regDetail.grade }</td>
							<td>${ regDetail.compDiv }</td>
							<td>${ regDetail.timeD }${ regDetail.lTimes }</td>
							<td>${ regDetail.room }</td>
							<td><input type="button" value="취소"
							onclick="window.location.href='/greenUniv/studAssist/courseRegDetails/delete.do?deptCode=${ regDetail.deptCode }';"
								style="background-color: #942626; color: white; font-weight: 300; height: 30px; width: 37px; border: none;">
							</td>
						</tr>
					</c:forEach>


				</table>

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
</body>
</html>