<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>대학생활_학생회 소개</title>
    <link rel="stylesheet" href="../css/fonts.css">
    <link rel="stylesheet" href="../css/collegeLife_main.style.css">
    <!--css연결-->
    <link rel="stylesheet" href="../css/main_main.style.css">
    <link rel="stylesheet" href="../css/Header.style.css">
    <link rel="stylesheet" href="../css/Footer.style.css">
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
            
            /* padding: 10px; */
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
    	main > :first-child{ margin-top: 0; }
		main {background-color: white;}
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
                        <li><a href="/greenUniv/studAssist/courseReg/list.do">학생지원</a></li>
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
            transform: translateX(194%);
            display:flex;
            align-items: center;
            ">
                <img src="../images/ico-home.png" alt="홈" style="width:23px; height:20px;">
                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#333333; margin-left:15px;">대학생활</span>
                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#071F4B; margin-left:15px;">학생회 소개</span>
        </div>
    </div>
    <!-- 메인 컨테이너 -->
    <div class="inner">
        <div class="container">
            <!-- 사이드바 -->
            <div class="sidebar">
                <div class="sidebar-header">대학생활</div>
                <ul>
                    <li><a href="#" class="active">학생회 소개</a></li>
                    <li><a href="/greenUniv/collegeLife/collegeLife_clubStudy.do" style="color: black !important;">동아리/스터디</a></li>
                    <li><a href="/greenUniv/collegeLife/collegeLife_menuGuide.do" style="color: black !important;">식단안내</a></li>
                    <li><a href="/greenUniv/collegeLife/collegeLife_gallery.do" style="color: black !important;">갤러리</a></li>
                </ul>
            </div>

            <!-- 메인 컨텐츠 -->
            <div class="main-content">
                <div class="content-header">학생회 소개</div>
                
                
                <div style="display: flex; width:100%;  margin-top:0px; margin-bottom:28px; align-items: center;"> 
                </div>
                <div style="">
                    <table style="border-collapse: collapse; width:100%; text-align: center; border:none;">
                    <!-- 제목 -->  
                    <tr style="height:50px; font-weight: 700; background-color: #F4F8FC; border-top: 2px solid black; border-bottom: 1px solid #b8b8b8;">
                        <td style="width:20%; border: 1px solid #b8b8b8; border-right: 1px solid #b8b8b8;">직책</td>
                        <td style="width:80%; border: 1px solid #b8b8b8;">업무</td>
                    </tr>

                    <!-- 데이터 행 (1) -->                     
                    <tr style="height: 50px;">
                        <td style="width:20%; border: 1px solid #b8b8b8; border-right: 1px solid #b8b8b8;"><p style="margin:3px 0; font-size:14px; color:#333;">학생회장</p></td>
                        <td style="width:80%; border: 1px solid #b8b8b8;"><p style="margin:3px 0; font-size:14px; color:#333;">학생회의 대표로 학생회의 전반적 사항을 총괄 감독하고 타 학생회와 협력, 학교, 교수님들에게 학생들의 의견을 대표자로서 전달한다.</p></td>
                    </tr>

                    <!-- 데이터 행 (2) -->                     
                    <tr style="height: 50px;">
                        <td style="width:20%; border: 1px solid #b8b8b8; border-right: 1px solid #b8b8b8;"><p style="margin:3px 0; font-size:14px; color:#333;">부학생회장</p></td>
                        <td style="width:80%; border: 1px solid #b8b8b8;"><p style="margin:3px 0; font-size:14px; color:#333;">학생회장을 도와 학생회에서 결정된 전반전 업무의 세부사항을 처리하고 학생회장의 업무를 보조하고 학생회장 부재시 학생회장의 임무를 대리 수행한다.</p></td>
                    </tr>

                    <!-- 데이터 행 (3) -->                     
                    <tr style="height: 50px;">
                        <td style="width:20%; border: 1px solid #b8b8b8; border-right: 1px solid #b8b8b8;"><p style="margin:3px 0; font-size:14px; color:#333;">총무</p></td>
                        <td style="width:80%; border: 1px solid #b8b8b8;"><p style="margin:3px 0; font-size:14px; color:#333;">행사 진행에 필요한 물품을 대여하고, 행사 사업 준비를 진행한다.</p></td>
                    </tr>

                    <!-- 데이터 행 (4) -->                     
                    <tr style="height: 50px;">
                        <td style="width:20%; border: 1px solid #b8b8b8; border-right: 1px solid #b8b8b8;"><p style="margin:3px 0; font-size:14px; color:#333;">홍보</p></td>
                        <td style="width:80%;; border: 1px solid #b8b8b8;"><p style="margin:3px 0; font-size:14px; color:#333;">학교 행사와 관련된 정보를 가장 빠르고 정확하게 각종 매체를 통해 대내외적으로 홍보한다.</p></td>
                    </tr>

                    <!-- 데이터 행 (5) -->                     
                    <tr style="height: 50px;">
                        <td style="width:20%; border: 1px solid #b8b8b8; border-right: 1px solid #b8b8b8;"><p style="margin:3px 0; font-size:14px; color:#333;">기획</p></td>
                        <td style="width:80%; border: 1px solid #b8b8b8;"><p style="margin:3px 0; font-size:14px; color:#333;">학과 행사 및 복지에 필요한 장소와 비용을 관리하며, 예산안을 짜고 행사 기획안을 작성한다.</p></td>
                    </tr>
                    </table>

                </div>
              </div>
            
            </div>
        </div>
        <div style="display: flex; width:100%; height: 40px; margin-bottom:28px; align-items: center;"> 
        </div>   
    </main>
</body>
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
</html>