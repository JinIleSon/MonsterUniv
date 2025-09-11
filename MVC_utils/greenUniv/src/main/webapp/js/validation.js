/**
 * 
 */

//유효성 검사에 사용할 정규표현식
const rePregno   = /^(?:[0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))-[1-4][0-9]{6}$/;
const rePname    = /^[가-힣]{2,4}$/;
const rePengname = /^[a-zA-Z]+$/; 	
const rePtel     =  /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$/;
const rePemail   = /^[a-z0-9\.\-_]+@([a-z0-9\-]+\.)+[a-z]{2,6}$/;
const reChar = /^[가-힣a-zA-Z]+$/;

document.addEventListener('DOMContentLoaded',function(){
	
	console.log('연결됨');
	
	const btnSubmit = document.getElementById('regist-button');
	const form = document.getElementsByTagName('form')[0];
		
	btnSubmit.addEventListener('click', function(e){
		e.preventDefault();
		
		const pregno = form.pregno.value;
		const pname = form.pname.value;
		const pengname = form.pengname.value;
		const pgender = form.pgender.value;
		const pnation = form.pnation.value;
		const ptel = form.ptel.value;
		const pemail = form.pemail.value;
		const pzip = form.pzip.value;
		const gradun = form.gradun.value;
		const major = form.major.value;
		const graddate = form.graddate.value;
		const degree = form.degree.value;
		const takecol = form.takecol.value;
		const takedept = form.takedept.value;
		const appdate = form.appdate.value;
		
		if(!pregno){
			alert('주민번호를 입력하세요');
			return;	
		}else if(!pregno.match(rePregno)){
			alert('올바른 주민번호가 아닙니다.');
			return;
		}
		
		if(!pname){
			alert('이름을 입력하세요');
			return;	
		}else if(!pname.match(rePname)){
			alert('올바른 이름이 아닙니다');
			return;	
		}
		
		if(!pengname){
			alert('영문명을 입력하세요');
			return;	
		}else if(!pengname.match(rePengname)){
			alert('올바른 영문명이 아닙니다.');
			return;
		}

		if(!pgender){
			alert('성별을 선택하세요');
			return;	
		}				

		if(pnation == 'default'){
			alert('국적을 선택하세요');
			return;	
		}
		
		if(!ptel){
			alert('휴대폰을 입력하세요');
			return;	
		}else if(!ptel.match(rePtel)){
			alert('올바른 휴대폰번호를 입력하세요');
			return;	
		}
		
		if(!pemail){
			alert('이메일을 입력하세요');
			return;	
		}else if(!pemail.match(rePemail)){
			alert('올바른 이메일을 입력하세요');
			return;
		}
		
		if(!pzip){
			alert('우편번호를 입력하세요');
			return;	
		}
		
		if(!gradun){
			alert('졸업대학을 입력하세요');
			return;	
		}else if(!gradun.match(reChar)){
			alert('올바른 졸업대학을 입력하세요');
			return;	
		}
		
		if(!major){
			alert('전공을 입력하세요');
			return;	
		}else if(!major.match(reChar)){
			alert('올바른 전공을 입력하세요');
			return;	
		}
		
		if(!graddate){
			alert('졸업일을 입력하세요');
			return;	
		}
		
		if(degree == 'default'){
			alert('학위를 선택하세요');
			return;	
		}
		
		if(takecol == 'default'){
			alert('대학을 선택하세요');
			return;	
		}
		
		if(takedept == 'default'){
			alert('학과를 선택하세요');
			return;	
		}
		
		if(!appdate){
			alert('임용일을 입력하세요');
			return;	
		}
		
		form.submit();
	});
	
	/*//최종 폼 전송 처리
	form.addEventListener('submit', function(e){
		e.preventDefault();
		
		alert('주민번호를 입력하세요');
		
		//최종 폼 전송 실행
		//form.submit();
	});*/
	
});