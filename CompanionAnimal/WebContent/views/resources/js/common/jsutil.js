$(function() {
     // 전화번호 타입 변경 
     // 사용법 : class="tel_type" 추가
    $('input.tel_type').each(function(p_index, p_item) {
        var l_teltype = $(this);

        l_teltype.focus(function() { 
           l_teltype.val(l_teltype.val().replace(/-/g,''));
           l_teltype.select();
        });

        l_teltype.keydown(function() {
           if((event.keyCode<48 || event.keyCode>57) && (event.keyCode<96 || event.keyCode>106) && (event.keyCode!=8) && (event.keyCode!=9) && (event.keyCode != 45) && (event.keyCode != 46) && (event.keyCode<37 || event.keyCode>40))
                event.returnValue = false;
            else
                event.returnValue = true;
        });

        l_teltype.blur(function() { 
           if(l_teltype.val() != "") {
                var l_value = l_teltype.val().replace(/-/g,'');
                var l_lengh = l_value.length;
                if(l_lengh <= 12 && l_lengh >= 9) {
                    if(/^(02)/.test(l_value)) {                                  // 처음 두글자가 02로 시작하는 경우
                        l_teltype.val(l_value.substring(0,2) + "-" + l_value.substring(2, l_lengh-4) + "-" + l_value.substring(l_lengh-4, l_lengh));
                    } else if(/^(00[1-9]|01[0-9]|0[3-9][0-9])/.test(l_value)) {  // 처음 세글자가 001~009 or 010~019 or 030~099  로 시작하는 경우
                        l_teltype.val(l_value.substring(0,3) + "-" + l_value.substring(3, l_lengh-4) + "-" + l_value.substring(l_lengh-4, l_lengh));
                    } else if(/^(1[3-7][0-9][0-9])/.test(l_value)) {             // 처음 네글자가 1300~1799 로 시작하는 경우
                        l_teltype.val(l_value.substring(0,4) + "-" + l_value.substring(4, l_lengh-4) + "-" + l_value.substring(l_lengh-4, l_lengh));
                    }
                } else if(l_lengh <= 8 && l_lengh >= 7) {
                    if(/^(1[3-7][0-9][0-9])/.test(l_value)) {
                        l_teltype.val(l_value.substring(0,4) + "-" + l_value.substring(4, l_lengh));
                    }
                }
            }
        });
    });

    /*
     * 달력 타입 변경
     * 사용법 : class="calendar_type" 추가
     */
    $('input.calendar_type').each(function(p_index, p_item) {
        var l_calendar = $(this);

        l_calendar.focus(function() { 
           l_calendar.val(l_calendar.val().replace(/-/g,''));
           l_calendar.select();
        });

        l_calendar.keydown(function() {
           if((event.keyCode<48 || event.keyCode>57) && (event.keyCode<96 || event.keyCode>106) && (event.keyCode!=8) && (event.keyCode!=9) && (event.keyCode != 45) && (event.keyCode != 46) && (event.keyCode<37 || event.keyCode>40))
                event.returnValue = false;
            else
                event.returnValue = true;
        });

        l_calendar.blur(function() { 
           if(l_calendar.val() != "") {
                var l_value = l_calendar.val().replace(/-/g,'');
                var l_length = l_value.length;
                if(l_length == 8) {
                    if(/^([1-9])/.test(l_value)) {
                        l_calendar.val(l_value.substring(0,4) + "-" + l_value.substring(4, l_length-2) + "-" + l_value.substring(l_length-2, l_length));
                    }
                }
            }
        });
    });

     // 한글 or 영어만 입력
     // 사용법 : class="koreng_type" 추가
     /** charCodeAt() 범위
         숫자 0~9    => 48~57
         영문 대문자 => 65~90
              소문자 => 97~122
         한글 가~힣  => 45032~55203
               자음  => 12593~12622
               모음  => 12623~12643
        [유니코드]
        [초성+종성] 12593(ㄱ) ~ 12622(ㅎ)
        [중성]      12623(ㅏ) ~ 12684(ㆌ)
        [조합]      44032(가) ~ 55203(힣)
     **/
    $('input.koreng_type').each(function(index, item) {
        var o_korengtype = $(this);
        o_korengtype.keyup(function() {
           for(i=0; i<o_korengtype.val().length; i++){
               var chkAt = o_korengtype.val().charCodeAt(i);
               if(!(chkAt >= 97 && chkAt <= 122) && !(chkAt >= 65 && chkAt <= 90) && !(chkAt >= 12593 && chkAt <= 12684) && !(chkAt >= 44032 && chkAt <= 55203) && chkAt != 32) {
                  //  alert("한글 또는 영어만 입력 가능 합니다.");
                    event.returnValue = false;
                    o_korengtype.val(o_korengtype.val().replace(/[^a-z^A-Z^가-힣^ㄱ-ㅎ^ㅏ-ㆌ^' ']/g,''));
               }else {
                    event.returnValue = true;
               }
           }
        });
    });

     // 한글만 입력
     // 사용법 : class="kor_type" 추가
     /** charCodeAt() 범위
         숫자 0~9    => 48~57
         한글 가~힣  => 45032~55203
               자음  => 12593~12622
               모음  => 12623~12643
        [유니코드]
        [초성+종성] 12593(ㄱ) ~ 12622(ㅎ)
        [중성]      12623(ㅏ) ~ 12684(ㆌ)
        [조합]      44032(가) ~ 55203(힣)
     **/
    $('input.kor_type').each(function(index, item) {
        var o_kortype = $(this);
        o_kortype.keyup(function() {
           for(i=0; i<o_kortype.val().length; i++){
               var chkAt = o_kortype.val().charCodeAt(i);
               if(!(chkAt >= 12593 && chkAt <= 12684) && !(chkAt >= 44032 && chkAt <= 55203) && chkAt != 32) {
                  //  alert("한글 또는 영어만 입력 가능 합니다.");
                    event.returnValue = false;
                    o_kortype.val(o_kortype.val().replace(/[^가-힣^ㄱ-ㅎ^ㅏ-ㆌ^' ']/g,''));
               }else {
                    event.returnValue = true;
               }
           }
        });
    });

     // 영어만 입력
     // 사용법 : class="eng_type" 추가
     /** charCodeAt() 범위
         숫자 0~9    => 48~57
         영문 대문자 => 65~90
              소문자 => 97~122
     **/
    $('input.eng_type').each(function(index, item) {
        var o_engtype = $(this);
        o_engtype.keyup(function() {
           for(i=0; i<o_engtype.val().length; i++){
               var chkAt = o_engtype.val().charCodeAt(i);
               if(!(chkAt >= 97 && chkAt <= 122) && !(chkAt >= 65 && chkAt <= 90) && chkAt != 32) {
                  //  alert("한글 또는 영어만 입력 가능 합니다.");
                    event.returnValue = false;
                    o_engtype.val(o_engtype.val().replace(/[^a-z^A-Z^' ']/g,''));
               }else {
                    event.returnValue = true;
               }
           }
        });
    });

    // 숫자만 입력
    // 사용법 : class="number_type" 추가
    /** charCodeAt() 범위
        숫자 0~9    => 48~57
    **/
    $('input.number_type').each(function(index, item) {
        var o_numbertype = $(this);
        o_numbertype.keyup(function() {
           for(i=0; i<o_numbertype.val().length; i++){
               var chkAt = o_numbertype.val().charCodeAt(i);
               if(!(chkAt >= 48 && chkAt <= 57) && chkAt != 46 && chkAt != 32) {
                    alert("숫자만 입력 가능 합니다.");
                    event.returnValue = false;
                    o_numbertype.val(o_numbertype.val().replace(/[^0-9^' ']/g,''));
               }else {
                    event.returnValue = true;
               }
           }
        });

    });
    
    // 소숫숫자만 입력
    // 사용법 : class="number_type" 추가
    /** charCodeAt() 범위
        숫자 0~9    => 48~57
        .(dot)     => 46
    **/
	$('input.decmial_numberType').each(function(index, item) {
		var o_numbertype = $(this);
		o_numbertype.keyup(function() {
			if ( o_numbertype.val().length > 6 ) {
				alert("0.00 부터 100.00까지 입력이 가능합니다.");
				o_numbertype.focus();
			} else {
				for(i=0; i<o_numbertype.val().length; i++){
					var chkAt = o_numbertype.val().charCodeAt(i);
					if(!(chkAt >= 48 && chkAt <= 57) && chkAt != 46 && chkAt != 32) {
						alert("숫자만 입력 가능 합니다.");
						event.returnValue = false;
						o_numbertype.val(o_numbertype.val().replace(/[^0-9^' ']/g,''));
					}else {
						event.returnValue = true;
					}
				}
			}
		});
	    
	});

});

