$(document).ready(function(){
	//검은 막 띄우기
	$('.openMask').click(function(e){
		e.preventDefault();
		$('#mask').fadeIn(500);      
		$('#mask').fadeTo("slow",0.8);    

		//윈도우 같은 거 띄운다.
		$('.popUp').show();
	});

	//닫기 버튼을 눌렀을 때
	$('.popUp .close').click(function (e) {  
		//링크 기본동작은 작동하지 않도록 한다.
		e.preventDefault();  
		$('#mask, .popUp').hide();		
	});       

	//검은 막을 눌렀을 때
	$('#mask').click(function () {  
		$(this).hide();  
		$('#mask, .popUp').hide();
	});      
});