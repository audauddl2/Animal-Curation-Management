$(function() {
	ProductWrite.init();
    $('#listBtn').click(ProductWrite.list);                          // 목록, 리스트
    $('#saveBtn').click(ProductWrite.save);                       // 저장
    $('#cancellBtn').click(ProductWrite.cancle);
	$('.Carcinogen').click(ProductWrite.valueChange);
	$('#brandSearch').click(ProductWrite.brandSearch);
    $('#ingredientAdd').click(ProductWrite.ingredientAdd);
    $('#ingredientRemove').click(ProductWrite.ingredientRemove);
});

var calc_rownum = 1;

var ProductWrite = {
		
	init : function() {
		
		alert("productWrite init......");
		$('#productHard').val($('#productHardRange').val());
		$('#productFatty').val($('#productFattyRange').val());
		$('#productMoist').val($('#productMoistRange').val());
		
		$("input[name=productHardRange]").change(function() {
			$('#productHard').val($('#productHardRange').val());			
		});

		$("input[name=productFattyRange]").change(function() {
			$('#productFatty').val($('#productFattyRange').val());			
		});

		$("input[name=productMoistRange]").change(function() {
			$('#productMoist').val($('#productMoistRange').val());			
		});
		
	},
		
		
	brandSearch : function() {
		
		windows.open();
		
	},
		
    list : function() {
        var l_frm       = $('#frm_save');

        l_frm.attr('method', 'post');
        l_frm.attr('action', '/web/adm/dicList');
        l_frm.submit();
    },

    save : function() {
    	
        var frm = $('#frm');
        var l_productImage = $("#productImage");								// 상품이미지
        var l_brandCode = $('#brandCode');										// 브랜드
        var l_productName = $('#productName');									// 제품명
        var l_productPrice = $('#productPrice');								// 제품 가격
        var l_productVolume = $('#productVolume');								// 제품양
        
        var l_productHard = $('#productHard');									// 특징 - 딱딱함
        var l_productFatty = $('#productFatty');								// 특징 - 기름짐
        var l_productMoist = $('#productMoist');								// 특징 - 촉촉함
        var l_crudeProtein = $('#crudeProtein');								// 성분비/성분 구성 - 조단백
        var l_crudeFat = $('#crudeFat');										// 성분비/성분 구성 - 조지방
        var l_crudeFiber = $('#crudeFiber');									// 성분비/성분 구성 - 조섬유
        var l_crudeAsh = $('#crudeAsh');										// 성분비/성분 구성 - 조회분
        var l_calcium = $('#calcium');											// 성분비/성분 구성 - 칼슘
        var l_phosphorus = $('#phosphorus');									// 성분비/성분 구성 - 인
        var l_omega3 = $('#omega3');											// 성분비/성분 구성 - 오메가3
        var l_omega6 = $('#omega6');											// 성분비/성분 구성 - 오메가6
        
        var l_ingredientNum = $('#ingredientNum');								// 성분 코드 등록
        
        var l_ingredientsYN =  $("input[name=ingredientsYN]:checked");
        
/*
        if ( l_brandCode.val() == "" || l_brandCode.val() == null ) {
            alert("상품 브랜드를 선택해주세요.");
            l_brandCode.focus();
            return false;
        }
*/   
        l_brandCode = l_brandCode.val().length == 0 ? 0 : l_brandCode.val();
        
        if ( l_productName.val() == "" || l_productName.val == null ) {
            alert("제품명을 입력해주세요.");
            l_productName.focus();
            return false;
        }

        if ( l_productPrice.val() == "" || l_productPrice.val == null ) {
            alert("제품가격을 입력해주세요.");
            l_productPrice.focus();
            return false;
        }
/*
        if ( l_productVolume.val() == "" || l_productVolume.val == null ) {
            alert("제품양을 입력해주세요.");
            l_productVolume.focus();
            return false;
        }
*/        
        if ( $("input[name=productUse]:checked").length <= 0 ) {
        	alert("분류 용도를 선택해주세요.");
        	return false;
        } else {
        	var checkList=[]; // 선택된 값을 넣을 배열 선언 
	        $("input[name=productUse]:checked").each(function() {
	        	var ckvalue = $(this).val();
	        	checkList.push(ckvalue);
	        	
	        	$('#productUseVal').val(checkList);
			});
        }
        
        if ( $("input[name=productMaterial]:checked").length <= 0 ) {
        	alert("분류 원료를 선택해주세요.");
        	return false;
        } else {
        	var checkList=[]; // 선택된 값을 넣을 배열 선언 
	        $("input[name=productMaterial]:checked").each(function() {
	        	var ckvalue = $(this).val();
	        	checkList.push(ckvalue);
	        	
	        	$('#productMaterialVal').val(checkList);
			});
        }
        
        if ( $("input[name=productFunction]:checked").length <= 0 ) {
        	alert("분류 기능을 선택해주세요.");
        	return false;
        } else {
        	var checkList=[]; // 선택된 값을 넣을 배열 선언 
	        $("input[name=productFunction]:checked").each(function() {
	        	var ckvalue = $(this).val();
	        	checkList.push(ckvalue);
	        	
	        	$('#productFunctionVal').val(checkList);
			});
        }
        
        
        if ( $("input[name=productKind]:checked").length <= 0 ) {
        	alert("분류 죵류를 선택해주세요.");
        	return false;
        } else {
        	var checkList=[]; // 선택된 값을 넣을 배열 선언 
	        $("input[name=productKind]:checked").each(function() {
	        	var ckvalue = $(this).val();
	        	checkList.push(ckvalue);
	        	
	        	$('#productKindVal').val(checkList);
			});
        }
        
        /*
        if ( l_crudeProtein.val() == "" || l_crudeProtein.val == null ) {
            alert("성분비/성분 구성 중 조단백을 입력해주세요.");
            l_crudeProtein.focus();
            return false;
        }
        
        if ( l_crudeFat.val() == "" || l_crudeFat.val == null ) {
            alert("성분비/성분 구성 중 조지방을 입력해주세요.");
            l_crudeFat.focus();
            return false;
        }

        if ( l_crudeFiber.val() == "" || l_crudeFiber.val == null ) {
            alert("성분비/성분 구성 중 조섬유를 입력해주세요.");
            l_crudeFiber.focus();
            return false;
        }

        if ( l_crudeAsh.val() == "" || l_crudeAsh.val == null ) {
            alert("성분비/성분 구성 중 조회분을 입력해주세요.");
            l_crudeAsh.focus();
            return false;
        }

        if ( l_calcium.val() == "" || l_calcium.val == null ) {
            alert("성분비/성분 구성 중 칼슘을 입력해주세요.");
            l_calcium.focus();
            return false;
        }

        if ( l_phosphorus.val() == "" || l_phosphorus.val == null ) {
            alert("성분비/성분 구성 중 인을 입력해주세요.");
            l_phosphorus.focus();
            return false;
        }

        if ( l_omega3.val() == "" || l_omega3.val == null ) {
            alert("성분비/성분 구성 중 오메가3을 입력해주세요.");
            l_omega3.focus();
            return false;
        }

        if ( l_omega6.val() == "" || l_omega6.val == null ) {
            alert("성분비/성분 구성 중 오베가6를 입력해주세요.");
            l_omega6.focus();
            return false;
        }
        */
        
        if ( l_ingredientsYN.val() == 'undefined' ||  l_ingredientsYN.val() == null ) {
        	alert("성분공개여부를 선택해주세요.");
        	return false;
        }
        
        for ( var i = 1; i <= calc_rownum; i++ ) {
        	var ingredientCode = $('#ingredientCode_' + i).val();
        	var ingredient = $('#ingredient_'+i).val();
        	
        	if ( ingredientCode == "" ) {
        		alert("성분명을 조회해주세요.");
        		return false;
        	} else {
        		if ( i <= 1 ) {
        			l_ingredientNum.val(ingredientCode);
        		} else {
        			l_ingredientNum.val(l_ingredientNum.val() + "," + ingredientCode);
        		}
        	}
        }
        
/*
				"productImage"				: l_productImage.val(),
				"brandCode"					: l_brandCode.val(),
				"productName"				: l_productName.val(),
				"productPrice"				: l_productPrice.val(),
				"productVolume"				: l_productVolume.val(),
				"ProductUse"				: $('#ProductUseVal').val(),
				"productMaterial"			: $('#productMaterialVal').val(),
				"productFunction"			: $('#productFunctionVal').val(),
				"productKind"				: $('#productKindVal').val,
				"productHard"				: l_productHard.val(),
				"productFatty"				: l_productFatty.val(),
				"productMoist"				: l_productMoist.val(),
				"crudeProtein"				: l_crudeProtein.val(),
				"crudeFat"					: l_crudeFat.val(),
				"crudeFiber"				: l_crudeFiber.val(),
				"crudeAsh"					: l_crudeAsh.val(),
				"calcium"					: l_calcium.val(),
				"phosphorus"				: l_phosphorus.val(),
				"omega3"					: l_omega3.val(),
				"omega6"					: l_omega6.val(), 
				"ingredientsYN"				: l_ingredientsYN.val(),
				"ingredientIdx"				: l_ingredientNum.val()
*/				        
        
        $.ajax({
            url  : "/adm/productSave",
            type : "post",
            data : {
				"productImage"				: l_productImage.val(),
				"brandCode"					: l_brandCode,
                "productName"				: l_productName.val(),
                "productPrice"				: l_productPrice.val(),
				"productVolume"				: l_productVolume.val() == "" ? 0 : l_productVolume.val(),
				"ProductUse"				: $('#ProductUseVal').val(),
				"productMaterial"			: $('#productMaterialVal').val(),
				"productFunction"			: $('#productFunctionVal').val(),
				"productKind"				: $('#productKindVal').val,
				"productHard"				: l_productHard.val(),
				"productFatty"				: l_productFatty.val(),
				"productMoist"				: l_productMoist.val(),
				"crudeProtein"				: l_crudeProtein.val() == "" ? 0.0 : l_crudeProtein.val(),
				"crudeFat"					: l_crudeFat.val() == "" ? 0.0 : l_crudeFat.val(),
				"crudeFiber"				: l_crudeFiber.val() == "" ? 0.0 : l_crudeFiber.val(),
				"crudeAsh"					: l_crudeAsh.val() == "" ? 0.0 : l_crudeAsh.val(),
				"calcium"					: l_calcium.val() == "" ? 0.0 : l_calcium.val(),
				"phosphorus"				: l_phosphorus.val() == "" ? 0.0 : l_phosphorus.val(),
				"omega3"					: l_omega3.val() == "" ? 0.0 : l_omega3.val(),
				"omega6"					: l_omega6.val() == "" ? 0.0 : l_omega6.val(), 
				"ingredientsYN"				: l_ingredientsYN.val(),
				"ingredientIdx"				: l_ingredientNum.val()
            },
            dataType : "json",
            success  : function showResponse(responseText, statusText)  { 
                //alert(responseText.writer+statusText + "==" + responseText.returnCode );
                if(responseText.returnCode == 'success'){
                    alert(responseText.msg);
                    location.href = "/web/adm/dicList";
                }else if(responseText.returnCode == 'updateSuccess'){
                    alert(responseText.msg);
                    location.href = "/web/adm/dicList";
                }else{
                    alert("정상적으로 처리 되지 않았습니다..");
                }
            },

            error : function(xhr, errmsg, errobj) {
                alert(errmsg);
            }
        });
    },

    cancle : function() {
        var l_frm           = $('#frm_save');
        
        l_frm.attr('method', 'post');
        l_frm.attr('action', '/web/adm/dicList');
        l_frm.submit();
    },
    
    valueChange : function() {
    	
    	var $obj = $(this);
    	var $chk = $obj.find("input[type=radio]");
    	$chk.click(function(){                
    		$('input:not(:checked)').parent(".chkbox1").removeClass("on");
    		$('input:checked').parent(".chkbox1").addClass("on");                    
    	});
    },
    
    ingredientAdd : function() {
        calc_rownum++;
        var rowText = "";
        
		rowText += '<div id="ingredientContent_'+ calc_rownum + '">';
		rowText += '<p class="title"></p>';
		rowText += '<div class="subContent">';
		rowText += '<input type="hidden" name="ingredientCode_'+ calc_rownum + '" id="ingredientCode_'+ calc_rownum + '" value="">';
		rowText += '<input class="inpType" type="text" name="ingredient_'+ calc_rownum + '" id="ingredient_'+ calc_rownum + '" placeholder="성분을 입력해 주세요">';
		rowText += '<input class="btn" type="button" value="검색" name="ingredientSearch_'+ calc_rownum + '" id="ingredientSearch_'+ calc_rownum + '" onClick="JavaScript:ingredientSearch('+ calc_rownum + ');">';
		
		rowText += '</div>';
		rowText += '</div>';
        
        $(".ingredient").append(rowText);
        $('#ingredientNum').val(calc_rownum);
    },
    
    ingredientRemove : function() {
    	
    	if ( calc_rownum > 1 ) {
            $("#ingredientContent_" + calc_rownum).remove();
            calc_rownum--;
    	}
    	
        $('#ingredientNum').val(calc_rownum);
    }

}

function ingredientSearch(idx) {
	
	alert("상품 검색" + idx);
}