var JsUtil = {
    /**
     * select box가 여러개 있고, 1단계, 2단계, ... 종속적인 구조인 경우 동적으로 상위 select box에 따라 하위 select box의 데이터를 구성한다.
     * @param param.url                  : 결과 데이터를 제공하는 서버쪽 url (ex> donation_cts_gibupgmcts.do?action=gibupgmclscode2List)
     * @param param.chaininfo            : 체인에 대한 정보를 가지고 있는 collection
     * @param param.chaininfo.actionname : change 이벤트가 발생했을 때 요청에 대한 응답을 처리할 actionname
     * @param param.chaininfo.selector   : 체인을 형성하고 있는 select box를 가리키는 css selector
     * ex>
            JsUtil.initSelectBoxChain({
                 url : 'donation_cts_gibupgmcts.do'  // 요청을 처리할 서버 url 정보
                ,chaininfo : [
                    { selector : '#area_list select[name="gibupgmclscode1"]', actionname : 'gibupgmclscode2List' },  // chain의 첫번째 select box css selector 지정 및 change 이벤트 발생 시 요청을 처리할 서버의 actionname
                    { selector : '#area_list select[name="gibupgmclscode2"]' }  // chain의 두번째 select box css selector. 마지막 element는 change 이벤트가 필요 없으므로 actionname 지정 필요 없음
                ]
            });
     */
    initSelectBoxChain : function(param) {
        try {
            // select box chain 전체 개수 설정
            var l_total_size = (param.chaininfo).length;

            // chain의 갯수가 1인 경우는 아무런 처리를 하지 않는다.
            if(l_total_size == 1) {
                return;
            }

            // 매개변수에 해당하는 select box 하위에 있는 select box를 초기화 하는 함수 선언
            // @param p_base_index : select box chain 중, change event가 발생한 select box의 index 값
            var l_init_child_select_box = function(p_base_index) {
                for(var i=p_base_index + 1; i<l_total_size; i++) {
                    var l_thisobj = $(param.chaininfo[i].selector);
                    if(l_thisobj.children().get(0).value == '') {
                        l_thisobj[0].length = 1;
                    } else {
                        l_thisobj[0].length = 0;
                    }
                }
            }

            // 매개변수에 해당하는 select box를 포함하여 상위에 있는 select box들의 선택된 값을 활용하여 서버에 질의할 querystring 문자열을 반환하는 함수 선언
            // @param p_base_index : select box chain 중, change event가 발생한 select box의 index 값
            var l_get_querystring = function(p_base_index) {
                var l_returnvalue = '';
                
                for(var i=0; i<=p_base_index; i++) {
                    l_returnvalue += '&code' + (i+1) + '=' + $(param.chaininfo[i].selector).val();
                }
                return l_returnvalue;
            }

            // 마지막 select box를 제외하고 각 select box에 change 이벤트가 발생할 경우 호출될 서버 주소 정보를 설정, change 이벤트를 등록
            for(var i=0; i<l_total_size-1; i++) {
                var l_current_obj = $(param.chaininfo[i].selector);

                l_current_obj.data('index', i);
                l_current_obj.change(function() {
                    // chain에서 현재 change 이벤트가 일어난 곳의 index 번호를 구한다.
                    var l_index = $(this).data('index');

                    // change 이벤트가 일어났을 때 대상이 되는 객체(select box)를 캐싱한다.
                    var l_target_index = l_index + 1;
                    var l_target_obj = $(param.chaininfo[l_target_index].selector);
                    
                    // 구조적으로 대상 객체의 하위에 있는 객체(select box)의 데이터를 모두 초기화 한다.
                    for(var l_clear_index = l_target_index + 1; l_clear_index < l_total_size; l_clear_index++) {
                        var l_clear_obj = $(param.chaininfo[l_clear_index].selector);
                        $(l_clear_obj)[0].length = 1;
                    }

                    // 대상 객체의 데이터를 구성한다.
                    l_target_obj.configSelectBox({
                         url         : param.url + '?action=' + param.chaininfo[l_index].actionname
                        ,querystring : l_get_querystring(l_index)
                    });
                });
            }
        } catch(e) {
            alert("[jsutil.js's initSelectBoxChain] " + e.description);
        }
    },
    /**
     * json 형태의 데이터를 UI에 바인딩 처리
     *   주의! 반드시 json key와 form ui의 name 속성이 일치해야한다.
     * @param p_html_form_element   : binding 될 html form element 객체
     * @param p_json_data           : bind data
     */
    bindUiFormByJson : function(p_html_form_element, p_json_data) {
        try {
            var l_jquery_form = $(p_html_form_element);
            if(l_jquery_form.size() == 0) {
                alert('jsutil.js bindUiFormByJson - 존재하지 않는 form element입니다.');
                return;
            }

            var l_json = null;
            if(p_json_data[0] != undefined) {
                l_json = p_json_data[0];
            } else {
                l_json = p_json_data;
            }

            $.each(l_jquery_form[0].elements, function(p_index, p_item) {
                $(p_item).setValue(l_json[p_item.name]);
            });
        } catch(e) {
            alert("[jsutil.js's bindUiFormByJson] " + e.description);
        }
    }
}

