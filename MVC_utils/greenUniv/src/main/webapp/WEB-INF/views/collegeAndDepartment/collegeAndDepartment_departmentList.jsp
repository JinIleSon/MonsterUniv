<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>몬스터대학교 - 학과목록</title>
    <style>
        @font-face {
            font-family: 'NotoSansKR-Light';
            src: url('../font/NotoSansKR-Light.otf') format('opentype');
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
        
        /* 검색 영역 */
        .search-section {
            display: flex;
            justify-content: flex-end;
            gap: 5px;
            margin: 20px 20px 0 0;
        }
        .search-input {
            padding: 8px 12px;
            border: 1px solid #959595;
            font-size: 12px;
            width: 150px;
            height: 35px;
        }
        .search-btn {
            background-color: #1A528E;
            color: white;
            border: none;
            padding: 8px 16px;
            font-size: 12px;
            cursor: pointer;
            width: 60px;
            height: 35px;
        }
        .search-btn:hover {
            background-color: #357abd;
        }

        /* 테이블 스타일 */
        .department-table {
            width: 1090px;
            border-collapse: collapse;
            margin: 10px 20px 20px auto;
        }
        .department-table th {
            background-color: #FAFAFA;
            border-top: 1px solid #A3A3A3;
            border-bottom: 1px solid #A3A3A3;
            padding: 12px 8px;
            text-align: center;
            font-size: 13px;
            font-weight: 350;
            color: #333;
            height: 45.5px;
        }
        .department-table td {
            border-top: 1px solid #D8D8D8;
            border-bottom: 1px solid #D8D8D8;
            padding: 10px 8px;
            text-align: center;
            font-size: 13px;
            color: #333;
        }
        .department-table tr:nth-child(even) {
            background-color: #fafafa;
        }
        .department-table tr:hover {
            background-color: #f0f8ff;
        }

        /* 페이지네이션 */
        .pagenation {
            width: 1090px;
            height: 62px;
            margin: 30px auto 0 auto;
            text-align: center;
        }
        .pagenation li {
            border: 1px solid #DEDEDE;
            display: inline-block;
            list-style: none;
            width: 32px;
            height: 32px;
        }
        .pagenation .page1 {
            background-color: #1A528E;
            color: white;
            display: block;
            width: 100%;
            height: 100%;
            text-align: center;
            text-decoration: none;
            line-height: 32px;
        }
        .pagenation .page2, .pagenation .page3 {
            color: #888888;
            display: block;
            width: 100%;
            height: 100%;
            text-align: center;
            text-decoration: none;
            line-height: 32px;
        }
        .pagenation li a {
            display: block;
            width: 100%;
            height: 100%;
            text-align: center;
            line-height: 32px;
        }
        .pagenation li a span {
            background-size: contain;
            background-repeat: no-repeat;
            display: inline-block;
            width: 10px;
            height: 10px;
        }
        .pagenation .first {
            background-image: url('../images/btn-first-page.png');
        }
        .pagenation .prev {
            background-image: url('../images/btn-prev-page.png');
        }
        .pagenation .next {
            background-image: url('../images/btn-next-page.png');
        }
        .pagenation .last {
            background-image: url('../images/btn-last-page.png');
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
                <img src="../images/mainpage-logo.webp" alt="몬스터대학교 로고" class="logo"/>

                <!--메인메뉴(대학소개/입학안내/대학.대학원/대학생활/커뮤니티)-->
                <div class="menu-area">
                    <ul>
                        <li><a href="#">대학소개</a></li>
                        <li><a href="#">입학안내</a></li>
                        <li><a href="#">대학·대학원</a></li>
                        <li><a href="#">대학생활</a></li> 
                        <li><a href="#">커뮤니티</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    
    <div class="container">
        <nav class="sidebar">
            <div class="menu menu1">
                <h3><img src='../images/ico-admin-setting.png'>환경설정</h3>
                <ul>
                    <li class="menu-item">기본환경정보</li>
                    <li class="menu-item">약관관리</li>
                </ul>
            </div>
            <div class="menu menu2">
                <h3><img src='../images/ico-admin-academic.png'>학사운영</h3>
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
                <h3><img src='../images/ico-admin-persons.png'>인사관리</h3>
                <ul>
                    <li class="menu-item">학생 목록 및 등록</li>
                    <li class="menu-item">교수 목록 및 등록</li>
                    <li class="menu-item">임직원 목록 및 등록</li>
                </ul>
            </div>
            <div class="menu menu4">
                <h3><img src='../images/ico-admin-college.png'>대학 및 학과</h3>
                <ul>
                    <li class="menu-item">대학 및 학과 목록</li>
                    <li class="menu-item">대학 및 학과 등록</li>
                </ul>
            </div>
            <div class="menu menu5">
                <h3><img src='../images/ico-admin-board.png'>게시판관리</h3>
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
                <h3>학과 목록</h3>
                <p>대학 및 학과 &nbsp; > &nbsp; <span>학과 목록</span></p>
            </div>
            
            <!-- 검색 영역 -->
            <div class="search-section">
                <input type="text" class="search-input" placeholder="학과명">
                <input type="text" class="search-input" placeholder="키워드 입력">
                <button class="search-btn">검색</button>
            </div>

            <!-- 학과 목록 테이블 -->
            <table class="department-table">
                <thead>
                    <tr>
                        <th width="8%">학과번호</th>
                        <th width="15%">단과대학</th>
                        <th width="12%">학과</th>
                        <th width="10%">학과장</th>
                        <th width="15%">학과 전화번호</th>
                        <th width="10%">소속 교수 수</th>
                        <th width="10%">소속 학생 수</th>
                        <th width="10%">개설 강의 수</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>10</td>
                        <td>인문사회대학</td>
                        <td>국어학과</td>
                        <td>김국어</td>
                        <td>051-512-1010</td>
                        <td>23</td>
                        <td>322</td>
                        <td>42</td>
                    </tr>
                    <tr>
                        <td>11</td>
                        <td>인문사회대학</td>
                        <td>영어영문학과</td>
                        <td>김영어</td>
                        <td>051-512-1011</td>
                        <td>20</td>
                        <td>312</td>
                        <td>23</td>
                    </tr>
                    <tr>
                        <td>20</td>
                        <td>자연과학대학</td>
                        <td>생물학과</td>
                        <td>김생물</td>
                        <td>051-512-1234</td>
                        <td>23</td>
                        <td>322</td>
                        <td>42</td>
                    </tr>
                    <tr>
                        <td>21</td>
                        <td>자연과학대학</td>
                        <td>물리학과</td>
                        <td>김물리</td>
                        <td>051-512-1234</td>
                        <td>23</td>
                        <td>322</td>
                        <td>42</td>
                    </tr>
                    <tr>
                        <td>30</td>
                        <td>공과대학</td>
                        <td>기계공학과</td>
                        <td>김기계</td>
                        <td>051-512-1234</td>
                        <td>23</td>
                        <td>322</td>
                        <td>42</td>
                    </tr>
                    <tr>
                        <td>31</td>
                        <td>공과대학</td>
                        <td>컴퓨터공학과</td>
                        <td>김컴공</td>
                        <td>051-512-1234</td>
                        <td>23</td>
                        <td>322</td>
                        <td>42</td>
                    </tr>
                    <tr>
                        <td>32</td>
                        <td>공과대학</td>
                        <td>전자공학과</td>
                        <td>김전자</td>
                        <td>051-512-1235</td>
                        <td>18</td>
                        <td>285</td>
                        <td>38</td>
                    </tr>
                    <tr>
                        <td>33</td>
                        <td>공과대학</td>
                        <td>화학공학과</td>
                        <td>김화학</td>
                        <td>051-512-1236</td>
                        <td>15</td>
                        <td>265</td>
                        <td>35</td>
                    </tr>
                    <tr>
                        <td>40</td>
                        <td>경영대학</td>
                        <td>경영학과</td>
                        <td>김경영</td>
                        <td>051-512-1240</td>
                        <td>25</td>
                        <td>450</td>
                        <td>48</td>
                    </tr>
                    <tr>
                        <td>41</td>
                        <td>경영대학</td>
                        <td>회계학과</td>
                        <td>김회계</td>
                        <td>051-512-1241</td>
                        <td>12</td>
                        <td>180</td>
                        <td>25</td>
                    </tr>
                </tbody>
            </table>

            <!-- 페이지네이션 -->
            <ul class="pagenation">
                <li><a href="#"><span class="first"></span></a></li>
                <li><a href="#"><span class="prev"></span></a></li>
                <li><a href="#" class="page1">1</a></li>
                <li><a href="#" class="page2">2</a></li>
                <li><a href="#" class="page3">3</a></li>
                <li><a href="#"><span class="next"></span></a></li>
                <li><a href="#"><span class="last"></span></a></li>
            </ul>
        </main>
    </div>
    
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
</body>
</html>