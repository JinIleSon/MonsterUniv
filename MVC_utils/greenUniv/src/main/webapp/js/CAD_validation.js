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
	
	const btnCol = document.getElementById('btnCol');
	const btnDept = document.getElementById('btnDept');
	const collForm = document.getElementById('collForm');
	const deptForm = document.getElementById('deptForm');
	
		
	btnCol.addEventListener('click', function(e){
		e.preventDefault();
		
		const colname = collForm.colname.value;
		const coleng = collForm.coleng.value;
		

		if(!colname){
			alert('대학명을 입력하세요');
			return;	
		}else if(!colname.match(reChar)){
			alert('올바른 대학명이 아닙니다');
			return;	
		}
		
		if(!coleng){
			alert('영문명을 입력하세요');
			return;	
		}else if(!coleng.match(rePengname)){
			alert('올바른 영문명이 아닙니다.');
			return;
		}		
		
		collForm.submit();
	});
	
	btnDept.addEventListener('click', function(e){
		
		e.preventDefault();
		
		const unitcol = deptForm.unitcol.value;
		const deptname = deptForm.deptname.value;
		const engname = deptForm.engname.value;
		const estyear = deptForm.estyear.value;
		const dean = deptForm.dean.value;
		const depttel = deptForm.depttel.value;
		const deptoff = deptForm.deptoff.value;
		
		if(unitcol == 'default'){
			alert('단과대학을 선택하세요');
			return;	
		}		
		
		if(!deptname){
			alert('학과명을 입력하세요');
			return;	
		}else if(!deptname.match(reChar)){
			alert('올바른 학과명이 아닙니다');
			return;	
		}
		
		if(!engname){
			alert('영문명을 입력하세요');
			return;	
		}else if(!engname.match(rePengname)){
			alert('올바른 영문명이 아닙니다.');
			return;
		}
		
		if(!estyear){
			alert('설립연도를 입력하세요');
			return;	
		}
		
		if(dean == 'default'){
			alert('학과장을 선택하세요');
			return;	
		}		
			
		if(!depttel){
			alert('학과 연락처를 입력하세요');
			return;	
		}
		
		if(!deptoff){
			alert('학과 사무실을 입력하세요');
			return;	
		}
		
		deptForm.submit();				
	});
	
	
	
	/*//최종 폼 전송 처리
	form.addEventListener('submit', function(e){
		e.preventDefault();
		
		alert('주민번호를 입력하세요');
		
		//최종 폼 전송 실행
		//form.submit();
	});*/
	
});