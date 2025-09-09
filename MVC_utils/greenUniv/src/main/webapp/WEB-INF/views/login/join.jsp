<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>   

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <!-- head 안에 추가 -->
    <link rel="stylesheet" href="/greenUniv/css/fonts.css">
    <link rel="stylesheet" href="/greenUniv/css/login_main.style.css">
    <!--css연결-->
    <link rel="stylesheet" href="/greenUniv/css/main_main.style.css">
    <link rel="stylesheet" href="/greenUniv/css/Header.style.css">
    <link rel="stylesheet" href="/greenUniv/css/Footer.style.css">
    <style>
    	html, body {
		  height: 100%;      /* 화면 전체 높이 */
		  margin: 0;         /* 기본 여백 제거 */
		  display: flex;
		  flex-direction: column;
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
    
    <div style="background-color: #ECF2F6; height:42px; display:flex; align-items: center; justify-content: center;">
        <div style="width:250px; height:42px;
            position: absolute; 
            transform: translateX(211%);
            display:flex;
            align-items: center;
            ">
                <img src="/greenUniv/images/ico-home.png" alt="홈" style="width:23px; height:20px;">
                <img src="/greenUniv/images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#333333; margin-left:15px;">회원</span>
                <img src="/greenUniv/images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                <span style="font-weight: 350; font-size:14px; color:#071F4B; margin-left:15px;">회원가입</span>
        </div>
    </div>
    
    <div class="inner" style="height: 910px; position: relative; margin: 0 auto; display: flex; justify-content: center; height:100% !important;">
        <div style="width: 990px;">
            <div style="height:41px;"></div>

            <!-- 서버에서 전달한 안내/에러 메시지 출력 예시 -->
            <c:if test="${not empty msg}">
                <p style="color:#0a58ca; font-weight:600; margin:4px 0;">${msg}</p>
            </c:if>
            <c:if test="${not empty error}">
                <p style="color:#d00; font-weight:600; margin:4px 0;">${error}</p>
            </c:if>

            <p style="color: #3F97F6; font-weight: 500; font-size:20px; margin-bottom:3px;">회원가입</p>
            <p style="color: #3F97F6; margin-top:0; margin-bottom:0;">반갑습니다. 몬스터대학교입니다. 회원가입 후 더 많은 정보를 이용하세요.</p>
            <p style="color: #3F97F6; margin-top:2px; margin-bottom:32px;">대학구성원(학생, 교직원)은 회원가입 없이 학번, 교번(사번) 아이디를 사용하여 로그인할 수 있습니다.</p>

            <!-- 폼: 서블릿 매핑 예시 /user/join -->
            <!-- TODO: 프로젝트에 맞게 action 변경 가능 -->
            <form action="${pageContext.request.contextPath}/login/join.do"
      method="post" accept-charset="UTF-8" autocomplete="off" novalidate>           
                <table style="width:100%; border-collapse: collapse;">
                    <tr style="border-bottom:1px #DDDDDD solid; border-top: 2px #071F4B solid;">
                        <td style="width:198px; height:65px; background-color: #F4F8FC; text-align: center; font-weight: 350; border-right:1px solid #DEDEDE;">아이디<font style="color: red;">*</font></td>
                        <td style="width:792px;">
                            <div style="display: flex; align-items: center;">
                                <input type="text" name="identification" placeholder="아이디 입력"
                                       style="width: 308.8px; height: 39px; border: 1px #CCCCCC solid; margin-left:8px; padding-left:8px; font-weight:350; font-size: 14px; padding-bottom:2px; color:#333333;"
                                       minlength="4" maxlength="10" pattern="[A-Za-z0-9]{4,10}" required>
                                <span style="font-weight:350; margin-left:9px; font-size:16px; color:#333333;">영문·숫자 조합 4~10자 이내</span>
                            </div>
                        </td>
                    </tr>

                    <tr style="border-bottom:1px #DDDDDD solid;">
                        <td style="width:198px; height:65px; background-color: #F4F8FC; text-align: center; font-weight: 350; border-right:1px solid #DEDEDE;">비밀번호<font style="color: red;">*</font></td>
                        <td style="width:792px;">
                            <div style="display: flex; align-items: center;">
                                <input type="password" name="password" placeholder="비밀번호 입력"
                                       style="width: 308.8px; height: 39px; border: 1px #CCCCCC solid; margin-left:8px; padding-left:8px; font-weight:350; font-size: 14px; padding-bottom:2px; color:#333333;"
                                       minlength="8" maxlength="16" required>
                                <span style="font-weight:350; margin-left:9px; font-size:16px; color:#333333;">비밀번호는 8-16자리 이내, 영문ㆍ숫자ㆍ특수문자 조합</span>
                            </div>
                        </td>
                    </tr>

                    <tr style="border-bottom:1px #DDDDDD solid;">
                        <td style="width:198px; height:65px; background-color: #F4F8FC; text-align: center; font-weight: 350; border-right:1px solid #DEDEDE;">비밀번호 확인<font style="color: red;">*</font></td>
                        <td style="width:792px;">
                            <div style="display: flex; align-items: center;">
                                <input type="password" name="passwordConfirm" placeholder="비밀번호 확인 입력"
                                       style="width: 308.8px; height: 39px; border: 1px #CCCCCC solid; margin-left:8px; padding-left:8px; font-weight:350; font-size: 14px; padding-bottom:2px; color:#333333;"
                                       minlength="8" maxlength="16" required>
                            </div>
                        </td>
                    </tr>

                    <tr style="border-bottom:1px #DDDDDD solid;">
                        <td style="width:198px; height:65px; background-color: #F4F8FC; text-align: center; font-weight: 350; border-right:1px solid #DEDEDE;">이름<font style="color: red;">*</font></td>
                        <td style="width:792px;">
                            <div style="display: flex; align-items: center;">
                                <input type="text" name="name" placeholder="이름 입력"
                                       style="width: 308.8px; height: 39px; border: 1px #CCCCCC solid; margin-left:8px; padding-left:8px; font-weight:350; font-size: 14px; padding-bottom:2px; color:#333333;"
                                       required>
                            </div>
                        </td>
                    </tr>

                    <tr style="border-bottom:1px #DDDDDD solid;">
                        <td style="width:198px; height:65px; background-color: #F4F8FC; text-align: center; font-weight: 350; border-right:1px solid #DEDEDE;">휴대폰<font style="color: red;">*</font></td>
                        <td style="width:792px;">
                            <div style="display: flex; align-items: center;">
                                <input type="tel" name="phone" placeholder="휴대폰 입력 (예: 010-1234-5678)"
                                       style="width: 308.8px; height: 39px; border: 1px #CCCCCC solid; margin-left:8px; padding-left:8px; font-weight:350; font-size: 14px; padding-bottom:2px; color:#333333;"
                                       pattern="^01[0-9]-\d{3,4}-\d{4}$" required>
                            </div>
                        </td>
                    </tr>

                    <tr style="border-bottom:1px #DDDDDD solid;">
                        <td style="width:198px; height:65px; background-color: #F4F8FC; text-align: center; font-weight: 350; border-right:1px solid #DEDEDE;">이메일<font style="color: red;">*</font></td>
                        <td style="width:792px;">
                            <div style="display: flex; align-items: center;">
                                <input type="email" name="email" placeholder="이메일 입력"
                                       style="width: 308.8px; height: 39px; border: 1px #CCCCCC solid; margin-left:8px; padding-left:8px; font-weight:350; font-size: 14px; padding-bottom:2px; color:#333333;"
                                       required>
                            </div>
                        </td>
                    </tr>

                    <tr style="border-bottom:1px #DDDDDD solid;">
                        <td style="width:198px; height:155px; background-color: #F4F8FC; text-align: center; font-weight: 350; border-right:1px solid #DEDEDE;">주소</td>
                        <td style="width:792px;">
                            <div style="display: flex; align-items: center;">
                                <div>
                                    <!-- 우편번호/주소는 프로젝트 정책에 맞게 변경 -->
                                    <input type="button" value="우편번호 선택" id="btnPostcode"
                                           style="background-color:#FFFFFF; width: 110px; height: 39px; border: 1px #CCCCCC solid; margin-left:8px; padding-left:8px; font-weight:350; font-size: 14px; padding-bottom:2px; color:#333333; margin-bottom:5px;"><br>
                                    <input type="text" name="zip" id="zip" placeholder="우편번호"
                                           style="width: 150px; height: 39px; border: 1px #CCCCCC solid; margin-left:8px; padding-left:8px; font-weight:350; font-size: 14px; margin-bottom:5px;" readonly>
                                    <input type="text" name="addr1" id="addr1" placeholder="기본주소"
                                           style="width: 300px; height: 39px; border: 1px #CCCCCC solid; padding-left:8px; font-weight:350; font-size: 14px; margin-bottom:5px;" readonly><br>
                                    <input type="text" name="addr2" id="addr2" placeholder="상세주소 입력"
                                           style="width: 463.19px; height: 39px; border: 1px #CCCCCC solid; margin-left:8px; padding-left:8px; font-weight:350; font-size: 14px;">
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>

                <div style="height:100px; margin-top:10px;">
                    <span style="color:red; font-weight: 350; font-size: 15px;">*</span>
                    <span style="color:#666666; font-weight: 350; font-size: 15px;"> 필수입력</span>

                    <div style="float:right; margin-top:20px;">
                        <button type="button" onclick="history.back();" 
                                style="background-color: #8B8B8B; border:none; color:white; width: 56px; height: 48px; font-size: 18px; font-weight: 300;">
                            취소
                        </button>
                        <button type="submit" 
                        style="background-color: #3F97F6; border:none; color:white; width: 92px; height: 48px; font-size: 18px; font-weight: 300; margin-left:6px;">
                            회원가입
                        </button>
                    </div>
                </div>
            </form>
            
            <!-- Daum 우편번호 API 로드 -->
			<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
			
			<script>
			  document.getElementById("btnPostcode").addEventListener("click", function(){
			    new daum.Postcode({
			      oncomplete: function(data) {
			        // 선택한 우편번호와 주소 정보를 input에 넣기
			        document.getElementById("zip").value   = data.zonecode;   // 우편번호
			        document.getElementById("addr1").value = data.address;    // 기본주소
			        document.getElementById("addr2").focus();                 // 상세주소로 커서 이동
			      }
			    }).open();
			  });
			</script>
            
            <div></div>
        </div>
    </div>

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