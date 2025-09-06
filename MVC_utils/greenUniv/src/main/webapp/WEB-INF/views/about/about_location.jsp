<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>대학소개_오시는 길</title>
    <!--css연결-->
    <link rel="stylesheet" href="../css/main_main.style.css">
    <link rel="stylesheet" href="../css/Header.style.css">
    <link rel="stylesheet" href="../css/Footer.style.css">
    <!--부트스트랩 연결-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
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
     main > :first-child{ margin-top: 0; }
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
                        <li><a href="./main.html">HOME</a></li>
                        <li><a href="#">사이트맵</a></li>
                        <li><a href="../login/login.html">로그인</a></li>
                        <li><a href="#">학생지원</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="mainNav">
            <div class="inner">
                <!--로고-->
                <a href="./main.html"><img src="../images/mainpage-logo.webp" alt="몬스터대학교 로고" class="logo"/></a>
                
                <!--메인메뉴(대학소개/입학안내/대학.대학원/대학생활/커뮤니티)-->
                <div class="menu-area">
                    <ul class="main-menu">
                        <li data-menu="intro"><a href="../about/about_greeting.html">대학소개</a></li>
                        <li data-menu="admission"><a href="../admissionGuide/admissionGuide_notice.html">입학안내</a></li>
                        <li data-menu="college"><a href="../college/college_education.html">대학·대학원</a></li>
                        <li data-menu="academic"><a href="../academicAffairs/academicAffairs_notice.html">학사안내</a></li>
                        <li data-menu="life"><a href="../collegeLife/collegeLife_studentCouncil.html">대학생활</a></li>
                        <li data-menu="community"><a href="../community/community_announcement.html">커뮤니티</a></li>
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
                            <li><a href="../about/about_greeting.html">총장인사</a></li>
                            <li><a href="../about/about_philosophy.html">교육이념</a></li>
                            <li><a href="../about/about_history.html">연혁</a></li>
                            <li><a href="../about/about_organization.html">조직도</a></li>
                            <li><a href="../about/about_location.html">찾아오시는길</a></li>
                        </ul>
                    </div>
                    <div class="dropdown-section" data-menu="admission">
                        <h4>입학안내</h4>
                        <ul>
                            <li><a href="../admissionGuide/admissionGuide_early.html">수시모집</a></li>
                            <li><a href="../admissionGuide/admissionGuide_regular.html">정시모집</a></li>
                            <li><a href="../admissionGuide/admissionGuide_transfer.html">편입학</a></li>
                            <li><a href="../admissionGuide/admissionGuide_counsel.html">입학상담</a></li>
                        </ul>
                    </div>
                    <div class="dropdown-section" data-menu="college">
                        <h4>대학·대학원</h4>
                        <ul>
                            <li><a href="../college/college_humanities.html">단과대학</a></li>
                            <li><a href="../college/college_graduateSchool.html">대학원</a></li>
                        </ul>
                    </div>
                    <div class="dropdown-section" data-menu="academic">
                        <h4>학사안내</h4>
                        <ul>
                            <li><a href="../academicAffairs/academicAffairs_schedules.html">학사일정</a></li>
                            <li><a href="../academicAffairs/academicAffairs_courseRegist.html">수강신청</a></li>
                            <li><a href="../academicAffairs/academicAffairs_grades.html">성적관리</a></li>
                            <li><a href="../academicAffairs/academicAffairs_graduation.html">졸업요건</a></li>
                            <li><a href="../academicAffairs/academicAffairs_FAQ.html">F&Q</a></li>
                        </ul>
                    </div>
                    <div class="dropdown-section" data-menu="life">
                        <h4>대학생활</h4>
                        <ul>
                            <li><a href="../collegeLife/collegeLife_studentCouncil.html">학생회 소개</a></li>
                            <li><a href="../collegeLife/collegeLife_clubStudy.html">동아리</a></li>
                            <li><a href="../collegeLife/collegeLife_menuGuide.html">학생식당</a></li>
                            <li><a href="../collegeLife/collegeLife_gallery.html">갤러리</a></li>
                        </ul>
                    </div>
                    <div class="dropdown-section" data-menu="community">
                        <h4>커뮤니티</h4>
                        <ul style="">
                            <li><a href="../community/community_announcement.html">공지사항</a></li>
                            <li><a href="../community/community_newsAndColumn.html">뉴스 및 칼럼</a></li>
                            <li><a href="../community/community_freeDiscussionBoard.html">자유게시판</a></li>
                            <li><a href="../community/community_QnA.html">Q&amp;A</a></li>
                            <li style="position: relative;"><a href="../community/community_referenceLibrary.html">자료실</a></li>
                        </ul>
                    </div>
                </div>
            </div>  
        </div>
    </header>
    
    <div style="background-color: #ECF2F6; height:42px; display:flex; align-items: center; justify-content: center;">
        <div style="width:220px; height:42px;
            position: absolute; 
            transform: translateX(216%);
            display:flex;
            align-items: center;
            ">
                <img src="../images/ico-home.png" alt="홈" style="width:23px; height:20px;">
                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#333333; margin-left:15px;">대학소개</span>
                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#071F4B; margin-left:15px;">오시는 길</span>
        </div>
    </div>
        <!-- 사이드바 시작-->
    <div style="height: 800px;" class = "inner">
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
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: black;">조직도</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: #5198f9; border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: white;">오시는 길</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div style="padding-top:9px; width: 930px;">
                <div style="padding-bottom:6px;">
                    <b style="font-weight: 700; font-size:26px;">오시는 길</b>
                </div>
                    <!-- 사이드바 끝-->

                    <!-- 본문 시작-->
               <hr style="border:none; border-top: 2px solid;">
               <div style="height:0px; margin-top:30px; display: flex; gap:23px;"> 
 
                </div> 
       <iframe 
        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3261.9715843010927!2d129.05824077180847!3d35.15732941792972!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3568eb6f070cf047%3A0x54dc3eff4b6043b6!2z7ISc66m07Jet!5e0!3m2!1sko!2skr!4v1755745409966!5m2!1sko!2skr"  
        width="850" 
        height="450" 
        style="border:0; position:relative; top:10px;" 
        allowfullscreen 
        loading="lazy" 
        referrerpolicy="no-referrer-when-downgrade">
      </iframe>

      <ul>
        <li>주소 : 부산광역시 부산진구 중앙대로 지하 730 서면역 근처</li>
        <li>전화번호 : 042) 601-4458~59, 4339, 4309</li>
        <li>팩스 : 042) 862-5524, 3358    </li>
      </ul>
       
       
                              



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
