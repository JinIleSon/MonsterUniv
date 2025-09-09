<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>학사관리시스템::학생등록</title>
    <!--css연결-->
	<link rel="stylesheet" href="../css/Header.style.css">
	<link rel="stylesheet" href="../css/Footer.style.css">
    <style>
        @font-face {
            font-family: 'NotoSansKR-Light';
            src: url('../font/NotoSansKR-Light.otf') format('opentype');
            font-weight: 350;
            font-style: DemiLight;
        }
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'NotoSansKR-Light';
        }
        .inner {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        /* ================================
        Header
        ================================ */
        header {
        width: 100%;
        border-bottom: 1px solid #ddd;
        }

        /* ---------- 상단 유틸바 ---------- */
        .topbar {
        background-color: #1e2732;
        margin: 0;
        }
        .topbar .inner {
        height: 27px;
        display: flex;
        align-items: center;
        }

        /* 로그인/회원 등 오른쪽 메뉴 */
        .log-area {
        margin: 0;
        padding: 0;
        list-style: none;
        display: flex;
        gap: 14px;
        margin-left: auto; /* 오른쪽 끝으로 */
        }
        .log-area ul {
        display: flex;
        justify-content: flex-end;
        gap: 15px;
        list-style: none;
        margin: 0;
        padding: 0;
        }
        .log-area a {
        text-decoration: none;
        font-size: 12px;
        color: #b8c2cf;
        transition: color 0.2s ease;
        }
        .log-area a:hover {
        color: #fff;
        }

        /* ---------- 로고 ---------- */
        .logo {
        height: 77px;
        display: block;
        }

        /* ---------- 메인 네비게이션 ---------- */
        .mainNav .inner {
        height: 77px;
        display: flex;
        align-items: center;
        justify-content: space-between; /* 로고 왼쪽 / 메뉴 오른쪽 */
        }

        /* 메뉴 그룹 */
        .menu-area {
        display: flex;
        justify-content: flex-end;
        }
        .menu-area ul {
        display: flex;
        align-items: center;
        gap: 30px;
        list-style: none;
        margin: 0;
        padding: 0;
        }
        .menu-area a {
        text-decoration: none;
        font-size: 18px;
        color: #333;
        transition: color 0.2s ease;
        }
        .menu-area a:hover {
        color: rgb(80, 101, 133);
        }
        /* ================================
        footer
        ================================ */
        /* 색상 변수 */
        :root {
        --footer-bg: #141b23;          /* 메인 배경 */
        --footer-top-bg: #1e2732;      /* 상단 퀵링크 배경 */
        --footer-text: #b8c2cf;        /* 기본 텍스트 */
        --footer-muted: #8893a1;       /* 흐린 텍스트 */
        --footer-line: rgba(255,255,255,0.2);
        --footer-link: #d7dee8;
        --footer-link-hover: white;    /* 호버 텍스트 */
        }

        .footer { background: var(--footer-bg); color: var(--footer-text); }

        /* 상단 퀵링크 */
        .footer-high { background: var(--footer-top-bg); }
        .footer-high-inner {
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 20px;
        }
        .footer-high-quicklinks {
        display: flex; justify-content: center; gap: 32px;
        list-style: none; margin: 0; padding: 12px 0;
        position: relative;
        }
        .footer-high-quicklinks li {
        position: relative; padding: 6px 0 8px;
        }
        .footer-high-quicklinks li + li::before {
        content: ""; position: absolute; left: -16px; top: 50%;
        transform: translateY(-50%);
        width: 1px; height: 16px; background: var(--footer-line);
        }
        .footer-high-quicklinks a {
        color: var(--footer-link); text-decoration: none; font-size: 14px;
        }
        .footer-high-quicklinks a:hover { color: var(--footer-link-hover); }

        /* 하단 영역 */
        .footer-low { border-top: 1px solid var(--footer-line); }
        .footer-low-inner {
        max-width: 1200px;
        margin: 0 auto;
        padding: 24px 20px 36px;
        display: grid;
        grid-template-columns: 160px 1fr 220px; /* 로고 / 정보 / 셀렉트 */
        gap: 24px;
        align-items: start;
        }

        /* 로고 */
        .footer-logo img {
        display: block; width: 140px; height: auto; opacity: .85;
        }

        /* 학교 정보 */
        .footer-info { line-height: 1.7; }
        .footer-info .footer-uniname {
        margin: 0 0 6px; color: #e5ecf5; font-weight: 600; font-size: 15px;
        }
        .footer-info p {
        margin: 0 0 6px; color: var(--footer-text); font-size: 13px;
        }
        .footer-info .copy {
        margin-top: 10px; color: var(--footer-muted); font-size: 12px;
        }

        /* 셀렉트 박스 */
        .footer-select {
        margin-left: auto; display: flex; justify-content: flex-end;
        }
        .footer-select select {
        width: 100%; max-width: 220px; height: 36px;
        border: 0; outline: none;
        background: #111820; color: #dfe6f1;
        padding: 0 12px; border-radius: 4px;
        box-shadow: inset 0 0 0 1px rgba(255,255,255,0.15);
        }
        .footer-select select:hover {
        box-shadow: inset 0 0 0 1px rgba(255,255,255,0.25);
        cursor: pointer;
        }

        /* 접근성용 라벨 */
        .sr-only {
        position: absolute; width: 1px; height: 1px;
        padding: 0; margin: -1px;
        overflow: hidden; clip: rect(0,0,0,0);
        white-space: nowrap; border: 0;
        }
        .container {
            display: flex;
            width: 1400px;
            height: 840px;
            margin: 0 auto;
        }
        .sidebar {
            background-color: #eaeaea;
            border: 1px solid #C0C0C0;
            display:inline-block;
            width: 269px;
            height: 840px;
            margin-left: 1px;
        }
        .menu {
            margin-left:15px;
        }
        .sidebar .menu h3 {
            margin:9px 0px 9px 0px;
        }
        .sidebar h3 img {
             width: 1em;   
            height: 1em;
            vertical-align: middle; 
            margin-right: 2px;
        }
        .sidebar .menu ul {
            list-style: none; 
            margin-top: 9px;
            padding: 0px 0px 0px 30px;
        }
        .menu ul li::before {
            content: "•";
            font-size: 0.6em;
            margin-right: 8px;
            position: relative;
            top: -2px;
        }
        .menu ul li {
            cursor: pointer;
            height: 26px;
            /* height: 30px; */
        }
        .menu1 {
            width: 269px;
            height: 102px;
        } 
        .menu2 {
            width: 269px;
            height: 222px;
        } 
        .menu3 {
            width: 269px;
            height: 132px;
        } 
        .menu4 {
            width: 269px;
            height: 102px;
        } 
        .menu5 {
            width: 269px;
            height: 252px;
        } 
        .main-content {
            flex: 1;
        }
        .main-title {
            align-items: center;
            border-bottom: 1px solid #C0C0C0;
            display: flex;
            height: 46px;
            justify-content: space-between;
            margin-top: 20px;
            margin-left: 20px;
            padding-bottom: 10px;
            width: 1090px;
        }
        .main-title p span {
            color: #145074;
        }

        .basic-info1 {
            height: 24px;
            margin-top: 18px;
            margin-left: 20px;
        }
        .basic-info2 {
            border-left: 4px solid #145074;
            box-sizing: border-box;
            display: inline;
            height: 5px;
        }
        .basic-info2 span {
            box-sizing: border-box;
            color: #145074;
            margin-left: 5px;
        }

        /* 기본정보 1번째  */
        .main-lecture1 {
            border-top: 1px solid #8798A3;
            height: 335px;
            margin-top: 15px;
            margin-left: 20px;
            width: 1090px;
        }
        .main-lecture1 .profile-photo {
            align-items: center;
            display: flex;
            float:left;
            height:186.5px;
            justify-content: center;
            width:163.34px;   
        }
        .main-lecture1 .list1 {
            display:flex;
            height: 46.5px;
            width: 925.65px;
        }   
        .main-lecture1 .list1 div {
            display:flex;
            height: 46.5px;
        }
        .main-lecture1 .list1 div:nth-child(1) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 163.34px;
        }
        .main-lecture1 .list1 div:nth-child(2) {
            align-items: center;   
            border: 1px solid #E5E5E5;
            color: #BC2E13;
            font-size: 13px;
            justify-content:left;
            padding-left: 12.5px;
            text-align: center;
            width: 301.02px;
        }
        .main-lecture1 .list1 div:nth-child(3) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 163.34px; 
        }
        .main-lecture1 .list1 div:nth-child(4) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 297.95px;
        }
        .main-lecture1 .list1 div:nth-child(4) input[type=text] {
            height: 33px;
            padding-left: 6px;
            width: 200px;
        }

        /* 기본정보 2번째  */
        .main-lecture1 .list2 {
            display:flex;
            height: 46px;
            width: 925.65px;
        }   
        .main-lecture1 .list2 div {
            display:flex;
            height: 46px;
        }
        .main-lecture1 .list2 div:nth-child(1) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 163.34px;
        }

        .main-lecture1 .list2 div:nth-child(2) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 301.02px;
        }
        .main-lecture1 .list2 div:nth-child(2) input[type=text] {
            height: 33px;
            padding-left: 12.5px;
            width: 150px;
        }

        .main-lecture1 .list2 div:nth-child(3) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 163.34px; 
        }

        .main-lecture1 .list2 div:nth-child(4) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 297.95px;
        }
        .main-lecture1 .list2 div:nth-child(4) input[type=text] {
            height: 33px;
            padding-left: 6px;
            width: 200px;
        }

        /* 기본정보 3번째  */
        .main-lecture1 .list3 {
            display:flex;
            height: 48px;
            width: 925.65px;
        }   
        .main-lecture1 .list3 div {
            display:flex;
            height: 48px;
        }
        .main-lecture1 .list3 div:nth-child(1) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 163.34px;
        }

        .main-lecture1 .list3 div:nth-child(2) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 301.02px;
        }
        .main-lecture1 .list3 div:nth-child(2) label {
            width: 50px;
            height: 19px;
        }
        .main-lecture1 .list3 div:nth-child(2) input[type=radio] {
            margin-right: 15px;
        }

        .main-lecture1 .list3 div:nth-child(3) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 163.34px;
        }

        .main-lecture1 .list3 div:nth-child(4) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 297.95px;
        }
        .main-lecture1 .list3 div:nth-child(4) select {
            height: 35px;
            padding-left: 10px;
            width: 150px;
        }

        /* 기본정보 4번째  */
        .main-lecture1 .list4 {
            display:flex;
            height: 46px;
            width: 925.65px;
        }   
        .main-lecture1 .list4 div {
            display:flex;
            height: 46px;
        }
        .main-lecture1 .list4 div:nth-child(1) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 163.34px;
        }
        .main-lecture1 .list4 div:nth-child(2) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 301.02px;
        }
        .main-lecture1 .list4 div:nth-child(2) input[type=text] {
            height: 33px;
            width: 150px;
        } 
        .main-lecture1 .list4 div:nth-child(3) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 163.34px;
        }
        .main-lecture1 .list4 div:nth-child(4) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 297.95px;
        }

        /* 기본정보 5번째  */
        .main-lecture1 .list5 {
            display:flex;
            height: 116px;
            width: 1089px;
        }   
        .main-lecture1 .list5 div {
            display:flex;
            height: 116px;
        }
        .main-lecture1 .list5 div:nth-child(1) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 163.34px;
        }
        .main-lecture1 .list5 div:nth-child(2) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 163.34px;
        }

        .main-lecture1 .list5 div:nth-child(3) {
            align-items: center;
            flex-direction: column;  
            align-items: flex-start;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 762.31px;
        }
        #address1 {
            width: 150px;
            height: 33px;
            margin-top: 6.5px;
            margin-bottom: 2px;
            padding-left: 6px;
        }
        #address2, #address3 {
            width: 400px;
            height: 33px;
            margin-bottom: 2px;
            padding-left: 6px;
        }

        .class-info1 {
            height: 24px;
            margin-top: 18px;
            margin-left: 20px;
        }
        .class-info2 {
            border-left: 4px solid #145074;
            box-sizing: border-box;
            display: inline;
            height: 5px;
        }
        .class-info2 span {
            box-sizing: border-box;
            color: #145074;
            margin-left: 5px;
        }

        /* 학적정보 입력 */
        .main-lecture2 {
            border-top: 1px solid #8798A3;
            height: 146px;
            margin-top: 15px;
            margin-left: 20px;
            width: 1090px;
            position: relative;
        }
        /* 입학년도, 졸업년도 */
        .main-lecture2 .list6 {
            display:flex;
            height: 48.5px;
            width: 1089px;
        }   
        .main-lecture2 .list6 div {
            display:flex;
            height: 48.5px;
        }
        .main-lecture2 .list6 div:nth-child(1) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 163.34px;
        }

        .main-lecture2 .list6 div:nth-child(2) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 381.16px;
        }
        .main-lecture2 .list6 div:nth-child(2) select {
            height: 35px;
            padding-left: 6px;
            width:150px;
        }

        .main-lecture2 .list6 div:nth-child(3) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 163.34px;
        }

        .main-lecture2 .list6 div:nth-child(4) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 381.16px;
        }
        .main-lecture2 .list6 div:nth-child(4) select {
            height: 35px;
            padding-left: 6px;
            width:150px;
        }

        /* 입학구분, 입학학과 */
        .main-lecture2 .list7 {
            display:flex;
            height: 48px;
            width: 1089px;
        }   
        .main-lecture2 .list7 div {
            display:flex;
            height: 48px;
        }
        .main-lecture2 .list7 div:nth-child(1) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 163.34px;
        }

        .main-lecture2 .list7 div:nth-child(2) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 381.16px;
        }
        .main-lecture2 .list7 div:nth-child(2) select {
            height: 35px;
            padding-left: 6px;
            width:150px;
        }

        .main-lecture2 .list7 div:nth-child(3) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 163.34px;
        }
        .main-lecture2 .list7 div:nth-child(4) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 381.16px;
        }
        .main-lecture2 .list7 div:nth-child(4) select {
            height: 35px;
            padding-left: 6px;
            width:150px;
        }
        /* 입학학년/학기, 지도교수 */
        .main-lecture2 .list8 {
            display:flex;
            height: 48px;
            width: 1089px;
        }   
        .main-lecture2 .list8 div {
            display:flex;
            height: 48px;
        }
        .main-lecture2 .list8 div:nth-child(1) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 163.34px;
        }
        .main-lecture2 .list8 div:nth-child(2) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 381.16px;
        }
        .main-lecture2 .list8 div:nth-child(2) select {
            height: 35px;
            width: 150px;
            padding-left: 6px;
        }

        .main-lecture2 .list8 div:nth-child(3) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 163.34px;
        }
        .main-lecture2 .list8 div:nth-child(4) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 381.16px;
        }
        .main-lecture2 .list8 div:nth-child(4) select {
            height: 35px;
            width: 150px;
            padding-left: 6px;
        }

        #regist-button {
            border: 1px solid #08305A;
            background-color: #1A528E;
            color: white;
            height: 33px;
            width: 100px;
            position: absolute;
            right: 0;
            margin-top: 20px;
        }
    </style>
	<script>
		document.addEventListener('DOMContentLoaded', function(e) {
			const ecol_edept = { //학과 설정
	    			"인문사회대학": ["국어국문학과", "영어영문학과", "일어일문학과","중어중문학과","역사학과","경제학과","경영학과","법학과","철학과","정치외교학과","행정학과","사회복지학과","유아교육학과"],
	    	        "자연과학대학": ["수학과", "물리학과", "화학과","천문학과","지구과학학과","생명과학과","미생물학과","해양학과"],
	    	        "공과대학": ["기계공학과", "전자공학과", "전기공학과", "컴퓨터공학과", "건축공학과", "재료공학과","화학공학과"],
	    	        "사범대학": ["국어교육과", "영어교육과", "수학교육과", "윤리학과", "교육학과", "사회교육과", "역사교육과", "체육교육과", "특수교육과"]
	    	};
			
			const ecol = document.getElementById("ecol");
	    	const edept = document.getElementById("edept");
	    	
	    	ecol.addEventListener("change", function() {
	    		const selected = this.value;
	    		
	    		edept.innerHTML = "";
	    		
	    		if(ecol_edept[selected]) {
	    			ecol_edept[selected].forEach(item => {
	    				const option = document.createElement("option");
	    				option.value = item;
	    				option.textContent = item;
	    				edept.appendChild(option);
	    			});
	    		}
	    	});
	    	
	    	let cnt = 1;
	    	const form = document.querySelector('form');
	    	form.addEventListener('submit', function(e) { //학번
	    		const eyear = document.getElementById('eyear').value;
	    		const snumInput = document.getElementsByName('snum')[0];
	    		
	    		let num = 0;
	    		switch(ecol.value) {
		    		case "인문사회대학":
		    			num = 10;
			        	break;
			        case "자연과학대학":
			        	num = 20;
			        	break;
			        case "공과대학":
			        	num = 30;
			        	break;
			        case "사범대학":
			        	num = 40;
			        	break;
	    		}
	    		
	    		if(cnt < 10) {
	    			snumInput.value = eyear + "" + num + "0" + cnt;
	    		} else {
	    			snumInput.value = eyear + "" + num + cnt;
	    		}

	    		cnt++;
	    	});
		});
	</script>
