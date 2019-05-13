// 정규식 선언부 [ 유효성 체크 ]
var g_isNUM    = /^[0-9]/;
var g_isENG    = /^[a-zA-Z]/;
var g_isJUMIN1 = /^[0-9]{6}$/;
var g_isJUMIN2 = /^[0-9]{7}$/;
var g_isTELNO  = /^[0-9\-]{9,12}$/;
var g_isHPNO   = /^[0-9\-]{10,13}$/;
var g_isEMAIL  = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
var g_isPOST   = /^[0-9\-]{6,7}$/;

$(function() {

    Common.init();
    $('#total > a, #event > a, #statistics > a, #homepage > a, #community > a, #code_site > a').click(Common.selectMenu);
    $('.sub_menu_list a').click(Common.selectSubMenu);
    $('.sub_title').click(Common.selectSideMenu);
    $('.submenu_title ul li a').click(Common.selectLastDepthMenu);
    $('.submenu_title ul li a.total_popup').click(function() {
        var l_width         = 1098;
        var l_height        = 980;
        var l_center_width  = (screen.width-l_width)/2;
        var l_center_height = (screen.height-l_height)/2;
        var l_popup_window  = window.open($(this).attr('href'), $(this).attr('title'), 'width=' + l_width +', height=' + l_height + ', top=' + l_center_height +  ', left=' + l_center_width + ' ,toolbar=no, location=no, directories=no, status=no, scrollbars=yes, resizeable=no, copyhistory=no, menubar=no, fullscreen=no');
		if(l_popup_window == null) {
            alert("팝업이 차단되어서 정상적으로 사용하실수 없습니다.\n\n\"현 사이트 주소를 팝업차단에서 허용해 주시기 바랍니다.\n\n\n================================   참     고   ==================================\n\n1. Explore 도구 - 팝업 차단 설정 에서 팝업차단 사항을 확인하시기 바랍니다.\n\n2. 인터넷에서 툴바를 설치하신 경우에 툴바에서 팝업차단 설정 사항을 확인하시기 바랍니다.");
        } else {
            l_popup_window.focus();
        }
        return false;
    });
    $('#hjd_code').click(function() {
        var l_width         = 1070;
        var l_height        = 800;
        var l_center_width  = (screen.width-l_width)/2;
        var l_center_height = (screen.height-l_height)/2;
        var l_popup_window  = window.open('hjd_code.do', 'hjdcodelist', 'width=' + l_width +', height=' + l_height + ', top=' + l_center_height +  ', left=' + l_center_width + ' ,toolbar=no, location=no, directories=no, status=no, scrollbars=yes, resizeable=yes, copyhistory=no, menubar=no, fullscreen=no');
		if(l_popup_window == null) {
            alert("팝업이 차단되어서 정상적으로 사용하실수 없습니다.\n\n\"현 사이트 주소를 팝업차단에서 허용해 주시기 바랍니다.\n\n\n================================   참     고   ==================================\n\n1. Explore 도구 - 팝업 차단 설정 에서 팝업차단 사항을 확인하시기 바랍니다.\n\n2. 인터넷에서 툴바를 설치하신 경우에 툴바에서 팝업차단 설정 사항을 확인하시기 바랍니다.");
        } else {
            l_popup_window.focus();
        }
    });
    // 로그아웃 처리
    $('#logout').click(function() {
        var l_width         = 490;
        var l_height        = 150;
        var l_center_width  = (screen.width-l_width)/2;
        var l_center_height = (screen.height-l_height)/2;
        var l_popup_window  = window.open('logout.do', 'LOGOUT', 'width=' + l_width +', height=' + l_height + ', top=' + l_center_height +  ', left=' + l_center_width + ' ,toolbar=no, location=no, directories=no, status=no, scrollbars=yes, resizeable=yes, copyhistory=no, menubar=no, fullscreen=no');
		if(l_popup_window == null) {
            alert("팝업이 차단되어서 정상적으로 사용하실수 없습니다.\n\n\"현 사이트 주소를 팝업차단에서 허용해 주시기 바랍니다.\n\n\n================================   참     고   ==================================\n\n1. Explore 도구 - 팝업 차단 설정 에서 팝업차단 사항을 확인하시기 바랍니다.\n\n2. 인터넷에서 툴바를 설치하신 경우에 툴바에서 팝업차단 설정 사항을 확인하시기 바랍니다.");
        } else {
            l_popup_window.focus();
        }
    });
});

var Common = {
    init : function() {  // 초기화 메소드
        try {
            $('#menu_list li div').addClass('display_none');
            $('#submenu_list li ul').addClass('display_none');
        } catch(e) {
            alert("[script/common.js's Common.init] " + e.description);
        }
    },
    selectMenu : function() {  // 메뉴 선택시 메소드
        try {
            $('#menu_list li div').css('display', 'none');
            $('#menu_list li a').css('background-position', '0% 0%');
        } catch(e) {
            alert("[script/common.js's Common.selectMenu] " + e.description);
        }
    },
    selectSubMenu : function() {
        try {
            //$(this).parent().parent().parent().css('display', 'none');
            $('.submenu_title ul').addClass('display_none');
            $(this).addClass('select');
        } catch(e) {
            alert("[script/common.js's Common.selectSubMenu] " + e.description);
        }
    },
    selectSideMenu : function() {
        try {
            $('.submenu_title').removeClass('on');
            $(this).parent().addClass('on');
            $('.submenu_title ul').addClass('display_none');
            $(this).next().removeClass('display_none');
        } catch(e) {
            alert("[script/common.js's Common.selectSideMenu] " + e.description);
        }
    },
    selectLastDepthMenu : function() {
        try {
            $('.submenu_title ul li a').removeClass('select');
            $(this).addClass('select');
        } catch(e) {
            alert("[script/common.js's Common.selectLastDepthMenu] " + e.description);
        }
    }
}

var TabMenu = {
    /**
     * tab menu 초기화
     */
    init : function() {
        try {
            var l_tab_header_list = $('.tab_header a');
            var l_tab_body_list = $('.tab_body > div');
            // check validation
            if(l_tab_header_list.size() == 0) {
                alert('탭에 대한 html 구성이 안되어 있습니다.');
                return;
            }
            if(l_tab_header_list.size() != l_tab_body_list.size()) {
                alert('탭의 header와 body의 개수가 서로 다릅니다. 확인 부탁드립니다.');
                return;
            }

            // header와 body를 matching 시킨다.
            $.each($('.tab_header a'), function(p_index, p_item) {
                $(p_item).data('target_tab_body', l_tab_body_list.eq(p_index));
            });

            // 기본적으로 첫번째 탭 영역은 보여지게 처리한다.
            TabMenu.displayTab(l_tab_header_list.eq(0));
        } catch(e) {
            alert("[common.js's TabMenu.init] " + e.description);
        }
    },
    /**
     * 매개변수에 해당하는 영역 display 처리
     * @param p_target_header : 탭 헤더의 anchor element
     */
    displayTab : function(p_target_header) {
        try {
            // tab header 선택된 항목 제어
            $(p_target_header).parent().siblings().children('a').removeClass('on');
            $(p_target_header).addClass('on');

            // tab body 선택된 항목 제어
            $($(p_target_header).data('target_tab_body')).siblings().hide();
            $($(p_target_header).data('target_tab_body')).show();
        } catch(e) {
            alert("[common.js's TabMenu.toggleTab] " + e.description);
        }
    }
}
