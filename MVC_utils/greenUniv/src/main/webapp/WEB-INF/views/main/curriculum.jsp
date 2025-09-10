<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>교과과정</title> 
  <!--부트스트랩 연결-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/fonts.css">
  <!-- 공용 폰트/스타일 -->
  <link rel="stylesheet" href="/greenUniv/css/fonts.css">
  <link rel="stylesheet" href="/greenUniv/css/main_main.style.css">
  <link rel="stylesheet" href="/greenUniv/css/Header.style.css">
  <link rel="stylesheet" href="/greenUniv/css/Footer.style.css">
</head>
<body>
<!--로그인 성공 팝업-->
<c:if test="${not empty sessionScope.FLASH_MSG}">
  <script>
    alert('${fn:replace(fn:escapeXml(sessionScope.FLASH_MSG), "\'", "\\\'")}');
  </script>
  <c:remove var="FLASH_MSG" scope="session"/>
</c:if>
    <!--1.헤더영역-->
    <header>
        <!--상단메뉴(HOME/사이트맵/로그인/학생지원)-->
        <div class="topbar">
            <div class="inner">
                <div class="log-area">
                    <ul>
                        <li><a href="/greenUniv/main.jsp">HOME</a></li>
                        <li><a href="/greenUniv/about/about_location.do">사이트맵</a></li>
                        <c:choose>
						    <c:when test="${not empty sessionScope.LOGIN_USER}">
						      <li><a href="${pageContext.request.contextPath}/login/logout.do">로그아웃</a></li>
						    </c:when>
						    <c:otherwise>
						      <li><a href="${pageContext.request.contextPath}/login/login.do">로그인</a></li>
						    </c:otherwise>
						</c:choose>
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
                        <li data-menu="admission"><a href="/greenUniv/admissionGuide/admissionGuide_notice.do">입학안내</a></li>
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
                    <ul>
                        <li><a href="/greenUniv/community/community_announcement.do">공지사항</a></li>
                        <li><a href="/greenUniv/community/community_newsAndColumn.do">뉴스 및 칼럼</a></li>
                        <li><a href="/greenUniv/community/community_freeDiscussionBoard.do">자유게시판</a></li>
                        <li><a href="/greenUniv/community/community_QnA.do">Q&amp;A</a></li>
                        <li><a href="/greenUniv/community/community_referenceLibrary.do">자료실</a></li>
                    </ul>
                </div>
            </div>    
        </div>
    </header>




  <main class="curriculum">
  <div class="inner" style="max-width:1080px;margin:0 auto;padding:24px 12px;">

    <!-- 제목 -->
    <h1 style="font-size:44px; font-weight:800; letter-spacing:-0.02em; margin:8px 0 28px;">교과과정</h1>

    <!-- 안내 문구 -->
    <section style="line-height:1.8; color:#374151; font-size:15px; margin-bottom:12px;">
      <p>몬스터대 교과과정에 대한 해설과<br>
        전공 및 과정별 교과목에 대한 상세 정보를 제공합니다.</p>
      <p>교과과정은 학사과정과 대학원과정으로 구분하며 학과(부) 또는 전공단위로 편성되며,<br>
        학사과정은 교양교육을 위주로 하는 기초과정과 전공교육을 위주로 하는 전공과정으로 구분됩니다.</p>
    </section>

    <!-- 각주 -->
    <p style="margin:6px 0 22px; color:#9ca3af; font-size:12px;">※ 아래 몬스터대 교과과정은 2024년 기준입니다.</p>

    <!-- 큰 다운로드 버튼 -->
    <div style="margin:12px 0 36px;">
      <a href="#" class="btn-download"
         style="display:inline-flex;align-items:center;gap:10px;background:#1f6feb;color:#fff;
                padding:12px 18px;border-radius:10px;font-weight:700;text-decoration:none;">
        교과과정 해설 다운로드
        <svg width="18" height="18" viewBox="0 0 24 24" aria-hidden="true">
          <path d="M12 16l-5-5h3V4h4v7h3l-5 5zM5 20h14v-2H5v2z" fill="currentColor"/>
        </svg>
      </a>
    </div>

    <!-- 구분선 -->
    <hr style="border:none;border-top:1px solid #e5e7eb;margin:0 0 24px;">

    <!-- 섹션 제목 1 -->
    <h2 style="display:flex;align-items:center;gap:10px;font-size:18px;margin:0 0 14px;">
      <span style="display:inline-block;width:4px;height:18px;background:#111827;border-radius:2px;"></span>
      학사 교과과정 상세 정보
    </h2>

    <!-- 작은 다운로드 버튼 2개 -->
    <div style="display:flex;flex-direction:column;gap:12px;margin-bottom:40px; max-width:420px;">
      <a href="#" class="btn-download"
         style="display:flex;justify-content:space-between;align-items:center;background:#1f6feb;color:#fff;
                padding:10px 14px;border-radius:10px;font-weight:600;text-decoration:none;">
        <span>교과목 개요(학사) 다운로드</span>
        <svg width="18" height="18" viewBox="0 0 24 24" aria-hidden="true">
          <path d="M12 16l-5-5h3V4h4v7h3l-5 5zM5 20h14v-2H5v2z" fill="currentColor"/>
        </svg>
      </a>

      <a href="#" class="btn-download"
         style="display:flex;justify-content:space-between;align-items:center;background:#1f6feb;color:#fff;
                padding:10px 14px;border-radius:10px;font-weight:600;text-decoration:none;">
        <span>전공별 교과목(학사) 다운로드</span>
        <svg width="18" height="18" viewBox="0 0 24 24" aria-hidden="true">
          <path d="M12 16l-5-5h3V4h4v7h3l-5 5zM5 20h14v-2H5v2z" fill="currentColor"/>
        </svg>
      </a>
    </div>
    
      <!-- 섹션 제목 2-->
    <h2 style="display:flex;align-items:center;gap:10px;font-size:18px;margin:0 0 14px;">
      <span style="display:inline-block;width:4px;height:18px;background:#111827;border-radius:2px;"></span>
      석사 교과과정 상세 정보
    </h2>

    <!-- 작은 다운로드 버튼 2개 -->
    <div style="display:flex;flex-direction:column;gap:12px;margin-bottom:40px; max-width:420px;">
      <a href="#" class="btn-download"
         style="display:flex;justify-content:space-between;align-items:center;background:#1f6feb;color:#fff;
                padding:10px 14px;border-radius:10px;font-weight:600;text-decoration:none;">
        <span>교과목 개요(석사) 다운로드</span>
        <svg width="18" height="18" viewBox="0 0 24 24" aria-hidden="true">
          <path d="M12 16l-5-5h3V4h4v7h3l-5 5zM5 20h14v-2H5v2z" fill="currentColor"/>
        </svg>
      </a>

      <a href="#" class="btn-download"
         style="display:flex;justify-content:space-between;align-items:center;background:#1f6feb;color:#fff;
                padding:10px 14px;border-radius:10px;font-weight:600;text-decoration:none;">
        <span>전공별 교과목(석사) 다운로드</span>
        <svg width="18" height="18" viewBox="0 0 24 24" aria-hidden="true">
          <path d="M12 16l-5-5h3V4h4v7h3l-5 5zM5 20h14v-2H5v2z" fill="currentColor"/>
        </svg>
      </a>
    </div>
  </div>
  
<!--3. 푸터영역-->    
    <footer class="footer">
        <!--상단-->
        <div class="footer-high">
            <div class="footer-high-inner">
                <ul class="footer-high-quicklinks">
                    <li><a href="https://privacy.thewaltdisneycompany.com/ko/">개인정보처리방침</a></li>
                    <c:choose>
						<c:when test="${sessionScope.LOGIN_USER eq 'admin'}">
							<li><a href="/greenUniv/AMS/AMS_main.do">통합정보시스템</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="#" onclick="alert('통합정보시스템 접근 권한이 없습니다!'); return false;">통합정보시스템</a></li> <!-- 알림창 생각중 -->
						</c:otherwise>
					</c:choose>
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
</main>
</body>
</html>
