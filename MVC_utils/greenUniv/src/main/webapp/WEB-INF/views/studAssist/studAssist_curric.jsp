<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>학생지원_수강신청내역</title>
    <link rel="stylesheet" href="../css/fonts.css">
    <link rel="stylesheet" href="../studentAssistance_css/main.style.css">
    <style>
        
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
            margin-left:16px;
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
                <img src="../images/mainpage-logo.webp" alt="몬스터대학교 로고" class="logo"/>

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
                                <img src="../images/ico-home.png" alt="홈" style="width:23px; height:20px;">
                                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                                <span style="font-weight: 350; font-size:14px; color:#333333; margin-left:15px;">학생지원</span>
                                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                                <span style="font-weight: 350; font-size:14px; color:#071F4B; margin-left:15px;">교과과정</span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>     
        </div>   
    </header>
    <div style="background-color: #ECF2F6; height:42px; display:flex; align-items: center; justify-content: center;">
    </div>
    <div style="height: 1946px;" class = "inner">
        <div style="height:54px;"></div>
        <div style="display: flex; gap: 60px;">
            <div style=" width: 210px;">
                <b style="display:block; font-weight: 700; font-size:32px; margin-bottom: 14px;">학생지원</b>
                <table class="banner" style="border-collapse:collapse; width:100%; border-top:2px solid black;">
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: black;">수강신청</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: black;">수강신청내역</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: #5198f9; border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: white; font-weight: 300;">교과과정</a>
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
                    <b style="font-weight: 700; font-size:26px;">교과과정</b>
                </div>
                <hr style="border:none; border-top: 2px solid;">
                <div style="display: flex; width:100%; margin-top:30px; margin-bottom:7px; align-items: center;">
                    <img src="../images/bullet-h4.png" alt="" style="margin-right:6px; width:4px; height:18px; margin-top:5px;"><span style="color:#145074; font-size:18px; font-weight: 500;">공통과목(전공)</span>
                </div>
                <table style="border-collapse: collapse; width:100%; text-align: center; border:none;">
                    <tr style="height:50px; font-weight: 700; background-color: #F4F8FC; border-top: 2px solid black; border-bottom: 1px solid #b8b8b8;">
                        <td style="width: 140px; border-right: 1px solid #b8b8b8;">학년</td>
                        <td style="width: 140px; border-right: 1px solid #b8b8b8;">코드번호</td>
                        <td style="width: 140px; border-right: 1px solid #b8b8b8;">이수구분</td>
                        <td style="width: 372px; border-right: 1px solid #b8b8b8;">교과목명</td>
                        <td>학점</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td rowspan="6" style="border-bottom: 1px solid #b8b8b8;">1</td>
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">C언어</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">프로그래밍언어론</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">컴퓨터과학개론</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">이산수학</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">인터넷과웹기초</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">컴퓨팅사고와인공지능</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td rowspan="6" style="border-bottom: 1px solid #b8b8b8;">2</td>
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">자바프로그래밍</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">자료구조</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">컴퓨터구조</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">선형대수</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">알고리즘</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">HTML/CSS/Javascript</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td rowspan="6" style="border-bottom: 1px solid #b8b8b8;">3</td>
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">웹 프로그래밍</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">프로그래밍언어론</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">컴퓨터과학개론</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">이산수학</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">인터넷과웹기초</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">컴퓨팅사고와인공지능</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td rowspan="6" style="border-bottom: 1px solid #b8b8b8;">4</td>
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">C언어</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">프로그래밍언어론</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">컴퓨터과학개론</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">이산수학</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">인터넷과웹기초</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">컴퓨팅사고와인공지능</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                </table>
                <div style="display: flex; width:100%; margin-top:30px; margin-bottom:7px; align-items: center;">
                    <img src="../images/bullet-h4.png" alt="" style="margin-right:6px; width:4px; height:18px; margin-top:5px;"><span style="color:#145074; font-size:18px; font-weight: 500;">선택과목(교양)</span>
                </div>
                <table style="border-collapse: collapse; width:100%; text-align: center; border:none;">
                    <tr style="height:50px; font-weight: 700; background-color: #F4F8FC; border-top: 2px solid black; border-bottom: 1px solid #b8b8b8;">
                        <td style="width: 140px; border-right: 1px solid #b8b8b8;">수준</td>
                        <td style="width: 140px; border-right: 1px solid #b8b8b8;">코드번호</td>
                        <td style="width: 140px; border-right: 1px solid #b8b8b8;">이수구분</td>
                        <td style="width: 372px; border-right: 1px solid #b8b8b8;">교과목명</td>
                        <td>학점</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td rowspan="6" style="border-bottom: 1px solid #b8b8b8;">1</td>
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">대학영어</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">세계의역사</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">2</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">고전 읽기와 토론</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">2</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">컴퓨팅사고와인공지능</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">3</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">인생과 철학</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">2</td>
                    </tr>
                    <tr style="height:50px; ">
                        <td style="border: 1px solid #b8b8b8;">G01940</td>
                        <td style="border: 1px solid #b8b8b8;">공통</td>
                        <td style="border: 1px solid #b8b8b8;">기술과 의사 소통</td>
                        <td style="border: 1px solid #b8b8b8; border-right:none;">2</td>
                    </tr>
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