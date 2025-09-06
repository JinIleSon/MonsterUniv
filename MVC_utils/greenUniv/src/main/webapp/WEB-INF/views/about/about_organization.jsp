<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>대학소개_조직도</title>
    <link rel="stylesheet" href="../css/fonts.css">
    <link rel="stylesheet" href="../css/about_main.style.css">
    <style>
        
        hr{
            border: none;
            height: 2px;
            background-color: black;
        } 
        a {
            text-decoration: none;
        }
       
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
                                <span style="font-weight: 350; font-size:14px; color:#333333; margin-left:15px;">대학소개</span>
                                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                                <span style="font-weight: 350; font-size:14px; color:#071F4B; margin-left:15px;">조직도</span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>     
        </div>   
    </header>
    <div style="background-color: #ECF2F6; height:42px; display:flex; align-items: center; justify-content: center;">
    </div>
        <!-- 사이드바 시작-->
    <div style="height: 1300px;" class = "inner">
        <div style="height:50px; "></div>
        <div style="display: flex; gap: 60px; ">
            <div style=" width: 210px; ">
                <b style="display:block; font-weight: 700; font-size:32px; margin-bottom: 14px;">대학소개</b>
                <table class="banner" style="border-collapse:collapse; width:100%; border-top:2px solid black;">
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color:black;">총장 인사말</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9; ">
                            <a href="#" style="color: black">교육이념</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color:black;">연혁</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: #5198f9; border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: white;">조직도</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: black;">오시는 길</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div style="padding-top:9px; width: 930px;">
                <div style="padding-bottom:6px;">
                    <b style="font-weight: 700; font-size:26px;">조직도</b>
                </div>
                    <!-- 사이드바 끝-->

                    <!-- 본문 시작-->
               <hr style="border:none; border-top: 2px solid;">
               <div style="height:0px; margin-top:30px; display: flex; gap:23px;"> 
 
                </div>
<table style="border-collapse: collapse; width: 100%; text-align: center; border:1px solid #333;">
  <tr>
    <th colspan="7" style="border:1px solid #333; background-color:#4A90E2; color:#fff; padding:10px;">
      총장
    </th>
  </tr>
  <tr>
    <td style="border:1px solid #333;">비서실<br>- 비서실</td>
    <td style="border:1px solid #333;">감사실<br>- 감사실</td>
    <td style="border:1px solid #333;">미디어전략실<br>- 미디어전략팀</td>
    <td style="border:1px solid #333;">
      대학혁신본부<br>
      - 교육혁신TF<br>
      - 연구혁신TF<br>
      - 창업혁신TF<br>
      - 시스템혁신TF
    </td>
    <td style="border:1px solid #333;">
      글로벌사회혁신단<br>
      - SSIR Korea 센터<br>
      - 국제사회혁신센터<br>
      - 글로벌사회혁신센터(서울)<br>
      - 글로벌사회혁신센터(ERICA)
    </td>
    <td style="border:1px solid #333;">
      위원회<br>
      - 필수유연교양위원회<br>
      - 노동권리위원회<br>
      - 교원업적평가위원회<br>
      - ERICA인권윤리위원회<br>
      - 평화통일위원회
    </td>
  </tr>
</table>

<br><br>

<table style="border-collapse: collapse; width: 100%; text-align: center; border:1px solid #333;">
  <tr>
    <th colspan="2" style="border:1px solid #333; background-color:#4A90E2; color:#fff; padding:10px;">
      서울 캠퍼스
    </th>
    <th colspan="2" style="border:1px solid #333; background-color:#4A90E2; color:#fff; padding:10px;">
      ERICA 캠퍼스
    </th>
  </tr>
  <tr>
    <td colspan="2" style="border:1px solid #333;">
      대학본부<br>
      부총장(서울), 연구부총장, 의무부총장
    </td>
    <td colspan="2" style="border:1px solid #333;">
      대학본부<br>
      부총장(ERICA), 산학협력부총장
    </td>
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
