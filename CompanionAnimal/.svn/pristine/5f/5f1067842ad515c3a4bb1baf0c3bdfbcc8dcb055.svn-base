$(function(){
	var wd=$('div.sliderbox>ul>li').width();//한개의 넓이=200px;
	var maxSize=wd*$('div.sliderbox>ul>li').size()//ul의 전체 width:2000px;

	$('div.sliderbox>ul').width(maxSize);
	$('div.sliderbox>ul>li:last').prependTo('div.sliderbox>ul'); //미리 마지막 li를 앞에 붙여넣기
	$('div.sliderbox>ul').css('margin-left',-wd); // margin-left 값을 -330px로 가져다 놓기

	$('.next').click(function(){ //다음버튼 클릭시
		$('div.sliderbox>ul').animate({ //ul의 전체가 애니메이션 처리
			marginLeft:parseInt($('div.sliderbox>ul').css('margin-left'))-wd+'px'
			//margin-left를 li 사이즈만큼 -처리
		},function(){ //애니메이트 매서드 실행 후 멸령시킬 콜백함수
			$('div.sliderbox>ul>li:first').appendTo('div.sliderbox>ul'); //첫번째 li를 마지막으로 옮김
			$('div.sliderbox>ul').css('margin-left',-wd); //ul전체의 위치도 li넓이만큼 -처리
		});
	});

	$('.prev').click(function(){
		$('div.sliderbox>ul').animate({
			marginLeft:parseInt($('div.sliderbox>ul').css('margin-left'))+wd+'px'
		},function(){
			$('div.sliderbox>ul>li:last').prependTo('div.sliderbox>ul');
			$('div.sliderbox>ul').css('margin-left',-wd);
		});
	});
});