</head>
<body>
    <!--1.헤더영역-->
	<header>
		<!--상단메뉴(HOME/사이트맵/로그인/학생지원)-->
		<div class="topbar" style="">
			<div class="inner" style=" max-width:1400px !important;">
				<div class="log-area" style="">
					<ul>
						<li><a href="/greenUniv/main.jsp">HOME</a></li>
						<li><a href="/greenUniv/about/about_location.do">사이트맵</a></li>
						<li><a href="/greenUniv/login/login.do">로그인</a></li>
						<li><a href="/greenUniv/studAssist/courseReg/list.do">학생지원</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="mainNav" style="">
			<div class="inner" style="display: flex; justify-content:center; max-width:1700px !important;">
				<!--로고-->
				<div style=" margin-right:665px; margin-left:15px;">
				<a href="/greenUniv/main.jsp"><img
					src="/greenUniv/images/mainpage-logo.webp" alt="몬스터대학교 로고" class="logo" /></a>
				</div>
				<!--메인메뉴(대학소개/입학안내/대학.대학원/대학생활/커뮤니티)-->
				<div class="menu-area" style="margin-right:30px; flex-shrink:0;">
					<ul class="main-menu">
						<li data-menu="intro"><a
							href="/greenUniv/about/about_greeting.do">대학소개</a></li>
						<li data-menu="admission"><a
							href="/greenUniv/admissionGuide/admissionGuide_notice.do"">입학안내</a></li>
						<li data-menu="college"><a
							href="/greenUniv/college/college_education.do">대학·대학원</a></li>
						<li data-menu="academic"><a
							href="/greenUniv/academicAffairs/academicAffairs_notice.do">학사안내</a></li>
						<li data-menu="life"><a
							href="/greenUniv/collegeLife/collegeLife_studentCouncil.do">대학생활</a></li>
						<li data-menu="community"><a
							href="/greenUniv/community/community_announcement.do">커뮤니티</a></li>
					</ul>
				</div>
			</div>
		</div>



		<!-- 통합 드롭다운 바 -->
		<div class="dropdown-bar" style="">
			<div class="inner" style="">
				<div class="dropdown-section" data-menu="intro" style="">
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
						<li><a
							href="/greenUniv/admissionGuide/admissionGuide_early.do">수시모집</a></li>
						<li><a
							href="/greenUniv/admissionGuide/admissionGuide_regular.do">정시모집</a></li>
						<li><a
							href="/greenUniv/admissionGuide/admissionGuide_transfer.do">편입학</a></li>
						<li><a
							href="/greenUniv/admissionGuide/admissionGuide_counsel.do">입학상담</a></li>
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
						<li><a
							href="/greenUniv/academicAffairs/academicAffairs_schedules.do">학사일정</a></li>
						<li><a
							href="/greenUniv/academicAffairs/academicAffairs_courseRegist.do">수강신청</a></li>
						<li><a
							href="/greenUniv/academicAffairs/academicAffairs_grades.do">성적</a></li>
						<li><a
							href="/greenUniv/academicAffairs/academicAffairs_graduation.do">졸업요건</a></li>
						<li><a
							href="/greenUniv/academicAffairs/academicAffairs_FAQ.do">F&Q</a></li>
					</ul>
				</div>
				<div class="dropdown-section" data-menu="life">
					<h4>대학생활</h4>
					<ul>
						<li><a
							href="/greenUniv/collegeLife/collegeLife_studentCouncil.do">학생회
								소개</a></li>
						<li><a href="/greenUniv/collegeLife/collegeLife_clubStudy.do">동아리</a></li>
						<li><a href="/greenUniv/collegeLife/collegeLife_menuGuide.do">학생식당</a></li>
						<li><a href="/greenUniv/collegeLife/collegeLife_gallery.do">갤러리</a></li>
					</ul>
				</div>
				<div class="dropdown-section" data-menu="community">
					<h4>커뮤니티</h4>
					<ul style="">
						<li><a href="/greenUniv/community/community_announcement.do">공지사항</a></li>
						<li><a href="/greenUniv/community/community_newsAndColumn.do">뉴스
								및 칼럼</a></li>
						<li><a
							href="/greenUniv/community/community_freeDiscussionBoard.do">자유게시판</a></li>
						<li><a href="/greenUniv/community/community_QnA.do">Q&amp;A</a></li>
						<li style="position: relative;"><a
							href="/greenUniv/community/community_referenceLibrary.do">자료실</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>
    <div class="container">
        <nav class="sidebar">
            <div class="menu menu1">
                <h3><img src='../images/ico-admin-setting.png'>환경설정</h3>
                <ul>
                    <li class="menu-item">기본환경정보</li>
                    <li class="menu-item">약관관리</li>
                </ul>
            </div>
            <div class="menu menu2">
                <h3><img src='../images/ico-admin-academic.png'>학사운영</h3>
                <ul>
                    <li class="menu-item">교육 운영 현황</li>
                    <li class="menu-item">학년별 학생 현황</li>
                    <li class="menu-item">학과별 학생 현황</li>
                    <li class="menu-item">강의 목록</li>
                    <li class="menu-item">강의 등록</li>
                    <li class="menu-item" >수강 현황</li>
                </ul>
            </div>
            <div class="menu menu3">
                <h3><img src='../images/ico-admin-persons.png'>인사관리</h3>
                <ul>
                    <li class="menu-item">학생 목록 및 등록</li>
                    <li class="menu-item">교수 목록 및 등록</li>
                    <li class="menu-item">임직원 목록 및 등록</li>
                </ul>
            </div>
            <div class="menu menu4">
                <h3><img src='../images/ico-admin-college.png'>대학 및 학과</h3>
                <ul>
                    <li class="menu-item">대학 및 학과 목록</li>
                    <li class="menu-item">대학 및 학과 등록</li>
                </ul>
            </div>
            <div class="menu menu5">
                <h3><img src='../images/ico-admin-board.png'>게시판관리</h3>
                <ul>
                    <li class="menu-item">입학안내 공지사항</li>
                    <li class="menu-item">학사안내 공지사항</li>
                    <li class="menu-item">커뮤니티 공지사항</li>
                    <li class="menu-item">입학상담</li>
                    <li class="menu-item">질문 및 답변</li>
                    <li class="menu-item">식단안내</li>
                    <li class="menu-item">자료실</li>
                </ul>
            </div>
        </nav>

        <main class="main-content">
            <div class="main-title">
                <h3>학생 등록</h3>
                <p>인사관리 &nbsp; > &nbsp; <span>학생 등록</span></p>
            </div>

            <div class="basic-info1">
                <div class="basic-info2">
                    <span>기본정보 입력</span>
                </div>
            </div>
            
            <form action="" method="post">
            	<div class="main-lecture1">
                <div class="profile-photo">
                    <img src="../images/icon-avatar.png" alt="프로필 사진">
                </div>
                <div class="list1">
                    <div>학번</div>
                    <div><input type="hidden" name="snum"></div>
                    <div>주민등록번호</div>
                    <div><input type="text" name="sregno" placeholder="- 포함 14자리 입력"></div>
                </div>
                <div class="list2">
                    <div>이름</div>
                    <div>
                        <input type="text" name="sname" placeholder="학생 이름 입력">
                    </div>
                    <div>영문명</div>
                    <div>
                        <input type="text" name="sengname" placeholder="여권 등과 동일한 영문 이름">
                    </div>
                </div>
                <div class="list3">
                    <div>성별</div>
                    <div>
                        <label><input name="sgender" type="radio" value="남성">남</label>
                        <label><input name="sgender" type="radio" value="여성">여</label>
                    </div>
                    <div>국적</div>
                    <div>
                        <select name="snation">
                            <option>선택</option>
                            <option value="대한민국">대한민국</option>
                            <option value="중국">중국</option>
                            <option value="일본">일본</option>
                        </select>
                    </div>
	                </div>
	                <div class="list4">
	                    <div>휴대폰</div>
	                    <div><input type="text" name="stel" placeholder="휴대폰 번호 입력"></div>
	                    <div>이메일</div>
	                    <div><input type="text" name="semail" placeholder="이메일 입력"></div>
	                </div>
	                <div class="list5">
	                    <div></div>
	                    <div>주소</div>
	                    <div>
	                        <input type="text" id="address1" name="szip" placeholder="우편번호 선택">
	                        <input type="text" id="address2" name="saddr1" placeholder="기본주소 선택">
	                        <input type="text" id="address3" name="saddr2" placeholder="상세주소 선택">
	                    </div>
	                </div>
	            </div>

	            <div class="class-info1">
	                <div class="class-info2">
	                    <span>학적정보 입력</span>
	                </div>
	            </div>

            <div class="main-lecture2">
                <div class="list6">
                    <div>입학년도</div>
                    <div>
                        <select name="eyear" id="eyear">
                            <option>선택</option>
                            <option value="2020">2020</option>
                            <option value="2021">2021</option>
                            <option value="2022">2022</option>
                            <option value="2023">2023</option>
                            <option value="2024">2024</option>
                            <option value="2025">2025</option>
                        </select>
                    </div>
                    <div>졸업년도</div>
                    <div>
                        <select name="gyear" id="gyear">
                            <option>선택</option>
                            <option value="2025">2023</option>
                            <option value="2025">2024</option>
                            <option value="2025">2025</option>
                            <option value="2025">2026</option>
                            <option value="2025">2027</option>
                            <option value="2025">2028</option>
                        </select>
                    </div>
	                </div>
	                <div class="list7">
	                    <div>입학구분</div>
	                    <div>
	                        <select name="esort">
	                            <option value="수시">수시</option>
	                            <option value="정시">정시</option>
	                        </select>
	                    </div>
	                    <div>입학학과(전공)</div>
	                    <div>
	                        <select name="ecol" id="ecol">
	                            <option value="인문사회대학" selected>인문사회대학</option>
	                            <option value="자연과학대학">자연과학대학</option>
	                            <option value="공과대학">공과대학</option>
	                            <option value="사범대학">사범대학</option>                            
	                        </select>
	                        <select name="edept" id="edept" style="margin-left: 2px;">
	                        </select>
	                    </div>
	                </div>
	                <div class="list8">
	                    <div>입학학년/학기</div>
	                    <div>
	                        <select name="egrade">
	                            <option value="1학년">1학년</option>
	                            <option value="2학년">2학년</option>
	                            <option value="3학년">3학년</option>
	                            <option value="4학년">4학년</option>
	                        </select>
	                        <select name="eterm" style="margin-left: 2px;">
	                            <option value="1학기">1학기</option>
	                            <option value="2학기">2학기</option>
	                        </select>
	                    </div>
	                    <div>지도교수</div>
	                    <div>
	                        <select name="advprof">
	                            <option>선택</option>
	                            <option value="김유신">김유신</option>
	                            <option value="김국어">김국어</option>
	                            <option value="김수학">김수학</option>
	                            <option value="김영어">김영어</option>
	                            <option value="김코딩">김코딩</option>
	                            <option value="김교육">김교육</option>
	                        </select>
	                    </div>
	                </div>
	
	                <button type="submit" id="regist-button">등록</button>
            	</form>  	
            </div>
        </main>
    </div>
    
    <!--3. 푸터영역-->
	<footer class="footer" style="margin-top: 50px;">
		<!--상단-->
		<div class="footer-high">
			<div class="footer-high-inner">
				<ul class="footer-high-quicklinks">
					<li><a href="#">개인정보처리방침</a></li>
					<li><a href="/greenUniv/AMS/AMS_main.do">통합정보시스템</a></li>
					<li><a
						href="/greenUniv/academicAffairs/academicAffairs_schedules.do">학사일정</a></li>
					<li><a href="/greenUniv/college/college_humanities.do">주요인원 연락처</a></li>
					<li><a
						href="/greenUniv/academicAffairs/academicAffairs_notice.do">교내공지사항</a></li>
				</ul>
			</div>
		</div>

		<!--하단-->
		<div class="footer-low">
			<div class="footer-low-inner">
				<div class="footer-logo">
					<img src="/greenUniv/images/mainpage-logo.webp" alt="몬스터대학교 로고"
						class="logo" />
				</div>

				<div class="footer-info">
					<p class="footer-uniname">몬스터대학교</p>
					<p>[12345] 부산광역시 부산진구 부전대로 123 몬스터대학교 / 대표전화 : 051-123-1000 /
						입학안내 : 051-123-1302 팩스 : 051-123-3333</p>
					<p class="copy">copyright ©Monster University All rights
						reserved.</p>
				</div>

				<div class="footer-select">
					<label for="site-select" class="sr-only">주요사이트</label> <select
						id="site-select"
						onchange="if(this.value) window.open(this.value, '_blank')">
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