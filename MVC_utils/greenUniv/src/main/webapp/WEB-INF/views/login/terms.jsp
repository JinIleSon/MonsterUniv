<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>   

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>약관안내</title>
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
		
		/* main 영역은 남은 공간 차지 */
		main {
		  flex: 1;
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
                        <li><a href="/greenUniv/main.do">HOME</a></li>
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
    <main>
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
                <span style="font-weight: 350; font-size:14px; color:#071F4B; margin-left:15px;">약관안내</span>
        </div>
    </div>
    <div class="inner" style="height: 820px; position: relative; margin: 0 auto; display: flex; justify-content: center; height:100% !important;">
        <div style="width: 990px;">
            <div style="height:42px;"></div>
            <p style="color: #3F97F6; font-weight: 500; font-size:20px; margin-bottom:3px; font-weight: 500;">약관안내</p>
            <p style="color: #3F97F6; margin-top:0px; margin-bottom:0px;">※ 대학구성원(학생, 교직원)은 회원가입 없이 학번, 교번(사번) 아이디를 사용하여 로그인할 수 있습니다</p>
            <p style="color: #3F97F6; margin-top:2px; margin-bottom:32px;">※ 만 14세 미만 아동의 경우 홈페이지 회원가입에 제한이 있습니다.</p>

            <table style="width:100%; border-collapse: collapse; ">
                <tr style="border-bottom:1px #DDDDDD solid; border-top: 2px #071F4B solid;">
                    <td style="width:198px; height:226px; background-color: #F4F8FC; text-align: center; font-weight: 400; border-right:1px #DDDDDD solid;">이용약관</td>
                    <td style="">
                        <div style="display: flex; justify-content: center; align-items: center;">
                            <div style="border:1px #DDDDDD solid; width: 760px; height: 200px; overflow-y: auto; padding-top:12px; padding-left:12px; font-weight: 500; font-size: 13.3px;">
                                <b>제 1 조 (목적)</b><br>
                                본 약관은 몬스터대학교 사이트가 제공하는 모든 서비스(이하 "서비스")의 이용조건 및 절차, 이용자와 몬스터대학교 사이트의 권리, 의무, 책임사항과 기타 필요한 사항을 규정함을 목적으로 합니다.<br><br>
                                <b>제2조(회원약관의 효력)</b><br>
                                본 약관은 몬스터대학교 사이트의 회원가입 시 회원들에게 공지하고 동의함으로서 효력이 발생한다.<br><br>
                                <b>제3조(회원약관의 수정)</b><br>
                                몬스터대학교 사이트는 본 약관을 변경할 수 있으며 변경되는 약관은 화면에 게재하여 회원들에게 공지함으로써 효력이 발생한다.<br><br>
                                <b>제4조(이용계약의 체결)</b><br>
                                회원가입 시 회원 약관 밑에 있는 동의버튼을 누르면 약관에 동의하여 이 계약이 체결된 것으로 간주한다.<br><br>
                                <b>제5조(회원가입)</b><br>
                                회원가입은 몬스터대학교 사이트의 회원 가입 신청 양식에 가입 희망 회원이 본인정보를 이용하여 인터넷으로 신청 즉시 가입이 승인되어 서비스를 이용할 수 있다.<br><br>
                                <b>제6조(회원정보의 변경)</b><br>
                                회원은 아래 각 호의 1에 해당하는 사항이 변경되었을 경우 즉시 정보수정의 관리페이지에서 이를 변경하여야 한다. 몬스터대학교는 회원이 회원정보를 변경하지 아니하여 발생한 손해에 대하여 책임을 부담하지 아니한다.<br><br>
                                1. 휴대폰번호<br>
                                2. 이메일<br><br>
                                <b>제7조(이용제한 등)</b><br>
                                몬스터대학교는 회원이 이 약관의 의무를 위반하거나 서비스의 정상적인 운영을 방해한 경우, 경고, 일시정지, 영구이용정지 등으로 서비스 이용을 제한할 수 있다.<br><br>
                                <b>제8조(회원의 의무)</b><br>
                                ①회원의 아이디와 비밀번호의 관리와 책임은 회원에게 있으며 관리소홀과 부정사용으로 인한 모든 사항은 회원에게 귀책된다.<br>
                                ②이용회원은 몬스터대학교 사이트의 서비스를 불법으로 복제 유통시킬 수 없으며 이 경우 민형사상의 책임을 지게 된다.<br>
                                1. 신청 또는 변경 시 허위내용의 등록<br>
                                2. 타인의 정보도용<br>
                                3. 몬스터대학교가 게시한 정보의 변경<br>
                                4. 몬스터대학교와 기타 제3자의 저작권 등 지적재산권에 대한 침해<br>
                                5. 몬스터대학교 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위<br>
                                6. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 서비스에 공개 또는 게시하는 행위<br>
                                7. 몬스터대학교의 동의 없이 영리를 목적으로 서비스를 사용하는 행위<br>
                                8. 기타 불법적이거나 부당한 행위<br><br>
                                <b>제9조(몬스터대학교 사이트의 의무)</b><br>
                                몬스터대학교 사이트는 서비스제공과 관련된 이용회원의 정보를 회원의 허락없이 타인에게 누설하지 않는다. 다만 몬스터대학교 웹 서비스 이용약관을 위배하는 회원이나 몬스터대학교 웹 서비스를 이용하여 타인에게 법적인 피해를 주거나 미풍양속을 해치는 행위를 한 회원 등에게 법적인 조치를 취하기 위하여 개인정보를 공개해야 한다고 판단되는 충분한 근거가 있는 경우는 예외로 한다. 이 경우에도 개인에게는 제공되지 않으며 규정된 절차에 따라서 수사기관에만 제공할 수 있다.<br><br>
                                <b>제10조(서비스 이용시간)</b><br>
                                몬스터대학교 사이트의 인터넷 서비스는 년중무휴로 1일 24시간 운영된다. 단, 설비보수공사 등의 사유나 운영상의 이유로 서비스를 일시중지 할 수 있다. 이때 몬스터대학교 사이트에 사전공지를 하여 회원들에게 알린다.<br><br>
                                <b>제11조(회원의 탈퇴)</b><br>
                                회원이 서비스 탈퇴신청을 하면 몬스터대학교 사이트에서는 바로 회원탈퇴를 승인한다. 탈퇴신청은 회원이 직접 탈퇴를 선택해야만 가능하다.<br><br>
                                <b>제12조(게시물의 저작권)</b><br>
                                ①이용회원이 게시한 게시물의 내용에 대한 권리는 게시자에게 있다.<br>
                                ②몬스터대학교 사이트는 게시된 내용을 사전 통지 없이 편집, 이동할 수 있는 권리를 보유하며, 게시판운영 원칙에 따라 사전 통지 없이 삭제할 수 있다.<br>
                                ③회원의 게시물이 타인의 저작권을 침해함으로써 발생하는 민󰋯형사상의 책임은 전적으로 게시자가 부담 하여야 한다.<br><br>
                                <b>제13조(게시물의 관리)</b><br>
                                ①회원의 게시물이 정보통신망법 및 저작권법등 관련법에 위반되는 내용을 포함하는 경우, 권리자는 관련법이 정한 절차에 따라 해당 게시물의 게시중단 및 삭제 등을 요청할 수 있으며, 학교는 관련법에 따라 조치를 취하여야 한다.<br>
                                ②몬스터대학교는 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 기타 몬스터대학교 정책 및 관련법에 위반되는 경우에는 관련법에 따라 해당 게시물에 대해 임시조치 등을 취할 수 있다.<br>
                                ③몬스터대학교에서 운영하는 게시판은 아래에 대한 게시물의 경우 삭제 및 임시조치 등을 취할 수 있다.<br>
                                1. 게시판 성격에 맞지 않는 게시물<br>
                                2. 개인의 인신공격 및 인권과 명예회손 관련 게시물<br>
                                3. 불건전한 언어 및 폭력적 언어를 사용한 게시물<br>
                                4. 몬스터대학교 이외의 특정단체나 제품, 행사의 홍보 및 상업적 광고를 담고 있는 게시물<br>
                                5. 법과 사회윤리에 반하는 내용의 게시물<br><br>
                                <b>제14조(재판관할)</b><br>
                                몬스터대학교 사이트와 회원간 분쟁이 발생할 경우 몬스터대학교 사이트의 소재지 법원을 관할 법원으로 한다.<br><br>
                                <b>[부칙]</b><br>
                                이 약관은 2009년 9월 16일부터 시행한다.<br><br>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr style="border-bottom:1px #DDDDDD solid;">
                    <td style="width:198px; height:226px; background-color: #F4F8FC; text-align: center; font-weight: 400; border-right:1px #DDDDDD solid;">개인정보 수집안내</td>
                    <td style="">
                        <div style="display: flex; justify-content: center; align-items: center;">
                            <div style="border:1px #DDDDDD solid; width: 760px; height: 200px; overflow-y: auto; padding-top:12px; padding-left:12px; font-weight: 500; font-size: 13.3px;">
                                <b>몬스터대학교 홈페이지는 회원가입에 필요한 최소한의 개인정보를 수집하며, 이에 대한 동의를 얻고 있습니다.</b><br><br>

                                <b>1. 수집하는 개인정보 항목</b><br>
                                - 필수항목 : 이름, 아이디, 비밀번호, 생년월일, 휴대폰번호<br>
                                - 선택항목 : 전화번호, 이메일, 소속기관<br>
                                - 컴퓨터에 의해 자동 수집되는 항목 : 접속IP정보, 서비스이용기록, 접속로그<br><br>
                                <b>2. 개인정보의 수집 및 이용목적</b><br>
                                몬스터대학교 홈페이지는 수집한 개인정보를 다음의 목적을 위해 활용합니다.<br>
                                - 회원관리 : 회원제 서비스 이용에 따른 본인 확인, 불만처리 등 민원처리, 고지사항 전달<br><br>
                                <b>3. 개인정보의 보유 및 이용기간</b><br>
                                몬스터대학교 홈페이지의 회원정보 보유기간은 2년이며, 회원가입일로부터 2년이 경과하거나 회원탈퇴 시 보유하고 있는 개인정보를 지체 없이 파기합니다. 단, 2년 경과 시 개인정보 수집 및 이용 재동의절차를 거쳐 개인정보의 보유 및 이용기간을 연장할 수 있습니다.<br><br>
                                <b>4. 동의를 거부할 권리가 있으며, 동의 거부에 따른 불이익(회원가입불가)이 있습니다.(선택항목은 동의 거부를 하여도 별도 불이익이 없습니다.)</b><br>
                                개인정보보호법 제15조에 따라 위 각호 사항을 고지 받고 개인정보 처리에 동의합니다.<br><br>
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
            <div>
            <form id="termsForm" action="/greenUniv/login/join.do" method="get">
			  <label style="display:flex; align-items:center; margin-top:6px;">
			    <input type="checkbox" name="agreeAll" id="agreeAll" required
			           style="border:1px #767676 solid; width:20px; height:20px; margin-right:5px;">
			    <span>위의 홈페이지 이용에 따른 회원가입 약관 및 개인정보 수집·이용에 모두 동의합니다.</span>
			  </label>
			
			  <div style="float:right; margin-top:-1px;">
			    <input type="button" value="취소"
			           onclick="history.back()"
			           style="background-color:#8B8B8B; border:none; color:white; width:56px; height:48px; font-size:18px;">
			           
			    <input type="button" id="nextBtn" value="다음" 
			           style="background-color:#3F97F6; border:none; color:white; width:56px; height:48px; font-size:18px;">
			  </div>
			</form>
                
            <script>
            
            const form   = document.getElementById('termsForm');
            const agree  = document.getElementById('agreeAll');
            const nextBtn= document.getElementById('nextBtn');     
				        		
			nextBtn.addEventListener('click', () => {
		    if (agree.checked) {
		      form.submit();             
		    } else {
		      alert('약관 및 개인정보 수집·이용에 동의해주세요.');
		      nextBtn.style.transform = 'scale(0.98)';
		      setTimeout(()=> nextBtn.style.transform = 'scale(1)', 120);
		    }
			});
			</script>
			
			
            </div>
            <div>

            </div>
        </div>

    </div>
    </main>
    <!--3. 푸터영역-->    
    <footer class="footer" style="margin-top:100px;">
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