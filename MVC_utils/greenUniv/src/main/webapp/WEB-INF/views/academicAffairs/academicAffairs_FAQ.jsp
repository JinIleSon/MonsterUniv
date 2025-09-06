<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>학사안내::자주묻는질문</title>
    <link rel="stylesheet" href="../css/fonts.css">
    <link rel="stylesheet" href="../css/academicAffairs_main.style.css">
</head>
<body>
     <!--1.헤더영역-->
    <header>
        <!--상단메뉴(HOME/사이트맵/로그인/학생지원)-->
        <div class="topbar">
            <div class="inner">
                <div class="log-area">
                    <ul>
                        <li><a href="#">HOME</a></li>
                        <li><a href="#">사이트맵</a></li>
                        <li><a href="#">로그인</a></li>
                        <li><a href="#">학생지원</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="mainNav">
            <div class="inner">
                <!--로고-->
                <img src="../images/mainpage-logo.webp" alt="몬스터대학교 로고" class="logo"/>

                <!--메인메뉴(대학소개/입학안내/대학.대학원/대학생활/커뮤니티)-->
                <div class="menu-area">
                    <ul>
                        <li><a href="#">대학소개</a></li>
                        <li><a href="#">입학안내</a></li>
                        <li><a href="#">대학·대학원</a></li>
                        <li><a href="#">학사안내</a></li>
                        <li><a href="#">대학생활</a></li> 
                        <li style="position: relative;">
                            <a href="#">커뮤니티</a>
                            <div style="width:197.25px; height:42px;
                              position: absolute; top: 205%;
                              transform: translateX(-65%);
                              display:flex;
                              align-items: center;
                              ">
                                <img src="../images/ico-home.png" alt="홈" style="width:23px; height:20px;">
                                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                                <span style="font-weight: 350; font-size:14px; color:#333333; margin-left:15px;">학사안내</span>
                                <img src="../images/bg-path-arrow.png" alt="화살표" style="width:8px; height:13px; margin-left:15px;">
                                <span style="font-weight: 350; font-size:14px; color:#071F4B; margin-left:15px;">수강신청</span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <div style="background-color: #ECF2F6; height:42px; display:flex; align-items: center; justify-content: center;">
    </div>
    <main>
        <div class="container" style="padding-left: 60px;">
            
            <!-- 배너 메뉴 -->
            <div style=" width: 210px;">
                <b style="display:block; font-weight: 700; font-size:32px; margin-bottom: 14px;">학사안내</b>
                <table class="banner" style="border-collapse:collapse; width:100%; border-top: 2px solid black;">
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: black;">공지사항</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: black;">학사일정</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: black;">수강신청</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: black;">성적</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: black;">수료 및 졸업</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: #5198f9; border-bottom: 1px solid #e9e9e9;">
                            <a href="#" style="color: white; font-weight:300;">자주묻는질문</a>
                        </td>
                    </tr>
                </table>
            </div>
            <article class="faq_article">
                <div>
                    <div style="border-bottom: 2px solid #595959; font-size: 14pt; line-height: 17px; margin-bottom: 45px; width: 100%;">
                        <h2 style="font-weight: 700; font-size: 26px;">자주묻는질문</h2>
                    </div>
                    <div style="font-size: 14pt; height: 20px; line-height: 20px; margin-bottom: 10px; color: #145074; display: flex; align-items: center;">
                        <img src="../images/bullet-h4.png" alt="휴·복학 관련" style="margin-right: 5px;"><h4>휴·복학 관련</h4>
                    </div>
                    <div style="margin-bottom: 50px;">
                        <table style="width: 100%; border-collapse: collapse; border-top: 4px solid black;">
                            <tr>
                                <td>
                                    <a href="#" style="display: flex; align-items: center; line-height: 10px; color: black;">
                                        <div class="faq_ico qstn">Q</div>
                                        일반휴학 연장은 몇 학기까지 가능한가요?
                                    </a>
                                </td>
                            </tr>
                            <tr class="ansr">
                                <td>
                                    <a href="#" style="display: flex; align-items: center; line-height: 10px; color: black;">
                                        <div class="faq_ico ansr">A</div>
                                        휴학연장은 1회에 2학기 가능하고 총 6학기 휴학 가능합니다.
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#" style="display: flex; align-items: center; line-height: 10px; color: black;">
                                        <div class="faq_ico qstn">Q</div>
                                        복학하려고 하는데 어떻게 신청하나요?
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#" style="display: flex; align-items: center; line-height: 10px; color: black;">
                                        <div class="faq_ico qstn">Q</div>
                                        등록금 납부해서 등록 후 일반 휴학 가능한가요? 환불은 언제 되나요?
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#" style="display: flex; align-items: center; line-height: 10px; color: black;">
                                        <div class="faq_ico qstn">Q</div>
                                        군휴학 내려면 입영통지서 말고 어떤 서류가 필요하나요?
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="font-size: 14pt; height: 20px; line-height: 20px; margin-bottom: 10px; color: #145074; display: flex; align-items: center;">
                        <img src="../images/bullet-h4.png" alt="교과 및 학사 관련" style="margin-right: 5px;"><h4>교과 및 학사 관련</h4>
                    </div>
                    <div style="margin-bottom: 50px;">
                        <table style="width: 100%; border-collapse: collapse; border-top: 4px solid black;">
                            <tr>
                                <td>
                                    <a href="#" style="display: flex; align-items: center; line-height: 10px; color: black;">
                                        <div class="faq_ico qstn">Q</div>
                                        학과별 교과과정과 학사안내를 확인하고 싶은데, 어떻게 확인할 수 있나요?
                                    </a>
                                </td>
                            </tr>
                            <tr class="ansr">
                                <td>
                                    <a href="#" style="display: flex; align-items: center; line-height: 10px; color: black;">
                                        <div class="faq_ico ansr">A</div>
                                        홈페이지 내 대학요람(대학생활 안내)를 통해 해당 입학년도, 해당학과의 교과과정과 학사안내를 확인하세요.
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#" style="display: flex; align-items: center; line-height: 10px; color: black;">
                                        <div class="faq_ico qstn">Q</div>
                                        복수전공 취소 또는 부전공 전환 신청은 어떻게 하나요?
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#" style="display: flex; align-items: center; line-height: 10px; color: black;">
                                        <div class="faq_ico qstn">Q</div>
                                        수강 신청은 어떻게 하나요?
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="font-size: 14pt; height: 20px; line-height: 20px; margin-bottom: 10px; color: #145074; display: flex; align-items: center;">
                        <img src="../images/bullet-h4.png" alt="휴·복학 관련" style="margin-right: 5px;"><h4>휴·복학 관련</h4>
                    </div>
                    <div style="margin-bottom: 50px;">
                        <table style="width: 100%; border-collapse: collapse; border-top: 4px solid black;">
                            <tr>
                                <td>
                                    <a href="#" style="display: flex; align-items: center; line-height: 10px; color: black;">
                                        <div class="faq_ico qstn">Q</div>
                                        4학년 2학기에도 최소 12학점을 수강해야 하나요?
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#" style="display: flex; align-items: center; line-height: 10px; color: black;">
                                        <div class="faq_ico qstn">Q</div>
                                        9학기 이상 등록자는 수강신청학점에 따라 등록금이 달라지나요?
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#" style="display: flex; align-items: center; line-height: 10px; color: black;">
                                        <div class="faq_ico qstn">Q</div>
                                        수강 신청은 어떻게 하나요?
                                    </a>
                                </td>
                            </tr>
                            <tr class="ansr">
                                <td>
                                    <a href="#" style="display: flex; align-items: center; line-height: 10px; color: black;">
                                        <div class="faq_ico ansr">A</div>
                                        수강신청 안내를 참고하시기 바랍니다.
                                    </a>
                                </td>
                            </tr>
                        </table>
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