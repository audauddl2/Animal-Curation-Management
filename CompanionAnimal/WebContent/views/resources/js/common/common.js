// ���Խ� ����� [ ��ȿ�� üũ ]
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
            alert("�˾��� ���ܵǾ ���������� ����ϽǼ� �����ϴ�.\n\n\"�� ����Ʈ �ּҸ� �˾����ܿ��� ����� �ֽñ� �ٶ��ϴ�.\n\n\n================================   ��     ��   ==================================\n\n1. Explore ���� - �˾� ���� ���� ���� �˾����� ������ Ȯ���Ͻñ� �ٶ��ϴ�.\n\n2. ���ͳݿ��� ���ٸ� ��ġ�Ͻ� ��쿡 ���ٿ��� �˾����� ���� ������ Ȯ���Ͻñ� �ٶ��ϴ�.");
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
            alert("�˾��� ���ܵǾ ���������� ����ϽǼ� �����ϴ�.\n\n\"�� ����Ʈ �ּҸ� �˾����ܿ��� ����� �ֽñ� �ٶ��ϴ�.\n\n\n================================   ��     ��   ==================================\n\n1. Explore ���� - �˾� ���� ���� ���� �˾����� ������ Ȯ���Ͻñ� �ٶ��ϴ�.\n\n2. ���ͳݿ��� ���ٸ� ��ġ�Ͻ� ��쿡 ���ٿ��� �˾����� ���� ������ Ȯ���Ͻñ� �ٶ��ϴ�.");
        } else {
            l_popup_window.focus();
        }
    });
    // �α׾ƿ� ó��
    $('#logout').click(function() {
        var l_width         = 490;
        var l_height        = 150;
        var l_center_width  = (screen.width-l_width)/2;
        var l_center_height = (screen.height-l_height)/2;
        var l_popup_window  = window.open('logout.do', 'LOGOUT', 'width=' + l_width +', height=' + l_height + ', top=' + l_center_height +  ', left=' + l_center_width + ' ,toolbar=no, location=no, directories=no, status=no, scrollbars=yes, resizeable=yes, copyhistory=no, menubar=no, fullscreen=no');
		if(l_popup_window == null) {
            alert("�˾��� ���ܵǾ ���������� ����ϽǼ� �����ϴ�.\n\n\"�� ����Ʈ �ּҸ� �˾����ܿ��� ����� �ֽñ� �ٶ��ϴ�.\n\n\n================================   ��     ��   ==================================\n\n1. Explore ���� - �˾� ���� ���� ���� �˾����� ������ Ȯ���Ͻñ� �ٶ��ϴ�.\n\n2. ���ͳݿ��� ���ٸ� ��ġ�Ͻ� ��쿡 ���ٿ��� �˾����� ���� ������ Ȯ���Ͻñ� �ٶ��ϴ�.");
        } else {
            l_popup_window.focus();
        }
    });
});

var Common = {
    init : function() {  // �ʱ�ȭ �޼ҵ�
        try {
            $('#menu_list li div').addClass('display_none');
            $('#submenu_list li ul').addClass('display_none');
        } catch(e) {
            alert("[script/common.js's Common.init] " + e.description);
        }
    },
    selectMenu : function() {  // �޴� ���ý� �޼ҵ�
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
     * tab menu �ʱ�ȭ
     */
    init : function() {
        try {
            var l_tab_header_list = $('.tab_header a');
            var l_tab_body_list = $('.tab_body > div');
            // check validation
            if(l_tab_header_list.size() == 0) {
                alert('�ǿ� ���� html ������ �ȵǾ� �ֽ��ϴ�.');
                return;
            }
            if(l_tab_header_list.size() != l_tab_body_list.size()) {
                alert('���� header�� body�� ������ ���� �ٸ��ϴ�. Ȯ�� ��Ź�帳�ϴ�.');
                return;
            }

            // header�� body�� matching ��Ų��.
            $.each($('.tab_header a'), function(p_index, p_item) {
                $(p_item).data('target_tab_body', l_tab_body_list.eq(p_index));
            });

            // �⺻������ ù��° �� ������ �������� ó���Ѵ�.
            TabMenu.displayTab(l_tab_header_list.eq(0));
        } catch(e) {
            alert("[common.js's TabMenu.init] " + e.description);
        }
    },
    /**
     * �Ű������� �ش��ϴ� ���� display ó��
     * @param p_target_header : �� ����� anchor element
     */
    displayTab : function(p_target_header) {
        try {
            // tab header ���õ� �׸� ����
            $(p_target_header).parent().siblings().children('a').removeClass('on');
            $(p_target_header).addClass('on');

            // tab body ���õ� �׸� ����
            $($(p_target_header).data('target_tab_body')).siblings().hide();
            $($(p_target_header).data('target_tab_body')).show();
        } catch(e) {
            alert("[common.js's TabMenu.toggleTab] " + e.description);
        }
    }
}
