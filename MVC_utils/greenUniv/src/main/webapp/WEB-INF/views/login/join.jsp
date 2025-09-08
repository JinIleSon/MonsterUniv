<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	    <!-- 상단 옅은 바 -->
    <div style="background-color: #ECF2F6; height:42px; display:flex; align-items: center; justify-content: center;"></div>

    <div class="inner" style="height: 910px; position: relative; margin: 0 auto; display: flex; justify-content: center;">
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

            <div></div>
        </div>
    </div>
</body>
</html>