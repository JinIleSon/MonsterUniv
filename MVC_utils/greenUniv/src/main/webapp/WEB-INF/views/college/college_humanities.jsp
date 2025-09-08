<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>대학·대학원_인문사회대학</title>
    <link rel="stylesheet" href="../css/fonts.css">
    <link rel="stylesheet" href="../css/college_main.style.css">
    <!--css연결-->
    <link rel="stylesheet" href="../css/main_main.style.css">
    <link rel="stylesheet" href="../css/Header.style.css">
    <link rel="stylesheet" href="../css/Footer.style.css">
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
        
        /* 게시판 아래버튼 부분 끝 */
    	main > :first-child{ margin-top: 0; }
		main {background-color: white;}
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
                        <li><a href="#">학생지원</a></li>
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
            transform: translateX(182%);
            display:flex;
            align-items: center;
            ">
                <img src="../images/ico-home.png" alt="홈" style="width:23px; height:20px;">
                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#333333; margin-left:15px;">대학·대학원</span>
                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#071F4B; margin-left:15px;">인문사회대학</span>
        </div>
    </div>
        <!-- 사이드바 시작-->
    <div style="height: 1300px;" class = "inner">
        <div style="height:50px; "></div>
        <div style="display: flex; gap: 60px; ">
            <div style=" width: 210px; ">
                <b style="display:block; font-weight: 700; font-size:32px; margin-bottom: 14px;">대학·대학원</b>
                <table class="banner sidebar" style="border-collapse:collapse; width:100%; border-top:2px solid black;">
                    <tr>
                        <td style="background-color: #5198f9; border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: white;" class="active">인문사회대학</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="/greenUniv/college/college_science.do" style="color: black;">자연과학대학</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="/greenUniv/college/college_engineering.do" style="color: black;">공과대학</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="/greenUniv/college/college_education.do" style="color:black;">사범대학</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="/greenUniv/college/college_graduateSchool.do" style="color: black;">대학원</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div style="padding-top:9px; width: 930px;">
                <div style="padding-bottom:6px;">
                    <b style="font-weight: 700; font-size:26px;">인문사회대학</b>
                </div>
                    <!-- 사이드바 끝-->
                    <!-- 본문 시작-->
               <hr style="border:none; border-top: 2px solid;">
               <div style="height:290px; margin-top:30px; display: flex; gap:23px;">
                  <img src="../images/college-introduce-1.jpg" alt="" style="width:320px; height:240px;">
                  <div style="">
                    <div style="font-weight: 350; font-size: 16px; color:#5B6774; margin-bottom:8px;">Humanities And Social Sciences</div>
                    <div style="font-weight: 350; font-size: 26px; color:#3B88D4; margin-bottom:11px;">인문, 사회분야의 다양하고 심화된 이론을 연구</div>
                    <div style="font-weight: 350; font-size: 16px; color:#666666;">
                        인문사회과학대학은 민족의 문화적 유산과 전통을 창조적으로 계승.발전시킬 열린 민족인, 세계화된 지식, 정보사회를 주도할 수 있는 국제적인 식견을 갖춘 전문인, 법, 정치 경제, 언 론등 우리사회의 중심을 이루는 영역에서 정의로운 사명감을 가지고 일 할 양심적인 봉사자, 그리고 창의적인 디자인 활동을 할 개성적인 인재를 양성하기 위해서 인문, 사회, 디자인 영 역의 다양하고 심화된 이론과 실제를 교수.연구하는데 교육목표를 둔다.</div>
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
                          국어국문학과 <a href="#"><img src="../images/ico_link.png" alt="국어국문학과"></a>
                        </td>
                        <td style="border-right: 1px solid #b8b8b8; padding: 6px;">김국어</td>
                        <td style="border-right: 1px solid #b8b8b8; padding: 6px;">051-123-1001</td>
                        <td style="padding: 6px;"></td>
                      </tr>

                      <!-- 데이터 행 (2) -->
                      <tr style="height: 50px;">
                        <td style="border: 1px solid #b8b8b8; padding: 6px; border-left:none;">
                          영어영문학과 <a href="#"><img src="../images/ico_link.png" alt="영어영문학과"></a>
                        </td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">김영어</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">051-123-1002</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px; border-right:none;"></td>
                      </tr>

                      <!-- 데이터 행 (3) -->
                      <tr style="height: 50px;">
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-left:none;">
                          일어일문학과 <a href="#"><img src="../images/ico_link.png" alt="일어일문학과"></a>
                        </td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">김일어</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">051-123-1003</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px; border-right:none;"></td>
                      </tr>

                      <!-- 데이터 행 (4) -->
                      <tr style="height: 50px;">
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-left:none;">
                          중어중문학과 <a href="#"><img src="../images/ico_link.png" alt="중어중문학과"></a>
                        </td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">김중어</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">051-123-1004</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-right:none;"></td>
                      </tr>

                      <!-- 데이터 행 (5) -->
                      <tr style="height: 50px;">
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-left:none;">
                          역사학과 <a href="#"><img src="../images/ico_link.png" alt="역사학과"></a>
                        </td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">김역사</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">051-123-1005</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-right:none;"></td>
                      </tr>

                      <!-- 데이터 행 (6) -->
                      <tr style="height: 50px;">
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-left:none;">
                          경제학과 <a href="#"><img src="../images/ico_link.png" alt="경제학과"></a>
                        </td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">김경제</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">051-123-1006</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-right:none;"></td>
                      </tr>

                      <!-- 데이터 행 (7) -->
                      <tr style="height: 50px;">
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-left:none;">
                          경영학과 <a href="#"><img src="../images/ico_link.png" alt="경영학과"></a>
                        </td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">김경영</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">051-123-1007</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-right:none;"></td>
                      </tr>

                      <!-- 데이터 행 (8) -->
                      <tr style="height: 50px;">
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-left:none;">
                          법학과 <a href="#"><img src="../images/ico_link.png" alt="법학과"></a>
                        </td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">김법학</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">051-123-1008</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-right:none;"></td>
                      </tr>

                      <!-- 데이터 행 (9) -->
                      <tr style="height: 50px;">
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-left:none;">
                          철학과 <a href="#"><img src="../images/ico_link.png" alt="철학과"></a>
                        </td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">김철학</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">051-123-1009</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-right:none;"></td>
                      </tr>
                      
                      <!-- 데이터 행 (10) -->
                      <tr style="height: 50px;">
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-left:none;">
                          정치외교학과 <a href="#"><img src="../images/ico_link.png" alt="정치외교학과"></a>
                        </td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">김정치</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">051-123-1010</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-right:none;"></td>
                      </tr>

                      
                      <!-- 데이터 행 (11) -->
                      <tr style="height: 50px;">
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-left:none;">
                          행정학과 <a href="#"><img src="../images/ico_link.png" alt="행정학과"></a>
                        </td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">김행정</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">051-123-1011</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-right:none;"></td>
                      </tr>
                      
                      <!-- 데이터 행 (12) -->
                      <tr style="height: 50px;">
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-left:none;">
                          사회복지학과 <a href="#"><img src="../images/ico_link.png" alt="사회복지학과"></a>
                        </td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">김사회</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">051-123-1012</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-right:none;"></td>
                      </tr>
                      
                      <!-- 데이터 행 (13) -->
                      <tr style="height: 50px;">
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-left:none;">
                          유아교육학과 <a href="#"><img src="../images/ico_link.png" alt="유아교육학과"></a>
                        </td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">김유아</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;">051-123-1013</td>
                        <td style="border: 1px solid #b8b8b8; padding: 6px;border-right:none;"></td>
                      </tr>
                  </table>

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
                    <li><a href="#">통합정보시스템</a></li>
                    <li><a href="/greenUniv/academicAffairs/academicAffairs_schedules.do">학사일정</a></li>
                    <li><a href="#">주요인원 연락처</a></li>
                    <li><a href="/greenUniv/academicAffairs/academicAffairs_notice.do">교내공지사항</a></li>
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
