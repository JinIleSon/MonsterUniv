<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>학사안내::성적</title>
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
            transform: translateX(233%);
            display:flex;
            align-items: center;
            ">
                <img src="../images/ico-home.png" alt="홈" style="width:23px; height:20px;">
                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#333333; margin-left:15px;">학사안내</span>
                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#071F4B; margin-left:15px;">성적</span>
        </div>
    </div>
    <main style="margin-top:50px;">
        <div class="container" style="padding-left:74px; display:flex; justify-content: center; gap:46px !important;">
            <!-- 배너 메뉴 -->
            <div style=" width: 210px;">
                <b style="display:block; font-weight: 700; font-size:32px; margin-bottom: 14px; color:black !important;">학사안내</b>
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
                        <td style="background-color: #5198f9; border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: white; font-weight:300;" class="active">성적</a>
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
            <!-- 본문 -->
             <article class="grade_article">
                <div style=" width:913px !important;">
                    <div style="border-bottom: 2px solid black; font-size: 14pt; line-height: 17px; margin-bottom: 30px; width: 100%;">
                        <h2 style="font-weight: 700; font-size: 26px; color:black !important;"">성적</h2>
                    </div>
                    <div style="font-size: 14pt; height: 20px; line-height: 20px; margin-bottom: 5px; color: #145074; display: flex; align-items: center;">
                        <img src="../images/bullet-h4.png" alt="시험" style="margin-right: 5px; margin-bottom:6px;"><h4 style="font-size:18px; font-weight:500; color:#145074;">시험</h4>
                    </div>
                    <div style="margin-bottom: 30px;">
                        <h6 style="font-size: 12pt; margin: 0; color: #0067B3;">- 시험은 정기시험, 비정기시험, 추가시험, 재시험 등으로 구분</h6>
                        <p style="font-size: 16px; margin-top: 10px; line-height: 30px;">
                            1) 정기시험 : 중간시험과 학기말시험으로 나누며 중간시험은 학기 당 수업일수 2분의 1이 되는 주에 실시하고, 학기말시험은 학기의 최종 주에 실시<br>
                            2) 비정기시험 : 과제학습, 세미나 등 계속적인 학습활동을 평가하는 시험으로 담당교수의 책임 하에 실시<br>
                            3) 추가시험 : 질병 또는 부득이한 사정으로 정기시험에 응시할 수 없는 학생은 사유와 증빙서류를 첨부하여 추가시험신청서를 제출<br>
                        </p>
                    </div>
                    <div style="margin-bottom: 100px;">
                        <h6 style="font-size: 12pt; margin: 0; color: #0067B3;">- 시험 부정행위자의 처리</h6>
                        <p style="font-size: 16x; margin-top: 10px; line-height: 30px;">
                            1) 시험 중 부정행위가 적발되면 감독교수는 그 행위내용을 시험지 상단에 기록하고 날인한 후 즉시 총장에게 보고<br>
                            2) 시험 부정행위자에 대하여는 다음의 내용에 따라 제적 또는 유기정학 처분<br>
                            └ 시험에 대리로 응시하거나 대리응시를 부탁한 경우<br>
                            └ 시험지에 다른 사람의 이름을 쓰거나 쓰게 한 경우<br>
                            └ 부정행위자로 적발되어 징계처분을 받은 사실이 있는 학생이 거듭 부정행위를 한 경우
                        </p>
                    </div>
                    <div style="font-size: 14pt; height: 20px; line-height: 20px; margin-bottom: 5px; color: #145074; display: flex; align-items: center;">
                        <img src="../images/bullet-h4.png" alt="성적" style="margin-right: 5px; margin-bottom:6px;"><h4 style="font-size:18px; font-weight:500; color:#145074;">성적</h4>
                    </div>
                    <div style="margin-bottom: 30px;">
                        <h6 style="font-size: 12pt; margin: 0; color: #0067B3;">- 평가내용</h6>
                        <p style="font-size: 16px; margin-top: 10px; line-height: 30px;">
                            1) 성적평가는 각 교과목의 시험성적, 과제평가, 출석상황 및 학습태도 등을 종합하여 평가<br>
                            2) 출석 및 학습태도 10-20%, 정기시험 50-70%, 비정기시험 및 과제 20-30%로 함을 원칙<br>
                        </p>
                    </div>
                    <div style="margin-bottom: 30px;">
                        <h6 style="font-size: 12pt; margin: 0; color: #0067B3;">- 등급</h6>
                        <div style="margin-top: 10px;">
                            <table style="width: 100%; text-align: center; border:none; border-top: 2px solid black !important; opacity:1 !important;">
                                <tr style="background-color: #F4F8FC;">
                                    <th>등급</th>
                                    <th>평점</th>
                                    <th>백분위 기준점수</th>
                                    <th>비고</th>
                                </tr>
                                <tr>
                                    <td>A+</td>
                                    <td>4.5</td>
                                    <td>99</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>A</td>
                                    <td>4</td>
                                    <td>94</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>B+</td>
                                    <td>3.5</td>
                                    <td>89</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>B</td>
                                    <td>3</td>
                                    <td>84</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>C+</td>
                                    <td>2.5</td>
                                    <td>79</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>C</td>
                                    <td>2</td>
                                    <td>74</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>D+</td>
                                    <td>1.5</td>
                                    <td>69</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>D</td>
                                    <td>1</td>
                                    <td>64</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>F</td>
                                    <td>0</td>
                                    <td>59</td>
                                    <td></td>
                                </tr>
                            </table>
                            <p style="color: #666666;">※ 이수한 교과목의 성적이 D0급 이상 또는 P일 경우는 학점을 취득한 것으로 인정</p>
                        </div>
                    </div>
                </div>
             </article>
        </div>
        <div style="height: 100px;"></div>
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