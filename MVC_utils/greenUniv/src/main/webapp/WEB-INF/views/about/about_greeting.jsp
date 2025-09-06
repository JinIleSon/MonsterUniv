<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>대학소개_총장 인사말</title>
    <link rel="stylesheet" href="../css/about_main.style.css">
    <!--css연결-->
    <link rel="stylesheet" href="../css/main_main.style.css">
    <link rel="stylesheet" href="../css/Header.style.css">
    <link rel="stylesheet" href="../css/Footer.style.css">
    <!--부트스트랩 연결-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/fonts.css">
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

            background: url('images/btn-sel-open01.png') 
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
            transform: translateX(214%);
            display:flex;
            align-items: center;
            ">
                <img src="../images/ico-home.png" alt="홈" style="width:23px; height:20px;">
                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#333333; margin-left:15px;">대학소개</span>
                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#071F4B; margin-left:15px;">총장 인사말</span>
        </div>
    </div>
    
        <!-- 사이드바 시작-->
    <div style="height: 1088px;" class = "inner">
        <div style="height:50px; "></div>
        <div style="display: flex; gap: 60px; ">
            <div style=" width: 210px; ">
                <b style="display:block; font-weight: 700; font-size:32px; margin-bottom: 14px;">대학소개</b>
                <table class="banner" style="border-collapse:collapse; width:100%; border-top:2px solid black;">
                    <tr>
                        <td style="background-color: #5198f9; border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color:white">총장 인사말</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: black;">교육이념</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color:black;">연혁</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color:black;">조직도</a>
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
                    <b style="font-weight: 700; font-size:26px;">총장 인사말</b>
                </div>
                    <!-- 사이드바 끝-->
                    <!-- 본문 시작-->
               <hr style="border:none; border-top: 2px solid;">
               <div style="height:290px; margin-top:30px; display: flex; gap:23px;">
                  <img src="..//images/college-introduce-4.jpg" alt="" style="width:320px; height:240px;">
                  <div style="">

                    <div style="font-weight: 350; font-size: 26px; color:#3B88D4; margin-bottom:11px;"></div>
                    <div style="font-weight: 350; font-size: 16px; color:#666666;"></div>
                  </div>
                </div>
                <div style="display: flex; width:100%; margin-top:0px; margin-bottom:28px; align-items: center;">
                      <span style="color:#145074; font-size:18px; font-weight: 500;">😍존경하는 내외 귀빈과 학부모님, 그리고 사랑하는 학생 여러분.</span>
                </div>
                <div style="">
                  <table style="border-collapse: collapse; width:100%; text-align: center; border:none;">
                      <tr style="height:50px; font-weight: 700; background-color: #F4F8FC; border-top: 2px solid black; border-bottom: 1px solid #b8b8b8;">
                         
                         몬스터대학교는 1987년 설립 이래 4차 산업혁명 시대를 선도할 창의적이고 도전적인 인재를 양성하기 위해 끊임없이 노력해왔습니다. 오늘날 우리 사회는 인공지능, 빅데이터, 사물인터넷 등 첨단 기술의 융합 속에서 급격히 변화하고 있습니다. 이에 따라 컴퓨터공학의 중요성은 그 어느 때보다도 높아지고 있습니다.<p></p>

우리 몬스터대학교 컴퓨터공학과는 이러한 변화에 발맞추어, 프로그래밍·알고리즘·데이터베이스·인공지능 등 기초와 응용을 아우르는 체계적 교육과정을 운영하고 있습니다. 더 나아가, 특허청과 연계한 지식재산 교육을 통해 기술과 지식재산을 동시에 이해하는 융합형 인재를 양성하고 있습니다.<p></p>

또한 국내외 기업, 연구소, 국제기구와의 산학 협력과 맞춤형 연구 프로젝트를 통해 학생들이 산업 현장에서 요구되는 실무 역량을 갖추도록 지원하고 있습니다. 특히 세계지식재산권기구(WIPO) 및 한국국제협력단(KOICA)과의 협력은 우리 대학이 국제적 위상을 강화하고 글로벌 경쟁력을 확보하는 기반이 되고 있습니다.<p></p>

앞으로도 몬스터대학교는 급변하는 환경 속에서 시대를 이끄는 창의적 리더를 길러내어 대한민국이 IT 선도국가로 도약하는 데 기여할 것입니다.<p></p>

여러분의 변함없는 성원과 관심에 깊이 감사드리며, 우리 학생들이 세계 무대에서 마음껏 역량을 발휘할 수 있도록 최선을 다하겠습니다.<p></p>

감사합니다.<p></p><p></p>

<p align=right>
  <b>몬스터대학교 총장 드림</b></b></p></tr>
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
