
'use strict';


var FORTEACHERCD = FORTEACHERCD || {};

FORTEACHERCD.responsive = (function () {

	var responsive = {
		baseContainerSize : {		
			width : 1170,
		}, 
		currentContainerSize : {
			containerWidth : window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth,
			containerHeight : window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight	
		},
		setScaleElement : function (targetElement, adjust) {			
		   	var hdContainer = document.querySelector('#hdContainer'),			
		   		zoomVertical = this.currentContainerSize.containerHeight / targetElement.clientHeight,
				zoomHorizontal = this.currentContainerSize.containerWidth / targetElement.clientWidth;													

			var	zoomVerticalHd = (this.currentContainerSize.containerHeight / hdContainer.clientHeight) * 1.0;
			var	zoomHorizontalHd = (this.currentContainerSize.containerWidth / hdContainer.clientWidth) * 1.0;					
			
			
			var nvContainer = document.querySelector('#nvContainer'),
				zoomVertical = this.currentContainerSize.containerHeight / targetElement.clientHeight,
				zoomHorizontal = this.currentContainerSize.containerWidth / targetElement.clientWidth;	
				
			var	zoomVerticalNv = (this.currentContainerSize.containerHeight / nvContainer.clientHeight) * 1.0;				
			var	zoomHorizontalNv = (this.currentContainerSize.containerWidth / nvContainer.clientWidth) * 1.0;
			
			var popUpContainer = document.querySelector('#popUpContainer'),
				zoomVertical = this.currentContainerSize.containerHeight / targetElement.clientHeight,
				zoomHorizontal = this.currentContainerSize.containerWidth / targetElement.clientWidth;	
				
			var	zoomVerticalPU = (this.currentContainerSize.containerHeight / popUpContainer.clientHeight) * 1.0;				
			var	zoomHorizontalPU = (this.currentContainerSize.containerWidth / popUpContainer.clientWidth) * 1.0;
			
						
			if (targetElement.clientWidth * zoomVertical > this.currentContainerSize.containerWidth) {
				this.setTransformCSS(targetElement, zoomHorizontal);
				this.setTransformCSS(hdContainer, zoomHorizontalHd);
				this.setTransformCSS(nvContainer, zoomHorizontalNv);
				this.setTransformCSS(popUpContainer, zoomHorizontalPU);

			} else {
				this.setTransformCSS(targetElement, zoomVertical);
				targetElement.style.left = ((this.currentContainerSize.containerWidth - (targetElement.clientWidth * zoomVertical)) / 2)  + 'px';
				
				this.setTransformCSS(hdContainer, zoomVerticalHd);
				hdContainer.style.left = ((this.currentContainerSize.containerWidth - (hdContainer.clientWidth * zoomVerticalHd)) / 2)  + 'px';
				
			
				this.setTransformCSS(nvContainer, zoomVerticalNv);
				nvContainer.style.left = ((this.currentContainerSize.containerWidth - (nvContainer.clientWidth * zoomVerticalNv)) / 2)  + 'px';
				
				this.setTransformCSS(popUpContainer, zoomVerticalPU);
				popUpContainer.style.left = ((this.currentContainerSize.containerWidth - (popUpContainer.clientWidth * zoomVerticalPU)) / 2)  + 'px';
				
			}
			
		},
		setTransformCSS : function (targetElement, zoomRate) {
			gameManager.zoomRate = zoomRate;
			targetElement.setAttribute('style', '-ms-transform: scale(' + zoomRate + ',' + zoomRate + ');' 
				+ '-webkit-transform: scale(' + zoomRate + ',' + zoomRate + ');' + 'transform: scale(' + zoomRate + ',' + zoomRate + ');' 
				+ 'transform-origin: 0% 0%; -webkit-transform-origin: 0% 0%; -ms-transform-origin: 0% 0%;');	
				gameManager.zoomRate = zoomRate;	
		},
	};
	return responsive;	
})();
