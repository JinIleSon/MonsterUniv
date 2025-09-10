<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>학사관리시스템::강의등록</title>
    <!--css연결-->
	<link rel="stylesheet" href="/greenUniv/css/Header.style.css">
	<link rel="stylesheet" href="/greenUniv/css/Footer.style.css">
    <style>
        @font-face {
            font-family: 'NotoSansKR-Light';
            src: url('/greenUniv/font/NotoSansKR-Light.otf') format('opentype');
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
        .main-lecture1 .list1 {
            display:flex;
            height: 48.5px;
            width: 1089px;
        }   
        .main-lecture1 .list1 div {
            display:flex;
            height: 48.5px;
        }
        .main-lecture1 .list1 div:nth-child(1) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 217.8px;
        }
        .main-lecture1 .list1 div:nth-child(2) {
            align-items: center;   
            border: 1px solid #E5E5E5;
            color: #BC2E13;
            font-size: 13px;
            justify-content:left;
            padding-left: 12.5px;
            text-align: center;
            width: 290.83px;
        }
        .main-lecture1 .list1 div:nth-child(3) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 217.8px; 
        }
        .main-lecture1 .list1 div:nth-child(4) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 362.58px;
        }
        .main-lecture1 .list1 div:nth-child(4) select {
            height: 35px;
            padding-left: 10px;
            width: 150px;
        }

        /* 기본정보 2번째  */
        .main-lecture1 .list2 {
            display:flex;
            height: 48px;
            width: 1089px;
        }   
        .main-lecture1 .list2 div {
            display:flex;
            height: 48px;
        }
        .main-lecture1 .list2 div:nth-child(1) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 217.8px;
        }

        .main-lecture1 .list2 div:nth-child(2) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 290.83px;
        }
        .main-lecture1 .list2 div:nth-child(2) select:nth-child(1) {
            height: 35px;
            padding-left: 10px;
            width: 150px;
        }
        .main-lecture1 .list2 div:nth-child(2) select:nth-child(2) {
            height: 35px;
            padding-left: 10px;
            width: 115px;
        }

        .main-lecture1 .list2 div:nth-child(3) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 217.8px; 
        }

        .main-lecture1 .list2 div:nth-child(4) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 362.58px;
        }
        .main-lecture1 .list2 div:nth-child(4) select {
            height: 35px;
            padding-left: 10px;
            width: 150px;
        }

        /* 기본정보 3번째  */
        .main-lecture1 .list3 {
            display:flex;
            height: 48px;
            width: 1089px;
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
            width: 217.8px;
        }

        .main-lecture1 .list3 div:nth-child(2) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 290.83px;
        }
        .main-lecture1 .list3 div:nth-child(2) select {
            height: 35px;
            padding-left: 10px;
            width: 150px;
        }

        .main-lecture1 .list3 div:nth-child(3) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 217.8px;
        }

        .main-lecture1 .list3 div:nth-child(4) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 362.58px;
        }.main-lecture1 .list3 div:nth-child(4) select {
            height: 35px;
            padding-left: 10px;
            width: 150px;
        }

        /* 기본정보 4번째  */
        .main-lecture1 .list4 {
            display:flex;
            height: 46px;
            width: 1089px;
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
            width: 217.8px;
        }
        .main-lecture1 .list4 div:nth-child(2) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 871.2px;
        }
        .main-lecture1 .list4 div:nth-child(2) input[type=text] {
            height: 33px;
            width: 426.09px;
        } 

        /* 기본정보 5번째  */
        .main-lecture1 .list5 {
            display:flex;
            height: 143px;
            width: 1089px;
        }   
        .main-lecture1 .list5 div {
            display:flex;
            height: 143px;
        }
        .main-lecture1 .list5 div:nth-child(1) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 217.8px;
        }

        .main-lecture1 .list5 div:nth-child(2) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 871.2px;
        }
        .main-lecture1 .list5 div:nth-child(2) textarea {
            height: 126px;
            width: 426.09px;
            resize: none;
            padding: 6px;
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

        /* 수업정보 입력 */
        .main-lecture2 {
            border-top: 1px solid #8798A3;
            height: 236px;
            margin-top: 15px;
            margin-left: 20px;
            width: 1090px;
            position: relative;
        }
        /* 수업기간 */
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
            width: 217.8px;
        }
        .main-lecture2 .list6 div:nth-child(2) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 871.2px;
        }
        .main-lecture2 .list6 div:nth-child(2) input[type=date] {
            height: 35px;
            padding-left: 6px;
            width:150px;
        }

        /* 수업시간 */
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
            width: 217.8px;
        }

        .main-lecture2 .list7 div:nth-child(2) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 871.2px;
        }
        .main-lecture2 .list7 div:nth-child(2) input[type=time] {
            height: 35px;
            padding-left: 6px;
            width:150px;
        }
        .main-lecture2 .list7 div:nth-child(2) label {
            height: 19px;
            width:40px;
        }

        /* 평가방식 */
        .main-lecture2 .list8 {
            display:flex;
            height: 46px;
            width: 1089px;
        }   
        .main-lecture2 .list8 div {
            display:flex;
            height: 46px;
        }
        .main-lecture2 .list8 div:nth-child(1) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 217.8px;
        }
        .main-lecture2 .list8 div:nth-child(2) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 871.2px;
        }
        .main-lecture2 .list8 div:nth-child(2) input[type=text] {
            height: 33px;
            width: 450px;
            padding-left: 6px;
        }

        /* 교재 */
        .main-lecture2 .list9 {
            display:flex;
            height: 46px;
            width: 1089px;
        }   
        .main-lecture2 .list9 div {
            display:flex;
            height: 46px;
        }
        .main-lecture2 .list9 div:nth-child(1) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 217.8px;
        }

        .main-lecture2 .list9 div:nth-child(2) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 871.2px;
        }
        .main-lecture2 .list9 div:nth-child(2) input[type=text] {
            height: 33px;
            width: 450px;
            padding-left: 6px;
        }
        /* 강의실 */
        .main-lecture2 .list10 {
            display:flex;
            height: 46px;
            width: 1089px;
        }   
        .main-lecture2 .list10 div {
            display:flex;
            height: 46px;
        }
        .main-lecture2 .list10 div:nth-child(1) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 217.8px;
        }
        .main-lecture2 .list10 div:nth-child(2) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 326.7px;
        }
        .main-lecture2 .list10 div:nth-child(2) input[type=text] {
            width: 200px;
            height: 33px;
        }   

        .main-lecture2 .list10 div:nth-child(3) {
            align-items: center;  
            background-color: #FAFAFA;
            border: 1px solid #E5E5E5;
            font-size: 13px;
            justify-content: center;
            text-align: center;
            width: 217.8px;
        }

        .main-lecture2 .list10 div:nth-child(4) {
            align-items: center;
            border: 1px solid #E5E5E5;
            justify-content:left;
            padding-left: 12.5px;  
            text-align: center;
            width: 326.7px;
        }
        .main-lecture2 .list10 div:nth-child(4) input[type=text] {
            width: 200px;
            height: 33px;
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
	    	const openMaj_box = { //학과 설정
	    			"인문사회대학": ["국어국문학과", "영어영문학과", "일어일문학과","중어중문학과","역사학과","경제학과","경영학과","법학과","철학과","정치외교학과","행정학과","사회복지학과","유아교육학과"],
	    	        "자연과학대학": ["수학과", "물리학과", "화학과","천문학과","지구과학학과","생명과학과","미생물학과","해양학과"],
	    	        "공과대학": ["기계공학과", "전자공학과", "전기공학과", "컴퓨터공학과", "건축공학과", "재료공학과","화학공학과"],
	    	        "사범대학": ["국어교육과", "영어교육과", "수학교육과", "윤리학과", "교육학과", "사회교육과", "역사교육과", "체육교육과", "특수교육과"]
	    	};
	    	
	    	const openCol = document.getElementById("openCol");
	    	const openMaj = document.getElementById("openMaj");
	    	
	    	openCol.addEventListener("change", function() {
	    		const selected = this.value;
	    		
	    		openMaj.innerHTML = "";
	    		
	    		if(openMaj_box[selected]) {
	    			openMaj_box[selected].forEach(openMaj_item => {
	    				const option = document.createElement("option");
	    				option.value = openMaj_item;
	    				option.textContent = openMaj_item;
	    				openMaj.appendChild(option);
	    			});
	    		}
	    	});
	    	
			let cnt = 1;
			
			const form = document.querySelector('form');
		    form.addEventListener('submit', function(e) {
		    	const deptcodeInput = document.getElementsByName('deptcode')[0];  
		    	
		    	let openMajNum = 0; //학과 코드
		    	switch(openCol.value) {
		        case "인문사회대학":
		        	openMajNum = 10;
		        	break;
		        case "자연과학대학":
		        	openMajNum = 20;
		        	break;
		        case "공과대학":
		        	openMajNum = 30;
		        	break;
		        case "사범대학":
		        	openMajNum = 40;
		        	break;
		        }
		        
		        const today = new Date();     
		        const year = today.getFullYear().toString().substring(2); //연도
		        
		        const semester = document.getElementById('semester').value; //학기
				const randomNum = cnt; //순번
				cnt++;
		        deptcodeInput.value = openMajNum + year + semester + randomNum; //과목코드
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
						<li><a href="/greenUniv/main.do">HOME</a></li>
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
				<a href="/greenUniv/main.do"><img
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
                <h3><img src='/greenUniv/images/ico-admin-setting.png'>환경설정</h3>
                <ul>
                    <li class="menu-item">기본환경정보</li>
                    <li class="menu-item">약관관리</li>
                </ul>
            </div>
            <div class="menu menu2">
                <h3><img src='/greenUniv/images/ico-admin-academic.png'>학사운영</h3>
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
                <h3><img src='/greenUniv/images/ico-admin-persons.png'>인사관리</h3>
                <ul>
                    <li class="menu-item">학생 목록 및 등록</li>
                    <li class="menu-item">교수 목록 및 등록</li>
                    <li class="menu-item">임직원 목록 및 등록</li>
                </ul>
            </div>
            <div class="menu menu4">
                <h3><img src='/greenUniv/images/ico-admin-college.png'>대학 및 학과</h3>
                <ul>
                    <li class="menu-item">대학 및 학과 목록</li>
                    <li class="menu-item">대학 및 학과 등록</li>
                </ul>
            </div>
            <div class="menu menu5">
                <h3><img src='/greenUniv/images/ico-admin-board.png'>게시판관리</h3>
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
                <h3>강의 등록</h3>
                <p>학사운영 &nbsp; > &nbsp; <span>강의 등록</span></p>
            </div>

            <div class="basic-info1">
                <div class="basic-info2">
                    <span>기본정보 입력</span>
                </div>
            </div>
            
            <form action="/greenUniv/AMS/AMS_lectureRegist.do" method="post">
	            <div class="main-lecture1">
	                <div class="list1">
	                    <div>과목코드</div>	            
	                    <div><input type="hidden" name="deptcode"></div>
	                    <div>개설학과</div>
	                    <div>
	                        <select name="openCol" id="openCol">
	                            <option value="인문사회대학" selected>인문사회대학</option>
	                            <option value="자연과학대학">자연과학대학</option>
	                            <option value="공과대학">공과대학</option>
	                            <option value="사범대학">사범대학</option>
	                        </select>
	                        <select name="openMaj" id="openMaj" style="margin-left: 2px;">	                   
	                        </select>
	                    </div>	               
	                </div>
	                <div class="list2">
	                    <div>개설학년</div>
	                    <div>
	                        <select name="year" id="year">
	                            <option value="1">1학년</option>
	                            <option value="2">2학년</option>
	                            <option value="3">3학년</option>
	                            <option value="4">4학년</option>
	                        </select>
	                        <select name="semester" id="semester" style="margin-left: 2px;">
	                            <option value="1">1학기</option>
	                            <option value="2">2학기</option>
	                        </select>
	                    </div>
	                    <div>학점</div>
	                    <div>
	                        <select name="grade">
		                        <option value="1">1학점</option>
		                        <option value="2">2학점</option>
	                            <option value="3" selected>3학점</option>
	                        </select>
	                    </div>
	                </div>
	                <div class="list3">
	                    <div>이수구분</div>
	                    <div>
	                        <select name="compDiv">
		                        <option value="교양 선택">교양 선택</option>
		                        <option value="교양 필수">교양 필수</option>	                   
	                            <option value="전공 선택" selected>전공 선택</option>
	                            <option value="전공 필수">전공 필수</option>
	                        </select>
	                    </div>
	                    <div>담당교수</div>
	                    <div>
	                        <select name="prof">
	                            <option value="김유신">김유신</option>
	                            <option value="김국어">김국어</option>
	                            <option value="김수학">김수학</option>
	                            <option value="김영어">김영어</option>
	                            <option value="김코딩">김코딩</option>
	                            <option value="김교육">김교육</option>
	                        </select>
	                    </div>
	                </div>
	                <div class="list4">
	                    <div>강의명</div>
	                    <div><input type="text" name="lname" placeholder="강좌명 입력"></div>
	                </div>
	                <div class="list5">
	                    <div>강의 설명</div>
	                    <div>
	                        <textarea name="lexpl" placeholder="강의 개요 및 목표, 학습 내용 등"></textarea>
	                    </div>
	                </div>
	            </div>
	
	            <div class="class-info1">
	                <div class="class-info2">
	                    <span>수업정보 입력</span>
	                </div>
	            </div>
	
	            <div class="main-lecture2">
	                <div class="list6">
	                    <div>수업 기간</div>
	                    <div>
	                        <input type="date" name="yclass">
	                        <span style="margin-left: 2px; margin-right: 2px;"> ~ </span>
	                        <input type="date" name="yclase">
	                    </div>
	                </div>
	                <div class="list7">
	                    <div>수업 시간</div>
	                    <div>
	                        <input type="time" name="times" value="10:00">
	                        <span style="margin-left: 2px; margin-right: 2px;"> ~ </span>
	                        <input type="time" name="timee" value="12:00" style="margin-right: 5px;">
	                        <label><input type="checkbox" name="timed" value="월">월</label>
	                        <label><input type="checkbox" name="timed" value="화">화</label>
	                        <label><input type="checkbox" name="timed" value="수">수</label>
	                        <label><input type="checkbox" name="timed" value="목">목</label>
	                        <label><input type="checkbox" name="timed" value="금">금</label>
	                    </div>
	                </div>
	                <div class="list8">
	                    <div>평가방식</div>
	                    <div>
	                        <input type="text" name="evaway" placeholder="출석 10%, 과제 30%, 시험 60%">
	                    </div>
	                </div>
	                <div class="list9">
	                    <div>교재</div>
	                    <div>
	                        <input type="text" name="book" placeholder="출판사 - 도서명 - 저자 입력">
	                    </div>
	                </div>
	                <div class="list10">
	                    <div>강의실</div>
	                    <div>
	                        <input type="text" name="room" placeholder="인문관 301호">
	                    </div>
	                    <div>최대 수강인원</div>
	                    <div>
	                        <input type="text" name="maxnum">
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
					<li><a href="https://privacy.thewaltdisneycompany.com/ko/">개인정보처리방침</a></li>
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