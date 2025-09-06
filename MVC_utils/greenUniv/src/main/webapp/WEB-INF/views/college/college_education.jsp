<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>대학·대학원_사범대학</title>
    <link rel="stylesheet" href="../css/fonts.css">
    <link rel="stylesheet" href="../css/college_main.style.css">
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
                                <span style="font-weight: 350; font-size:14px; color:#333333; margin-left:15px;">대학·대학원</span>
                                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                                <span style="font-weight: 350; font-size:14px; color:#071F4B; margin-left:15px;">사범대학</span>
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
    <div style="height: 1088px;" class = "inner">
        <div style="height:50px; "></div>
        <div style="display: flex; gap: 60px; ">
            <div style=" width: 210px; ">
                <b style="display:block; font-weight: 700; font-size:32px; margin-bottom: 14px;">대학·대학원</b>
                <table class="banner" style="border-collapse:collapse; width:100%; border-top:2px solid black;">
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: black;">인문사회대학</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: black;">자연과학대학</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: black;">공과대학</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: #5198f9; border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: white;">사범대학</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: black;">대학원</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div style="padding-top:9px; width: 930px;">
                <div style="padding-bottom:6px;">
                    <b style="font-weight: 700; font-size:26px;">사범대학</b>
                </div>
                    <!-- 사이드바 끝-->
                    <!-- 본문 시작-->
               <hr style="border:none; border-top: 2px solid;">
               <div style="height:290px; margin-top:30px; display: flex; gap:23px;">
                  <img src="../images/college-introduce-4.jpg" alt="" style="width:320px; height:240px;">
                  <div style="">
                    <div style="font-weight: 350; font-size: 16px; color:#5B6774; margin-bottom:8px;">Education</div>
                    <div style="font-weight: 350; font-size: 26px; color:#3B88D4; margin-bottom:11px;">미래를 움직이는 큰 인재, 세계의 주역!</div>
                    <div style="font-weight: 350; font-size: 16px; color:#666666;">
                        전공영역은 물론 현대 교육에 대한 학문적 탐구의 자질 및 인격 도야에 중점을 두고 있습니 다. 원격강의 , 스튜디오, 원격교육강의실, 교육매체 제작실, 멀티미디어 강의실, 어학학습실, 수업행동 분석실 등 첨단 시설을 갖춘 교육지원센터를 운영하고 있습니다. 부속기관으로는 중등교육연수원, 과학교육연구소, 부설고등학교 등이 있습니다.
                    </div>
                  </div>
                </div>
                <div style="display: flex; width:100%; margin-top:0px; margin-bottom:28px; align-items: center;">
                      <img src="../images/bullet-h4.png" alt="" style="margin-right:6px; width:4px; height:18px; margin-top:5px;"><span style="color:#145074; font-size:18px; font-weight: 500;">학부 및 학과</span>
                </div>
                <div style="">
                  <table style="border-collapse: collapse; width:100%; text-align: center; border:none;">
                      <tr style="height:50px; font-weight: 700; background-color: #F4F8FC; border-top: 2px solid black; border-bottom: 1px solid #b8b8b8;">
                          <td style="width: 249px; border-right: 1px solid #b8b8b8;">학과/전공</td>
                          <td style="width: 249px; border-right: 1px solid #b8b8b8;">학과장</td>
                          <td style="width: 249px; border-right: 1px solid #b8b8b8;">학과 사무실 번호</td>
                          <td style="">비고</td>
                      </tr>
                      <tr style="height: 50px;">
                        <td style="border-right: 1px solid #b8b8b8; padding: 6px;">
                          국어교육과 <a href="#"><img src="../images/ico_link.png" alt="국어교육과"></a>
                        </td>
                        <td style="border-right: 1px solid #b8b8b8; padding: 6px;">김국어</td>
                        <td style="border-right: 1px solid #b8b8b8; padding: 6px;">051-123-4001</td>
                        <td style="padding: 6px;"></td>
                      </tr>

                      <!-- 데이터 행 (2) -->
                      <tr style="height: 50px;">
                        <td style="border: 1px solid #b8b8b8; padding: 6px; border-left:none;">
                          영어교육과 <a href="#"><img src="../images/ico_link.png" alt="영어교육과"></a>
                        </td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">김영어</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">051-123-4002</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px; border-right:none;"></td>
                      </tr>

                      <!-- 데이터 행 (3) -->
                      <tr style="height: 50px;">
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-left:none;">
                          수학교육과 <a href="#"><img src="../images/ico_link.png" alt="수학교육과"></a>
                        </td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">김수학</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">051-123-4003</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px; border-right:none;"></td>
                      </tr>

                      <!-- 데이터 행 (4) -->
                      <tr style="height: 50px;">
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-left:none;">
                          윤리학과 <a href="#"><img src="../images/ico_link.png" alt="윤리학과"></a>
                        </td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">김윤리</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">051-123-4004</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-right:none;"></td>
                      </tr>

                      <!-- 데이터 행 (5) -->
                      <tr style="height: 50px;">
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-left:none;">
                          교육학과 <a href="#"><img src="../images/ico_link.png" alt="교육학과"></a>
                        </td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">김교육</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">051-123-4005</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-right:none;"></td>
                      </tr>

                      <!-- 데이터 행 (6) -->
                      <tr style="height: 50px;">
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-left:none;">
                          사회교육과 <a href="#"><img src="../images/ico_link.png" alt="사회교육과"></a>
                        </td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">김사회</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">051-123-4006</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-right:none;"></td>
                      </tr>

                      <!-- 데이터 행 (7) -->
                      <tr style="height: 50px;">
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-left:none;">
                          역사교육과 <a href="#"><img src="../images/ico_link.png" alt="역사교육과"></a>
                        </td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">김역사</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">051-123-4007</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-right:none;"></td>
                      </tr>

                      <!-- 데이터 행 (8) -->
                      <tr style="height: 50px;">
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-left:none;">
                          체육교육과 <a href="#"><img src="../images/ico_link.png" alt="체육교육과"></a>
                        </td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">김체육</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">051-123-4008</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-right:none;"></td>
                      </tr>

                      <!-- 데이터 행 (9) -->
                      <tr style="height: 50px;">
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-left:none;">
                          특수교육과 <a href="#"><img src="../images/ico_link.png" alt="특수교육과"></a>
                        </td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">김특수</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">051-123-4009</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-right:none;"></td>
                      </tr>
                  </table>
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
