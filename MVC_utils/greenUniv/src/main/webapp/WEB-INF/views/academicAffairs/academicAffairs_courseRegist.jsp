<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>학사안내::수강신청</title>
    <link rel="stylesheet" href="../css/academicAffairs_main.style.css">
    <!--css연결-->
    <link rel="stylesheet" href="../css/main_main.style.css">
    <link rel="stylesheet" href="../css/Header.style.css">
    <link rel="stylesheet" href="../css/Footer.style.css">
    <!--부트스트랩 연결-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/fonts.css">
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
    
    <div style="background-color: #ECF2F6; height:42px; display:flex; align-items: center; justify-content: center;">
        <div style="width:220px; height:42px;
            position: absolute; 
            transform: translateX(221%);
            display:flex;
            align-items: center;
            ">
                <img src="../images/ico-home.png" alt="홈" style="width:23px; height:20px;">
                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#333333; margin-left:15px;">학사안내</span>
                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#071F4B; margin-left:15px;">수강신청</span>
        </div>
    </div>
    <main style="margin-top:50px;">
        
        <div class="container" style="padding-left:30px; display:flex; gap:45px !important; justify-content: center;">
            <!-- 배너 메뉴 -->
            <div style=" width: 210px;">
                <b style="display:block; font-weight: 700; font-size:32px; margin-bottom: 14px; color:black !important;"">학사안내</b>
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
                        <td style="background-color: #5198f9; border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: white; font-weight:300;" class="active">수강신청</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="/greenUniv/academicAffairs/academicAffairs_grades.do" style="color: black;">성적</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="/greenUniv/academicAffairs/academicAffairs_graduation.do" style="color: black;">수료 및 졸업</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="/greenUniv/academicAffairs/academicAffairs_FAQ.do" style="color: black;">자주묻는질문</a>
                        </td>
                    </tr>
                </table>
            </div>
            <article class="CR_article">
                <div style=" width: 910px;">
                    <div style="border-bottom: 2px solid black; font-size: 14pt; line-height: 17px; margin-bottom: 30px;">
                        <h2 style="font-weight: 700; font-size: 26px; color:black !important;"">수강신청</h2>
                    </div>
                    <div style="margin-bottom: 60px; margin-top: 30px;">
                        <div style="font-size: 14pt; height: 20px; line-height: 20px; margin-bottom: 5px; color: #145074; display: flex; align-items: center;">
                            <img src="../images/bullet-h4.png" alt="수강신청기간" style="margin-right: 5px; margin-bottom:6px;"><h4 style="font-size:18px; font-weight:500; color:#145074;">수강신청기간</h4>
                        </div>
                        <div>
                                - 매학기 수강신청은 개강 전에 실시, 학생은 수강신청 공고를 충분히 숙지한 다음, 수강신청 기간에 인터넷을 통해 신청과목을 입력<br>
                                - 필요한 경우 학과사무실의 학사상담이나 지도교수의 지도를 받을 수 있으며, 반드시 학년별 지정된 날짜에 수강신청 완료<br>
                                - 자세한 설명은 학사일정 공지사항 게시판 참조
                        </div>
                    </div>
                    <div style="margin-bottom: 60px;">
                        <div style="font-size: 14pt; height: 20px; line-height: 20px; margin-bottom: 5px; color: #145074; display: flex; align-items: center;">
                            <img src="../images/bullet-h4.png" alt="수강신청 학점" style="margin-right: 5px; margin-bottom:6px;"><h4 style="font-size:18px; font-weight:500; color:#145074;">수강신청 학점</h4>
                        </div>
                        <div>- 학기당 이수학점 : 18학점 이내(논문과목 별도) [대학 학칙 제20조]</div>
                    </div>
                    <div style="margin-bottom: 60px;">
                        <div style="font-size: 14pt; height: 20px; line-height: 20px; margin-bottom: 5px; color: #145074; display: flex; align-items: center;">
                            <img src="../images/bullet-h4.png" alt="학부(과)별 신청 학점" style="margin-right: 5px; margin-bottom:6px;"><h4 style="font-size:18px; font-weight:500; color:#145074;">학부(과)별 신청 학점</h4>
                        </div>
                        <div style="border-top: 2px solid black;">
                            <table style="text-align: center;">
                                <tr style="height: 50px; background-color: #f4f8fc; box-shadow: 1px 1px #dedede;">
                                    <td colspan="2" style="box-shadow: 1px 1px #dedede;">수강신청 학점수</td>
                                    <td style="box-shadow: 1px 1px #dedede;">대상학부(과)</td>
                                </tr>
                                <tr style="height: 115px;">
                                    <td style="width: 33%; box-shadow: 1px 1px #dedede;">졸업학점이 130점인 학부(과)</td>
                                    <td style="width: 33%; box-shadow: 1px 1px #dedede;">최저 12학점, 최대 18학점</td>
                                    <td style="text-align: center; padding: 10px; box-shadow: 1px 1px #dedede;">
                                        인문대학, 사회과학대학, 경영대학, 공과대학,
                                        자연과학대학, 간호대학, 글로벌융합대학, 소프트웨어융합대학,
                                        미디어스쿨, 데이터과학융합스쿨, 나노융합스쿨, 미래융합스쿨
                                    </td>
                                </tr>
                                <tr style="height: 60px;">
                                    <td style="box-shadow: 1px 1px #dedede;">졸업학점이 135-140학점인 학부(과)</td>
                                    <td style="box-shadow: 1px 1px #dedede;">최저 15학점, 최대 21학점</td>
                                    <td style="box-shadow: 1px 1px #dedede;">의과대학 의예과(수료학점은 72이상)</td>
                                </tr>
                                <tr style="height: 60px;">
                                    <td style="box-shadow: 1px 1px #dedede;">졸업학점이 150학점인 학부(과)</td>
                                    <td style="box-shadow: 1px 1px #dedede;">최저 15학점, 최대 26학점</td>
                                    <td style="box-shadow: 1px 1px #dedede;">의과대학 의학과</td>
                                </tr>
                            </table>
                            <p>
                                - 4학년 1학기에는 12학점 이상, 최종학기에는 1과목 이상 수강신청 하여야 한다.<br>
                                - 직전학기 성적이 3.75 이상인 학생은 최대학점에서 3학점까지 초과 이수할 수 있다.<br>
                                - 장학생 선발은 직전학기에 평점평균 2.0 이상을 취득하여야 하며, 대학별 기준학점 이상을 이수하여야 한다.(학생지원팀 055-123-1010 문의)
                            </p>
                        </div>
                    </div>
                    <div style="margin-bottom: 60px;">
                        <div style="font-size: 14pt; height: 20px; line-height: 20px; margin-bottom: 5px; color: #145074; display: flex; align-items: center;">
                            <img src="../images/bullet-h4.png" alt="수강신청 변경 및 수강과목 철회" style="margin-right: 5px; margin-bottom:6px;"><h4 style="font-size:18px; font-weight:500; color:#145074;">수강신청 변경 및 수강과목 철회</h4>
                        </div>
                        <div>
                            <p>
                                - 수강 신청한 과목을 철회하고자 할 때에는 수업주수 4분의 1이전까지 정해진 기간에 해당 교과목을 해당 사이트를 통하여 철회할 수 있음<br>
                                - 학기당 2과목까지 철회할 수 있으나, 철회로 수강인원이 폐강기준인원 미만이 되는 교과목은 수강철회를 불허<br>
                                - 철회 후 수강신청학점이 학기당 최저 이수학점 이상이 되어야 함
                            </p>
                        </div>
                    </div>
                    <div style="border: 1px solid gray; width: 150px; height: 40px; text-align: center; display: flex; align-items: center; justify-content: center; padding-bottom: 3px;">
                        <a href="#" style="color: black; display: flex; align-items: center;">수강신청하기&nbsp;&nbsp;&nbsp;<img src="../images/bg-link.png" alt="수강신청하기" style="margin-top: 3px;"></a>
                    </div>
                    <div style="height:100px;"></div>
                </div>
            </article>
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