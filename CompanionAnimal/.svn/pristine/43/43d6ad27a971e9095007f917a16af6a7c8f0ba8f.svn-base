'use strict';
/****************************************
*			    COMMON.js               *
****************************************/

// ******************************************************************************
// loadScriptFile
loadScriptFile('../../views/resources/js/mobile/responsive.js', function () { console.log('□ responsive.js loaded...')} );

// ******************************************************************************
// runTextBook
runTextBook(function () {

	FORTEACHERCD.responsive.setScaleElement(document.querySelector('#frameContainer'));

	window.addEventListener('resize', function () {
		FORTEACHERCD.responsive.currentContainerSize.containerWidth = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
		FORTEACHERCD.responsive.currentContainerSize.containerHeight = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight;
		FORTEACHERCD.responsive.setScaleElement(document.querySelector('#frameContainer'));
	}, false);


});

// 오른쪽 마우스 클릭 금지
document.body.oncontextmenu = function () {
	return false;
};

function initScale() {

	var wrap = document.getElementById('#frameContainer');

}

// 위치값
function getRealOffsetTop(o) { return o ? o.offsetTop + getRealOffsetTop(o.offsetParent) : 0; }
function getRealOffsetLeft(o) { return o ? o.offsetLeft + getRealOffsetLeft(o.offsetParent) : 0; }

// ******************************************************************************
function log (logdata) { var console = window.console || { log : function () {} }; }

var eventCheck = 'ontouchstart' in window || window.DocumentTouch && document instanceof DocumentTouch;
// log(eventCheck);

var gameManager = {
		eventSelector : {
		downEvent : eventCheck ? 'touchstart' : 'mousedown',
		moveEvent : eventCheck ? 'touchmove' : 'mousemove',
		upEvent : eventCheck ? 'touchend' : 'mouseup',
		outEvent : eventCheck ? 'touchleave' : 'mouseout'
	}
}

// *****************************************************************
