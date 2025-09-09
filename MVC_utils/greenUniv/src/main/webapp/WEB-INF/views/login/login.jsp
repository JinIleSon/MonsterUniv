<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>   
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link rel="stylesheet" href="../css/fonts.css">
    <link rel="stylesheet" href="../css/login_main.style.css">
    <!--css연결-->
    <link rel="stylesheet" href="../css/main_main.style.css">
    <link rel="stylesheet" href="../css/Header.style.css">
    <link rel="stylesheet" href="../css/Footer.style.css">
    <style>
        .whoIs{
             appearance: none;      /* 기본 동그라미 제거 */
            -webkit-appearance: none;
            -moz-appearance: none;
            width: 22px;           /* 크기 조절 */
            height: 22px;
            border-radius: 50%;    /* 원형 */
            background-color: #DFDFDF; /* 기본 배경 (연회색) */
            cursor: pointer;
            margin: 0 8px 0 0;
            vertical-align: middle; 
            border: none;
        }
        .whoIs:checked{
            background-color: #3F97F6; /* 선택 시 파란색 */
            border: 2px solid #3F97F6;
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
    
    <div style="background-color: #ECF2F6; height:42px; display:flex; align-items: center; justify-content: center;">
        <div style="width:250px; height:42px;
            position: absolute; 
            transform: translateX(216%);
            display:flex;
            align-items: center;
            ">
                <img src="../images/ico-home.png" alt="홈" style="width:23px; height:20px;">
                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#333333; margin-left:15px;">회원</span>
                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#071F4B; margin-left:15px;">로그인</span>
        </div>
    </div>        
        
    <!-- 회원가입 성공 팝업창 -->     
    <c:if test="${not empty flash}">
	  <script>
	    alert('${fn:replace(fn:escapeXml(flash), "\'", "\\\'")}');
	  </script>
	</c:if>
    <div class="inner" style="display: flex; justify-content: center; align-items: center; ">
        <div style="height: 630px; position: relative; ">
            <div style="height:41px;"></div>
            <p style="color: #3F97F6; font-weight: 500; font-size:15pt; margin-bottom:5px;">LOGIN</p>
            <p style="color: #3F97F6; margin-top: 0;">로그인을 하시면 더 다양한 서비스를 받으실 수 있습니다.</p>
            <div style=" height: 220px; width: 495px; padding-top:12px; ">                                                              
           
            <form action="${pageContext.request.contextPath}/login/login.do" method="post" accept-charset="UTF-8" autocomplete="off">
			  <!-- 라디오 + 링크 한 줄 정렬 -->
			  <div style="
			       display:flex; align-items:center; justify-content:space-between;
			       gap:12px; margin-bottom:10px; flex-wrap:wrap;">
			
			    <!-- 왼쪽: 역할 선택 -->
			    <div style="display:flex; align-items:center; gap:18px;">
			      <label style="display:inline-flex; align-items:center; gap:6px; font-size:14px; color:#333;">
			        <input type="radio" name="userType" value="STUDENT" class="whoIs" required>
			        <span>학부생</span>
			      </label>
			      <label style="display:inline-flex; align-items:center; gap:6px; font-size:14px; color:#333;">
			        <input type="radio" name="userType" value="STAFF" class="whoIs">
			        <span>교직원</span>
			      </label>
			      <label style="display:inline-flex; align-items:center; gap:6px; font-size:14px; color:#333;">
			        <input type="radio" name="userType" value="GUEST" class="whoIs">
			        <span>일반인</span>
			      </label>
			      <label style="display:inline-flex; align-items:center; gap:6px; font-size:14px; color:#333;">
					<input type="radio" name="userType" value="ADMIN" class="whoIs">
					<span>관리자</span>
				  </label>   
			    </div>
			
			    <!-- 오른쪽: 아이디/비번 링크 -->
			    <div style="display:flex; align-items:center; gap:10px; margin-left:auto;">
			      <a href="${pageContext.request.contextPath}/login/findId.do"
			         style="text-decoration:none; color:#000; font-size:14px;">아이디 찾기</a>
			      <span style="width:1px; height:14px; background:#c9c9c9; display:inline-block;"></span>
			      <a href="${pageContext.request.contextPath}/login/findPw.do"
			         style="text-decoration:none; color:#000; font-size:14px;">비밀번호 재설정</a>
			    </div>
			  </div>
			
			  <input type="text" name="identification" placeholder="아이디"
			         style="width:100%; height:40px; padding-left:10px; margin-bottom:9px; border:1px solid #e5e5e5;"><br>
			  <input type="password" name="password" placeholder="비밀번호"
			         style="width:100%; height:40px; padding-left:10px; margin-bottom:9px; border:1px solid #e5e5e5;">
			  <input type="submit" value="로그인"
			         style="width:100%; height:50px; font-size:13pt; background-color:#3F97F6; border:1px solid #e5e5e5; color:#fff; font-weight:100;">
			</form>
			
                                                                               
                <a href="/greenUniv/login/terms.do" style="text-decoration: none; color:black; float: right; margin-top:10px;">회원가입</a>
            </div>
            <div style="position: absolute; top: 334px; width:600px; z-index:-1;">
                <ul style="list-style-type: '- '; padding-left: 10px;">
                <br>
                <br>
                    <li style="list-style-type: none; margin-left:-10px; margin-bottom: 8px; color:#215075; font-size: 13pt; font-weight: 500; display:flex; align-items: center;">
                        <img src="../images/bullet-h4.png" alt="" style="margin-right:6px; width:4px; height:18px;">아이디, 비밀번호 안내
                    </li>
                    <li style="margin-bottom: 8px; color:#666666; font-size:11pt;">대학 구성원(학원, 교직원)은 회원가입없이 교번, 학번을 사용하여 로그인이 가능합니다.</li>
                    <li style="margin-bottom: 8px; color:#666666; font-size:11pt;">비밀번호 분실시 학생지원팀에 방문하셔서 초기화하실 수 있습니다.</li>
                    <li style="margin-bottom: 8px; color:#666666; font-size:11pt;">재학, 휴학, 졸업 유예인 경우 사용하실 수 있으며, 매년 학적변동이 일어날 때 상태가 변경됩니다.</li>
                    <li style="color:#666666; font-size:11pt;">문의사항이 있으시면 담당자(055-123-4567)에게 전화주세요</li>
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