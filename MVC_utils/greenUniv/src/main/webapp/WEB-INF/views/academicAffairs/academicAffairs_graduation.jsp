<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>학사안내::수료 및 졸업</title>
    <link rel="stylesheet" href="/greenUniv/css/academicAffairs_main.style.css">
	<!--css연결-->
    <link rel="stylesheet" href="/greenUniv/css/main_main.style.css">
    <link rel="stylesheet" href="/greenUniv/css/Header.style.css">
    <link rel="stylesheet" href="/greenUniv/css/Footer.style.css">
    <!--부트스트랩 연결-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/greenUniv/css/fonts.css">
    <style>
    	a {text-decoration:none;}
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
                        <li><a href="/greenUniv/main.do">HOME</a></li>
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
                <a href="/greenUniv/main.do"><img src="/greenUniv/images/mainpage-logo.webp" alt="몬스터대학교 로고" class="logo"/></a>
                
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
        <div style="width:240px; height:42px;
            position: absolute; 
            transform: translateX(194%);
            display:flex;
            align-items: center;
            ">
                <img src="/greenUniv/images/ico-home.png" alt="홈" style="width:23px; height:20px;">
                <img src="/greenUniv/images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#333333; margin-left:15px;">학사안내</span>
                <img src="/greenUniv/images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#071F4B; margin-left:15px;">수료 및 졸업</span>
        </div>
    </div>
        <div class="container" style="margin-top: 50px; padding-left: 74px; gap:60px !important; display: flex; justify-content: center; min-width: 1200px;">
            <!-- 배너 메뉴 -->
            <div style=" width: 210px; flex-shrink: 0;">
                <b style="display:block; font-weight: 700; font-size: 32px; margin-bottom: 14px; color:black !important;"">학사안내</b>
                <table class="banner sidebar" style="border-collapse:collapse; width:100%; border-top:2px solid black;">
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="/greenUniv/academicAffairs/academicAffairs_notice.do" style="color: black;">공지사항</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="/greenUniv/academicAffairs/academicAffairs_schedules.do" style="color: black;">학사일정</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="/greenUniv/academicAffairs/academicAffairs_courseRegist.do" style="color: black;">수강신청</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="/greenUniv/academicAffairs/academicAffairs_grades.do" style="color: black;">성적</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: #5198f9; border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: white; font-weight:300;" class="active">수료 및 졸업</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="/greenUniv/academicAffairs/academicAffairs_FAQ.do" style="color: black;">자주묻는질문</a>
                        </td>
                    </tr>
                </table>
            </div>
            <article class="graduation_article">
                <div style="width: 916px !important;">
                    <div style="font-size: 14pt; line-height: 17px; margin-bottom: 30px; margin-top: 13px;">
                        <h2 style="font-weight: 700; font-size: 26px; color:black !important;"">수료 및 졸업</h2>
                        <hr style="height: 0; background-color: none; opacity: 1; border-top: 2px solid black;">
                    </div>
                    <div style="font-size: 14pt; height: 20px; line-height: 20px; margin-bottom: 5px; color: #145074; display: flex; align-items: center;">
                        <img src="/greenUniv/images/bullet-h4.png" alt="수료기준" style="margin-right: 5px; margin-bottom:6px;"><h4 style="font-size:18px; font-weight:500; color:#145074;">수료기준</h4>
                    </div>
                    <div style="margin-bottom: 60px;">
                        <table style="width: 100%; height: 370px; border:none; border-top: 2px solid black !important; opacity:1 !important;">
                            <tr >
                                <th rowspan="2">구분</th>
                                <th rowspan="2">총 취득학점</th>
                                <th colspan="4">수료 학점</th>
                            </tr>
                            <tr>
                                <th>1학년</th>
                                <th>2학년</th>
                                <th>3학년</th>
                                <th>4학년</th>
                            </tr>
                            <tr>
                                <td>인문대학</td>
                                <td>130이상</td>
                                <td>33</td>
                                <td>66</td>
                                <td>99</td>
                                <td>130</td>
                            </tr>
                            <tr>
                                <td>사회과학대학</td>
                                <td>130이상</td>
                                <td>33</td>
                                <td>66</td>
                                <td>99</td>
                                <td>130</td>
                            </tr>
                            <tr>
                                <td>경영대학</td>
                                <td>130이상</td>
                                <td>33</td>
                                <td>66</td>
                                <td>99</td>
                                <td>130</td>
                            </tr>
                            <tr>
                                <td>자연과학대학</td>
                                <td>130이상</td>
                                <td>33</td>
                                <td>66</td>
                                <td>99</td>
                                <td>130</td>
                            </tr>
                            <tr>
                                <td>정보과학대학</td>
                                <td>130이상</td>
                                <td>33</td>
                                <td>66</td>
                                <td>99</td>
                                <td>130</td>
                            </tr>
                        </table>
                        <p>
                            - 수료기준 : 졸업학점에 따라 학년별 수료학점이 다르며, 각 학년별 수료학점을 취득한 경우 해당 학년에 대한 ‘수료증명서’를 발급 가능
                        </p>
                    </div>
                    <div style="font-size: 14pt; height: 20px; line-height: 20px; margin-bottom: 10px; color: #145074; display: flex; align-items: center;">
                        <img src="/greenUniv/images/bullet-h4.png" alt="조기졸업" style="margin-right: 5px; margin-bottom:6px;"><h4 style="font-size:18px; font-weight:500; color:#145074;">조기졸업</h4>
                    </div>
                    <div style="margin-bottom: 60px;">
                        <table style="height: 210px; border:none; border-top: 2px solid black !important; opacity:1 !important; ">
                            <tr>
                                <th colspan="3">자격</th>
                                <th rowspan="2" style="width: 30%;">신청절차</th>
                            </tr>
                            <tr>
                                <th style="width: 30%;">이수학기</th>
                                <th style="width: 20%;">평점평균</th>
                                <th style="width: 20%;">취득학점</th>
                            </tr>
                            <tr style="height: 50%;">
                                <td style="padding: 10px;">6학기 또는 7학기 이수자로서 해당학기 이수로 모든 졸업요건의 충족이 가능한 자.</td>
                                <td>4.00 이상</td>
                                <td>정규졸업 요구학점과 동일</td>
                                <td>졸업을 원하는 학기초 30일 이내에 “조기 졸업신청서”를 교무팀에 제출</td>
                            </tr>
                        </table>
                        <p>※ 편입생 제외</p>
                    </div>
                    <div style="font-size: 14pt; height: 20px; line-height: 20px; margin-bottom: 10px; color: #145074; display: flex; align-items: center;">
                        <img src="/greenUniv/images/bullet-h4.png" alt="졸업" style="margin-right: 5px; margin-bottom:6px;"><h4 style="font-size:18px; font-weight:500; color:#145074;">졸업</h4>
                    </div>
                    <div>
                        <table style="width: 100%; height: 390px; border:none; border-top: 2px solid black !important; opacity:1 !important;">
                            <tr style="height: 50px;">
                                <th rowspan="2" style="width: 30%;">소속 단과대학</th>
                                <th rowspan="2" style="width: 15%;">총 취득학점</th>
                                <th colspan="3">정공 이수 학점</th>
                            </tr>
                            <tr>
                                <th style="width: 15%; padding: 5px;">복수전공(제1전공 기준동일)</th>
                                <th style="width: 15%;">단일전공</th>
                                <th>부전공</th>
                            </tr>
                            <tr>
                                <td>인문대학</td>
                                <td>130이상</td>
                                <td>33</td>
                                <td>66</td>
                                <td>제1전공42/부전공21</td>
                            </tr>
                            <tr>
                                <td>사회과학대학</td>
                                <td>130이상</td>
                                <td>33</td>
                                <td>66</td>
                                <td>제1전공42/부전공21</td>
                            </tr>
                            <tr>
                                <td>경영대학</td>
                                <td>130이상</td>
                                <td>33</td>
                                <td>66</td>
                                <td>제1전공42/부전공21</td>
                            </tr>
                            <tr>
                                <td>자연과학대학</td>
                                <td>130이상</td>
                                <td>33</td>
                                <td>70</td>
                                <td>제1전공50/부전공25</td>
                            </tr>
                            <tr>
                                <td>정보과학대학</td>
                                <td>130이상</td>
                                <td>33</td>
                                <td>66</td>
                                <td>제1전공42/부전공21</td>
                            </tr>
                        </table>
                        <p>
                            - 등록학기 : 8학기 이상, 의과대학 의학과는 12학기 이상<br> 
                            - 총 성적평점평균 : 2.00 이상<br> 
                            - 졸업논문(또는 졸업종합시험) : 합격
                        </p>
                    </div>
                </div>
            </article>
        </div>
        <div style="height:100px;"></div>
    </main>
    <!--3. 푸터영역-->    
    <footer class="footer">
        <!--상단-->
        <div class="footer-high">
            <div class="footer-high-inner">
                <ul class="footer-high-quicklinks">
                    <li><a href="https://privacy.thewaltdisneycompany.com/ko/">개인정보처리방침</a></li>
                    <li><a href="/greenUniv/AMS/AMS_main.do">통합정보시스템</a></li>
                    <li><a href="/greenUniv/academicAffairs/academicAffairs_schedules.do">학사일정</a></li>
                    <li><a href="/greenUniv/college/college_humanities.do">주요인원 연락처</a></li>
                    <li><a href="/greenUniv/academicAffairs/academicAffairs_notice.do">교내공지사항</a></li>
                </ul>
            </div>
        </div>

        <!--하단-->
        <div class="footer-low">
            <div class="footer-low-inner">
                <div class="footer-logo">
                    <img src="/greenUniv/images/mainpage-logo.webp" alt="몬스터대학교 로고" class="logo"/>
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