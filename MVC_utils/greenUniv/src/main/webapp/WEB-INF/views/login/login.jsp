<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>   

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
     <%-- login.jsp 상단, 폼 위쪽 어딘가 --%>
	<c:choose>
	  <%-- 1) URL 파라미터로 온 성공/실패 메시지 --%>
	  <c:when test="${not empty param.msg}">
	    <div style="background:#f8f9fa; border:1px solid #ddd; padding:10px; margin:12px 0;
	                color:${param.code == '200' ? '#087f5b' : '#d6336c'};">
	      ${param.msg}
	    </div>
	  </c:when>
	
	  <%-- 2) 컨트롤러에서 forward로 준 에러 메시지 (request attribute) --%>
	  <c:when test="${not empty error}">
	    <div style="background:#fff5f5; border:1px solid #ff8787; padding:10px; margin:12px 0; color:#d6336c;">
	      ${error}
	    </div>
	  </c:when>
	</c:choose>
                    
    <div class="inner" style="display: flex; justify-content: center; align-items: center; ">
        <div style="height: 630px; position: relative; ">
            <div style="height:41px;"></div>
            <p style="color: #3F97F6; font-weight: 500; font-size:15pt; margin-bottom:5px;">LOGIN</p>
            <p style="color: #3F97F6; margin-top: 0;">로그인을 하시면 더 다양한 서비스를 받으실 수 있습니다.</p>
            <div style=" height: 220px; width: 495px; padding-top:12px; ">                                                                 
                    <form action="${pageContext.request.contextPath}/login/login.do" method="post" accept-charset="UTF-8" autocomplete="off" novalidate>
                        <div style="display: flex; align-items: center; margin-bottom:10px;">
                            <input type="radio" name="userType" value="STUDENT" class="whoIs"><span style="margin-right:10px;">학부생</span> <!-- radio 타입 input name속성 바꿀 것-->
                            <input type="radio" name="userType" value="STAFF" class="whoIs"><span style="margin-right:10px;">교직원</span>
                            <input type="radio" name="userType" value="GUEST" class="whoIs"><span style="margin-right:10px;">일반인</span>
                            <a href="#" style="text-decoration: none; color: black; margin-left:95px;">아이디/비밀번호 찾기</a>
                        </div>
                        <input type="text" name="identification" placeholder="아이디" style="width: 100%; height: 40px; padding-left: 10px; margin-bottom:9px; border: 1px solid #e5e5e5;"/><br>
                        <input type="password" name="password" placeholder="비밀번호" style="width: 100%; height: 40px; padding-left: 10px; margin-bottom:9px; border: 1px solid #e5e5e5;"/>
                        <input type="submit" value="로그인" style="width: 100%; height: 50px; font-size: 13pt; background-color: #3F97F6; border: 1px solid #e5e5e5; color: white; font-weight: 100;"/>
                    </form>
                <a href="/greenUniv/login/terms.do" style="text-decoration: none; color:black; float: right; margin-top:10px;">회원가입</a>
            </div>
            <div style="position: absolute; top: 334px; width:600px; z-index:-1;">
                <ul style="list-style-type: '- '; padding-left: 10px;">
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
    
</body>
</html>