/**
 * jquery 사용자 정의 함수 확장
 *   - 마음껏 수정해서 사용하세요.
 *   - 라이센스 등은 오뉴월의 개한테나 가져다 주세요.
 *   - 성능 개선이 있으면 공유좀 합시다!! robertdh@naver.com 으로 연락주세요~
 *   - 이상 (주)지투이정보기술 만년 대리를 꿈꾸는 정댈이었습니다~
 */
jQuery.fn.extend({
    /**
     * ajax를 이용해서 select box의 데이터를 구성하는 함수
     *   대상이 되는 select box의 첫번째 option value = '' 이면 제거를 안하고 그렇지 않으면 제거하고 새로운 데이터로 구성합니다.
     * @param param               : json format
     * @param param.url           : 결과 데이터를 제공하는 서버쪽 url (ex> donation_cts_gibupgmcts.do?action=gibupgmclscode2List)
     * @param param.querystring   : 서버에 전달할 질의 문장(ex> code1=12&code2=32&code3=23)
     * @param param.selectedvalue : 동적으로 option list가 구성된 후 기본적으로 선택된 값을 설정할 값

     예시>
            selectGibupgmclscode2List : function(p_gibupgmclscode1) {
                try {
                    $('#area_list select[name="gibupgmclscode2"]').configSelectBox({
                         url          : 'donation_cts_gibupgmcts.do?action=gibupgmclscode2List'
                        ,querystring  : 'code1=12&code2=32&code3=23'
                    });
                } catch(e) {
                    alert("[donation_cts_gibupgmcts_list.js's selectGibupgmclscode2List] " + e.description);
                }
            }
     */
    configSelectBox : function(param) {
        return this.each(function(p_index, p_item) {
            try {
                var $this = $(this);

                // select box만 처리 가능하도록 제한
                if($this[0].tagName.toUpperCase() != 'SELECT') {
                    alert("[jsutil.js's configSelectBox - select box 요소만 configSelectBox 메소드를 사용할 수 있습니다.] " + e.description);
                    return;
                }

                // 존재하는 element에 대한 것인지 확인
                if($this.size() == 0) {
                    alert("[jsutil.js's configSelectBox - 존재하지 않는 selector로 configSelectBox 메소드를 사용하였습니다.] " + e.description);
                    return;
                }

                // 데이터 구성
                jQuery.ajax({
                    type : 'GET'
                    ,url : param.url
                    ,dataType : 'text'
                    ,data : param.querystring
                    ,success : function(p_json) {
                        try {
                            // 대상 selectbox 초기화 - 기 구성된 option element 제거
                            if($this.children().get(0).value == '' || $this.children().get(0).value == null) {
                                $this[0].length = 1;
                            } else {
                                $this[0].length = 0;
                            }

                            // 데이터 동적 구성
                            $.each(eval('('+p_json+')'), function(p_index, p_item) {
                                $this.append('<option value="'+p_item.code+'">'+p_item.name+'</option>');
                            });

                            // 현재 선택된 값 설정
                            if(param.selectedvalue != undefined && param.selectedvalue != '') {
                                $this.setValue(param.selectedvalue);
                            }
                        } catch(e) {
                            alert("[jsutil.js's configSelectBox ajax] " + e.description);
                        }
                    }
                });
            } catch(e) {
                alert("[jsutil.js's configSelectBox] " + e.description);
            }
        });
    },
    /**
     * "조회중입니다" 메세지를 표시하는 함수
     * @param param.message : 메세지 내용
     */
    showLoadingMessage : function(param) {
        return this.each(function() {
            try {
                var $this = $(this);
                var l_loadingobj = $this.children('p[class="loading_message"]');
                if(l_loadingobj.size() == 0) {
                    $this.append('<p class="loading_message" style="top:50px"><img src="images/loading.gif" alt="조회중입니다." /></p>');
                } else {
                    l_loadingobj.show();
                }
            } catch(e) {
                alert("[jsutil.js's showLoadingMessage] " + e.description);
            }
        });
    },
    /**
     * "조회중입니다" 메세지를 표시하는 함수
     */
    hideLoadingMessage : function() {
        return this.each(function() {
            try {
                var $this = $(this);
                var l_loadingobj = $this.children('p[class="loading_message"]');
                if(l_loadingobj.size() > 0) {
                    l_loadingobj.hide();
                }
            } catch(e) {
                alert("[jsutil.js's hideLoadingMessage] " + e.description);
            }
        });
    },
    /**
     * 값 설정 함수
     * @param p_value : 설정할 값
     */
    setValue : function(p_value) {
        return this.each(function() {
            try {
                var $this = $(this);
                if($this.size() == 0) {
                    return this;
                }
                switch($this[0].tagName.toUpperCase()) {
                case 'INPUT' :
                    switch($this.attr('type').toUpperCase()) {
                    case 'TEXT' :
                    case 'HIDDEN' :
                    case 'PASSWORD' :
                        $this.val(p_value);
                        break;
                    case 'CHECKBOX' :
                    case 'RADIO' :
                        if($this.val() == p_value) {
                            $this.attr('checked', true);
                        } else {
                            $this.attr('checked', false);
                        }
                        break;
                    }
                    break;
                case 'TEXTAREA' :
                    $this.val(p_value);
                    break;
                case 'SELECT' :
                    var l_selected_index = 0;
                    $.each($this.children('option'), function(p_index, p_item) {
                        if($(p_item).val() == p_value) {
                            l_selected_index = p_index;
                            return false; // break
                        }
                    });
                    $this.children('option:eq('+l_selected_index+')').attr('selected', true);
                    break;
                }
            } catch(e) {
                alert("[jsutil.js's setValue] " + e.description);
            }
        });
    },
    /**
     * 입력 엘리먼트에 대한 숫자 형식 처리
     */
    numberFormat : function(p_divider_y) {
        return this.each(function() {
            try {
                var $this = $(this);

                // 숫자,콤마,backspace,enter key만 입력 가능하도록 제한
                $this.keydown(function(p_event) {
                    var l_keycode = p_event.keyCode;
                    var l_str     = l_keycode > 57 ? String.fromCharCode(l_keycode-48) : String.fromCharCode(l_keycode);
                    var l_pattern = /^[0-9]+$/;
                    // back-space, tab-key enter-key, delete-key, ←, ↑, →, ↓는 입력 가능하도록 함
                    if(l_keycode == 8 || l_keycode == 9 || l_keycode == 13 || l_keycode == 46 || l_keycode == 37 || l_keycode == 38 || l_keycode == 39 || l_keycode == 40) {
                        return true;
                    }

                    // 숫자만 입력 가능하도록 함
                    if(!l_pattern.test(l_str)) {
                        return false;
                    } else {
                        return true;
                    }
                });

                if(p_divider_y == undefined) {
                    // 포커스를 잃었을 때 처리 - 999,999,999 format으로 변환 처리
                    $this.blur(function() {
                        var l_str = $(this).val();
                        var l_arr_newstr = new Array();
                        var l_counter = 0;
                        if(l_str.indexOf(',') != -1) {
                            return true;
                        }
                        for(var i=l_str.length-1; i>=0; i--) {
                            if((l_counter >= 3) && (l_counter % 3 == 0)) {
                                l_arr_newstr.push(',');
                            }
                            l_arr_newstr.push(l_str.charAt(i));
                            l_counter++;
                        }
                        $this.val(l_arr_newstr.reverse().join(''));
                    });

                    // 포커스를 얻어을 때 처리 - number format을 위한 콤마를 모두 제거한다.
                    $this.focus(function() {
                        $this.val($this.val().replace(/,/g, ''));
                    });
                }
            } catch(e) {
                alert("[jsutil.js's numberFormat] " + e.description);
            }
        });
    },
    /**
     * 날짜 형식으로 변환
     */
    dateFormat : function() {
        return this.each(function() {
            try {
                var $this = $(this);

                // 숫자,콤마,backspace,enter key만 입력 가능하도록 제한
                $this.keydown(function(p_event) {
                    var l_keycode = p_event.keyCode;
                    var l_str     = l_keycode > 57 ? String.fromCharCode(l_keycode-48) : String.fromCharCode(l_keycode);
                    var l_pattern = /^[0-9]+$/;
                    var l_value   = $this.val();

                    // back-space, enter-key, delete-key는 입력 가능하도록 함
                    if(l_keycode == 8 || l_keycode == 13 || l_keycode == 46) {
                        if(l_keycode == 8) {
                            switch(l_value.length) {
                            case 6 :
                            case 9 :
                                $this.val(l_value.substring(0, l_value.length - 1));
                                break;
                            }
                        }
                        return true;
                    }

                    // 입력 문자열 길이가 10자리(- 포함)넘을 경우 더이상 입력 못하도록 막음 && 입력 문자열 길이에 따른 '-' 기호 삽입 처리
                    switch(l_value.length) {
                    case 4 :
                        $this.val(l_value + '-');
                        break;
                    case 7 :
                        $this.val(l_value + '-');
                        break;
                    case 10 :
                        return false;
                    }

                    // 숫자만 입력 가능하도록 함
                    if(!l_pattern.test(l_str)) {
                        return false;
                    } else {
                        return true;
                    }
                });
            } catch(e) {
                alert("[jsutil.js's dateFormat] " + e.description);
            }
        });
    }
})

var JsDebugUtil = {
    /**
     * json 구조를 분석해주는 함수(배열 빼고 ㅋㅋ)
     * @param p_json
     */
    parseJson : function(p_json) {
        try {
            var msg = '';
            for(var key in p_json) {
                msg += 'p_json['+key+'] : **'+p_json[key]+'**\n';
            }
            alert(msg);
        } catch(e) {
            alert("[jsutil.js's JsDebugUtil.parseJson] " + e.description);
        }
    }
}
