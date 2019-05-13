
'use strict';

function loadScriptFile (scriptSrc, callBack) {

	var script = document.createElement('script');
	script.src = scriptSrc;

	if (callBack) {
		script.onload = function () {
			callBack();
		};
	}
	document.head.appendChild(script);
}

function documentOnloaded (callback) {
	if (window.document){
		if (window.document.readyState === "complete") {
			setTimeout(completed);
		} else {
			window.addEventListener("load", completed, false );
		}
	}
	function completed() {
		window.removeEventListener( "load", completed, false );
		callback();
	}
}

function runTextBook (callBack) {

	if(window.document){

        if ( window.document.readyState === "complete" ) {
            setTimeout( run );
        } else {
            // window.document.addEventListener( "DOMContentLoaded", completed, false );
            window.addEventListener("load", completed, false );
        }
    }
    function completed() {
        // window.document.removeEventListener( "DOMContentLoaded", completed, false );
        window.removeEventListener( "load", completed, false );
        callBack();
    }
}
