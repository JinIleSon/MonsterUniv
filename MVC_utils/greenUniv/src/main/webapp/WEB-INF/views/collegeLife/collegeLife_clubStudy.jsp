<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>대학생활_동아리/스터디</title>
    <link rel="stylesheet" href="../css/fonts.css">
    <link rel="stylesheet" href="../css/collegeLife_main.style.css">
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

        /*
        .notice::before {
            content: "";
            color: #2c5aa0;
            font-weight: bold;
        }*/
    </style>
</head>
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
            <img src="../images/mainpage-logo.webp" alt="몬스터대학교 로고" class="logo"/>
            <!--메인메뉴(대학소개/입학안내/대학.대학원/대학생활/커뮤니티)-->
            <div class="menu-area">
                <ul>
                    <li><a href="#">대학소개</a></li>
                    <li><a href="#">입학안내</a></li>
                    <li><a href="#">대학·대학원</a></li>
                    <li><a href="#">학사안내</a></li>
                    <li><a href="#">대학생활</a></li> 
                    <li><a href="#">커뮤니티</a></li>
                </ul>
            </div>
        </div>
    </div>
</header>
<body>
    <!-- 브레드크럼 -->
    <div class="breadcrumb">
        <div class="breadcrumb-content">
            <img src="../images/ico-home.png" alt="홈" style="width:23px; height:20px;">
            <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
            <a href="#">대학생활</a>
            <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;"><span>동아리/스터디</span> 
        </div>
    </div>
    <div class="inner">
        <div class="container">
            <!-- 사이드바 -->
            <div class="sidebar">
                <div class="sidebar-header">대학생활</div>
                <ul>
                    <li><a href="#">학생회 소개</a></li>
                    <li><a href="#"  class="active">동아리/스터디</a></li>
                    <li><a href="#">식단안내</a></li>
                    <li><a href="#">갤러리</a></li>
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
            <img src="../images/ironbar.jpg" alt="IronBar" style="width:150px; height:100px; object-fit:cover;">
            <div style="padding:10px;">
                <h3 style="margin:0 0 5px 0; font-size:16px; font-weight:bold;">IronBar(IB)</h3>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 전문성 </b>맨몸운동</p>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 동아리방 위치 </b></p>
            </div>
        </div>

        <div style="display:flex; background:#fff; border:1px solid #ddd; border-radius:8px; overflow:hidden;">
            <img src="../images/wave.jpg" alt="WAVE" style="width:150px; height:100px; object-fit:cover;">
            <div style="padding:10px;">
                <h3 style="margin:0 0 5px 0; font-size:16px; font-weight:bold;">WAVE</h3>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 전문성 </b>서핑</p>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 동아리방 위치 </b></p>
            </div>
        </div>


        <!-- 동아리(1)-->
        <div style="display:flex; background:#fff; border:1px solid #ddd; border-radius:8px; overflow:hidden;">
            <img src="../images/greenneomer.jpg" alt="그린너머" style="width:150px; height:100px; object-fit:cover;">
            <div style="padding:10px;">
                <h3 style="margin:0 0 5px 0; font-size:16px; font-weight:bold;">그린너머</h3>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 전문성 </b>지속가능발전</p>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 동아리방 위치 </b>위치</p>
            </div>
        </div>

         <!-- 동아리(2)-->    
        <div style="display:flex; background:#fff; border:1px solid #ddd; border-radius:8px; overflow:hidden;">
            <img src="../images/nohitno.jpg" alt="노히트노런" style="width:150px; height:100px; object-fit:cover;">
            <div style="padding:10px;">
                <h3 style="margin:0 0 5px 0; font-size:16px; font-weight:bold;">노히트노런</h3>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 전문성 </b>야구관람</p>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 동아리방 위치 </b>위치</p>
            </div>
        </div>
        
        <!-- 동아리(3)-->
        <div style="display:flex; background:#fff; border:1px solid #ddd; border-radius:8px; overflow:hidden;">
            <img src="../images/greenneomer.jpg" alt="SFC" style="width:150px; height:100px; object-fit:cover;">
            <div style="padding:10px;">
                <h3 style="margin:0 0 5px 0; font-size:16px; font-weight:bold;">SFC</h3>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 전문성 </b>기독교</p>
                <p style="margin:3px 0; font-size:14px; color:#333;"><b>· 동아리방 위치 </b>위치 </p>
            </div>
        </div>

         <!-- 동아리(4)-->    
        <div style="display:flex; background:#fff; border:1px solid #ddd; border-radius:8px; overflow:hidden;">
            <img src="../images/nohitno.jpg" alt="라이브" style="width:150px; height:100px; object-fit:cover;">
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
</body>
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