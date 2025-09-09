<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>학생지원_수강신청내역</title>
    <link rel="stylesheet" href="/greenUniv/css/fonts.css">
    <link rel="stylesheet" href="/greenUniv/studAssist_css/main.style.css">
    <!--css연결-->
    <link rel="stylesheet" href="/greenUniv/css/Header.style.css">
    <link rel="stylesheet" href="/greenUniv/css/Footer.style.css">
    <style>
    	html, body {
		  height: 100%;      /* 화면 전체 높이 */
		  margin: 0;         /* 기본 여백 제거 */
		  display: flex;
		  flex-direction: column;
		}
		
		/* main 영역은 남은 공간 차지 */
		main {
		  flex: 1;
		}
        /* 전체 컨테이너 위치 조정 */
        .container{
            margin: 0 auto;
            width: 1210px;
        }
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

            background: url('/greenUniv/images/btn-sel-open01.png') 
                        no-repeat right 8px center/12px auto;
            padding-right: 24px;  /* 화살표 공간 확보 */
        }
        /* 게시판 아래버튼 부분 */
        .first-page{
            background: url('/greenUniv/images/btn-first-page.png') no-repeat center;
            border: 1px #eaeaea solid;
            width: 33px;
            height: 30px;
            margin-right:3px;
        }
        .prev-page{
            background: url('/greenUniv/images/btn-prev-page.png') no-repeat center;
            border: 1px #eaeaea solid;
            margin-right: 15px;
            width: 33px;
            height: 30px;
        }
        .next-page{
            background: url('/greenUniv/images/btn-next-page.png') no-repeat center;
            border: 1px #eaeaea solid;
            margin-left: 15px;
            width: 33px;
            height: 30px;
            margin-right:3px;
        }
        .last-page{
            background: url('/greenUniv/images/btn-last-page.png') no-repeat center;
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
                <a href="/greenUniv/main.jsp"><img src="/greenUniv/images/mainpage-logo.webp" alt="몬스터대학교 로고" class="logo"/></a>
                
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
            transform: translateX(201%);
            display:flex;
            align-items: center;
            ">
                <img src="/greenUniv/images/ico-home.png" alt="홈" style="width:23px; height:20px;">
                <img src="/greenUniv/images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#333333; margin-left:15px;">커뮤니티</span>
                <img src="/greenUniv/images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#071F4B; margin-left:15px;">공지사항</span>
        </div>
    </div>
    <div style="height: 1040px;" class = "inner">
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
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: black;">교과과정</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: black;">성적조회</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: #5198f9; border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: white; font-weight: 300;">학적</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div style="padding-top:9px; width: 930px;">
                <div style="padding-bottom:6px;">
                    <b style="font-weight: 700; font-size:26px;">학적</b>
                </div>
                <hr style="border:none; border-top: 2px solid;">
                <div style="display: flex; width:100%; margin-top:30px; margin-bottom:7px; align-items: center;">
                    <img src="/greenUniv/images/bullet-h4.png" alt="" style="margin-right:6px; width:4px; height:18px; margin-top:5px;"><span style="color:#145074; font-size:18px; font-weight: 500;">기본정보</span>
                </div>
                <table style="border-collapse: collapse; border:none; width: 100%; height:202px; text-align: center; font-size:16px;">
                    <tr style="height:50px;">
                        <td rowspan="4" style="border-top: 2px #071F4B solid; border-right: 1px #DEDEDE solid; border-left:none; border-bottom: 1px #DEDEDE solid;"><img src="/greenUniv/images/icon-avatar.png" alt=""></td>
                        <td style=" border-top: 2px #071F4B solid;width:186px; background-color:#F4F8FC; font-weight: 600; border-right: 1px #DEDEDE solid; border-bottom: 1px #DEDEDE solid;">학번</td>
                        <td style=" border-top: 2px #071F4B solid;width:186px; border-right: 1px #DEDEDE solid; border-bottom: 1px #DEDEDE solid;">202001230</td>
                        <td style=" border-top: 2px #071F4B solid;width:186px; background-color: #F4F8FC; font-weight: 600; border-right: 1px #DEDEDE solid; border-bottom: 1px #DEDEDE solid;">학과</td>
                        <td style=" border-top: 2px #071F4B solid;width:186px; border-bottom: 1px #DEDEDE solid;">컴퓨터공학과</td>
                    </tr>
                    <tr style="height:50px;">
                        <td style="width:186px; background-color:#F4F8FC; font-weight: 600; border-right: 1px #DEDEDE solid; border-bottom: 1px #DEDEDE solid;">이름</td>
                        <td style="width:186px; border-right: 1px #DEDEDE solid; border-bottom: 1px #DEDEDE solid;">홍길동</td>
                        <td style="width:186px; background-color: #F4F8FC; font-weight: 600; border-right: 1px #DEDEDE solid; border-bottom: 1px #DEDEDE solid;">주민번호</td>
                        <td style="width:186px; border-bottom: 1px #DEDEDE solid;">900103-1234567</td>
                    </tr>
                    <tr style="height:50px;">
                        <td style="width:186px; background-color:#F4F8FC; font-weight: 600; border-right: 1px #DEDEDE solid; border-bottom: 1px #DEDEDE solid;">휴대폰</td>
                        <td style="width:186px; border-right: 1px #DEDEDE solid; border-bottom: 1px #DEDEDE solid;">010-1234-1001</td>
                        <td style="width:186px; background-color: #F4F8FC; font-weight: 600; border-right: 1px #DEDEDE solid; border-bottom: 1px #DEDEDE solid;">EMAIL</td>
                        <td style="width:186px; border-bottom: 1px #DEDEDE solid;">hong1001@naver.com</td>
                    </tr>
                    <tr style="height:50px;">
                        <td style="width:186px; background-color:#F4F8FC; font-weight: 600; border-right: 1px #DEDEDE solid; border-bottom: 1px #DEDEDE solid;">학년/학기</td>
                        <td style="width:186px; border-right: 1px #DEDEDE solid; border-bottom: 1px #DEDEDE solid;">3학년/1학기</td>
                        <td style="width:186px; background-color: #F4F8FC; font-weight: 600; border-right: 1px #DEDEDE solid; border-bottom: 1px #DEDEDE solid;">상태</td>
                        <td style="width:186px; border-bottom: 1px #DEDEDE solid; color:#198515;">재학중</td>
                    </tr>
                </table>
                <div style="display: flex; width:100%; margin-top:50px; margin-bottom:7px; align-items: center;">
                    <img src="/greenUniv/images/bullet-h4.png" alt="" style="margin-right:6px; width:4px; height:18px; margin-top:2px;"><span style="color:#145074; font-size:18px; font-weight: 500;">취득학점현황</span>
                </div>
                <table style="border-collapse: collapse; border:none; width: 100%; text-align: center; font-size:16px;">
                    <tr style="border-top: 2px #071F4B solid; border-right: 1px #DEDEDE solid; border-left:none; border-bottom: 1px #DEDEDE solid; height:50px; background-color: #F4F8FC; border-right:none;">
                        <td style="width:110px; border-right: 1px #DEDEDE solid; font-weight: 500;">구분</td>
                        <td style="width:110px; border-right: 1px #DEDEDE solid; font-weight: 500;">전공(7)</td>
                        <td style="width:110px; border-right: 1px #DEDEDE solid; font-weight: 500;">교양(6)</td>
                        <td style="width:110px; border-right: 1px #DEDEDE solid; font-weight: 500;">선택(1)</td>
                        <td style="width:110px; border-right: 1px #DEDEDE solid; font-weight: 500;">사회봉사</td>
                        <td style="width:110px; border-right: 1px #DEDEDE solid; font-weight: 500;">기타</td>
                        <td style="width:110px; border-right: 1px #DEDEDE solid; font-weight: 500;">총취득학점</td>
                        <td style="font-weiht: 500;">졸업요건학점</td>
                    </tr>
                    <tr style="height:50px; border-bottom: 1px #DEDEDE solid;">
                        <td style="border-right: 1px #DEDEDE solid;">취득학점</td>
                        <td style="border-right: 1px #DEDEDE solid;">21</td>
                        <td style="border-right: 1px #DEDEDE solid;">16</td>
                        <td style="border-right: 1px #DEDEDE solid;">3</td>
                        <td style="border-right: 1px #DEDEDE solid;">0</td>
                        <td style="border-right: 1px #DEDEDE solid;">0</td>
                        <td style="border-right: 1px #DEDEDE solid;">40</td>
                        <td style="">130</td>
                    </tr>
                </table>
                <div style="margin-top: 10px; color:#666666;">- 각 괄호안의 숫자는 이수 과목수</div>
                <div style="display: flex; width:100%; margin-top:50px; margin-bottom:7px; align-items: center;">
                    <img src="/greenUniv/images/bullet-h4.png" alt="" style="margin-right:6px; width:4px; height:18px;"><span style="color:#145074; font-size:18px; font-weight: 500;">년도/학기별 취득학점현황</span>
                </div>
                <table style="border-collapse: collapse; border:none; width: 100%; text-align: center; font-size:16px;">
                    <tr style="border-top: 2px #071F4B solid; border-right: 1px #DEDEDE solid; border-left:none; border-bottom: 1px #DEDEDE solid; height:50px; background-color: #F4F8FC; border-right:none;">
                        <td style="width:93px; border-right: 1px #DEDEDE solid; font-weight: 600;">년도</td>
                        <td style="width:93px; border-right: 1px #DEDEDE solid; font-weight: 600;">학년</td>
                        <td style="width:93px; border-right: 1px #DEDEDE solid; font-weight: 600;">학기</td>
                        <td style="width:93px; border-right: 1px #DEDEDE solid; font-weight: 600;">신청학점</td>
                        <td style="width:93px; border-right: 1px #DEDEDE solid; font-weight: 600;">전공학점</td>
                        <td style="width:93px; border-right: 1px #DEDEDE solid; font-weight: 600;">선택학점</td>
                        <td style="width:93px; border-right: 1px #DEDEDE solid; font-weight: 600;">기타학점</td>
                        <td style="width:93px; border-right: 1px #DEDEDE solid; font-weight: 600;">총취득학점</td>
                        <td style="width:93px; border-right: 1px #DEDEDE solid; font-weight: 600;">평점평균</td>
                        <td style="width:93px; font-weight: 600;">기타</td>
                    </tr>
                    <tr style="height:50px; border-bottom: 1px #DEDEDE solid;">
                        <td style="border-right: 1px #DEDEDE solid;">2020</td>
                        <td style="border-right: 1px #DEDEDE solid;">1</td>
                        <td style="border-right: 1px #DEDEDE solid;">1</td>
                        <td style="border-right: 1px #DEDEDE solid;">18</td>
                        <td style="border-right: 1px #DEDEDE solid;">15</td>
                        <td style="border-right: 1px #DEDEDE solid;">3</td>
                        <td style="border-right: 1px #DEDEDE solid;">0</td>
                        <td style="border-right: 1px #DEDEDE solid;">18</td>
                        <td style="border-right: 1px #DEDEDE solid;">3.2</td>
                        <td style="font-weight: 350;"></td>
                    </tr>
                    <tr style="height:50px; border-bottom: 1px #DEDEDE solid;">
                        <td style="border-right: 1px #DEDEDE solid;">2020</td>
                        <td style="border-right: 1px #DEDEDE solid;">1</td>
                        <td style="border-right: 1px #DEDEDE solid;">2</td>
                        <td style="border-right: 1px #DEDEDE solid;">18</td>
                        <td style="border-right: 1px #DEDEDE solid;">15</td>
                        <td style="border-right: 1px #DEDEDE solid;">3</td>
                        <td style="border-right: 1px #DEDEDE solid;">0</td>
                        <td style="border-right: 1px #DEDEDE solid;">18</td>
                        <td style="border-right: 1px #DEDEDE solid;">3.2</td>
                        <td style="font-weight: 350;"></td>
                    </tr>
                    <tr style="height:50px; border-bottom: 1px #DEDEDE solid;">
                        <td style="border-right: 1px #DEDEDE solid;">2021</td>
                        <td style="border-right: 1px #DEDEDE solid;">2</td>
                        <td style="border-right: 1px #DEDEDE solid;">1</td>
                        <td style="border-right: 1px #DEDEDE solid;">18</td>
                        <td style="border-right: 1px #DEDEDE solid;">18</td>
                        <td style="border-right: 1px #DEDEDE solid;">0</td>
                        <td style="border-right: 1px #DEDEDE solid;">0</td>
                        <td style="border-right: 1px #DEDEDE solid;">18</td>
                        <td style="border-right: 1px #DEDEDE solid;">4.2</td>
                        <td style="font-weight: 350;"></td>
                    </tr>
                    <tr style="height:50px; border-bottom: 1px #DEDEDE solid;">
                        <td style="border-right: 1px #DEDEDE solid;">2021</td>
                        <td style="border-right: 1px #DEDEDE solid;">2</td>
                        <td style="border-right: 1px #DEDEDE solid;">2</td>
                        <td style="border-right: 1px #DEDEDE solid;">18</td>
                        <td style="border-right: 1px #DEDEDE solid;">18</td>
                        <td style="border-right: 1px #DEDEDE solid;">0</td>
                        <td style="border-right: 1px #DEDEDE solid;">0</td>
                        <td style="border-right: 1px #DEDEDE solid;">18</td>
                        <td style="border-right: 1px #DEDEDE solid;">4.2</td>
                        <td style="font-weight: 350;"></td>
                    </tr>
                </table>
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