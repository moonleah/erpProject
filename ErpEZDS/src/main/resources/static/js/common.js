function ifnull(value, text){
	return value == null || value == undefined ? text : value;
}

function getBackgroundCss(fileContextPath, nobodyContextPath){
	if(nobodyContextPath){
		return "url('"+fileContextPath+"'), url('"+nobodyContextPath+"')";
	}else{
		return "url('"+fileContextPath+"');";
	}
}

function comma(str) {
    str = String(str);
    if(isNaN(str)){
    	return "";
    }
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}

function getFileExt(fileNm){
	return fileNm.indexOf(".") > -1 ? fileNm.substring(fileNm.indexOf(".")+1).toLowerCase() : "";
}

function checkPassword(password){
	var regExp = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
	return regExp.test(password);
}

function checkEmailAddr(emailAddr){
	var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	return regExp.test(emailAddr);
}

function openPopup(url, name, width, height, param){
	var currentWindow = window;
	if(name == "_self" || window.name == name){
		currentWindow = window.opener ? window.opener : window;
	}
	var screenWidth = currentWindow.innerWidth ? currentWindow.innerWidth : currentWindow.document.documentElement.clientWidth ? currentWindow.document.documentElement.clientWidth : screen.width;
	var screenHeight = currentWindow.innerHeight ? currentWindow.innerHeight : currentWindow.document.documentElement.clientHeight ? currentWindow.document.documentElement.clientHeight : screen.height;
	/*var screenWidth = currentWindow.screen.availLeft != undefined ? currentWindow.screen.availWidth : currentWindow.screen.width;
	var screenHeight = currentWindow.screen.availTop != undefined ? currentWindow.screen.availHeight : currentWindow.screen.height;*/
	
	var popupOption = "";
	if(width){
		if(typeof width == "string"){
			if(width.indexOf("%") > -1){
				width = screenWidth * Number(width.replace("%", ""))/100;
			}else{
				width = Number(width.replace(/[^0-9]/g, ""));
			}
		}
		var left = currentWindow.screenLeft + (screenWidth/2) - (width/2);
		popupOption += ",width="+width+", left="+left;
	}
	if(height){
		if(typeof height == "string"){
			if(height.indexOf("%") > -1){
				height = screenHeight * Number(height.replace("%", ""))/100;
			}else{
				height = Number(height.replace(/[^0-9]/g, ""));
			}
		}
		var top = currentWindow.screenTop + (screenHeight/2) - (height/2);
		popupOption += ", height="+height+", top="+top;
	}
	var popup;
	
	var form = document.createElement("form");
	form.method = "post";
	form.target = name;
	form.action = url;
	if(param){
		param = $.generateSpringListString(param);
		$.each(param, function(key, value){
			var input = document.createElement("input");
			input.type = "hidden";
			input.name = key;
			input.value = value;
			form.appendChild(input);
		});
	}
	document.body.appendChild(form);
	if(name == "_self" || window.name == name){
		popup = window;
		width = width + (popup.outerWidth - popup.document.documentElement.clientWidth);
		height = height + (popup.outerHeight - popup.document.documentElement.clientHeight);
		popup.resizeTo(width, height);
		popup.moveTo(left, top);
	}else{
		popup = window.open("", name, "location=no, menubar=no, status=no, titlebar=no, toolbar=no"+popupOption);
	}
	form.submit();
	
	form.parentNode.removeChild(form);
	popup.focus();
	return popup;
}

function getLeafNodesByList(param){
	var list = param.list;
	var parentKeyExpr = param.parentKeyExpr;
	var leafNodes = [];
	var tempList = [];
	var map = {};
	for(var i=0;i<list.length;i++){
		map[list[i].id] = i;
		tempList[i] = 0;
	}
	for(var i=0;i<list.length;i++){
		var node = list[i];
		if(map[node[parentKeyExpr]] !== undefined){
			tempList[map[node[parentKeyExpr]]]++;
		}
	}

	for(var i=0;i<list.length;i++){
		if(tempList[i] === 0){
			leafNodes.push(list[i]);
		}
	}
	return leafNodes;
}

function getLeafNodesByTree(param){
	var tree = param.tree;
	var childrenExpr = param.childrenExpr;
	var leafNodes = param.leafNodes ? param.leafNodes : [];
	for(var i=0;i<tree.length;i++){
		if(tree[i][childrenExpr] && tree[i][childrenExpr].length > 0){
			getLeafNodesByTree({tree:tree[i][childrenExpr], childrenExpr:childrenExpr, leafNodes:leafNodes});
		}else{
			leafNodes.push(tree[i]);
		}
	}
	return leafNodes;
}

function treeToList(param){
	var tree = param.tree;
	var childrenExpr = param.childrenExpr;
	var list = param.list ? param.list : [];
	for(var i=0;i<tree.length;i++){
		list.push(tree[i]);
		if(tree[i][childrenExpr] && tree[i][childrenExpr].length > 0){
			treeToList({tree:tree[i][childrenExpr], childrenExpr:childrenExpr, list:list});
		}
	}
	return list;
}

function listToTree(param){
	var list = param.list;
	var keyExpr = param.keyExpr;
	var parentKeyExpr = param.parentKeyExpr;
	var childrenExpr = param.childrenExpr;
	var roots = [];
	var map = {};
	for(var i=0;i<list.length;i++){
		map[list[i][keyExpr]] = i;
		list[i][childrenExpr] = [];
	}

	for(var i=0;i<list.length;i++){
		var node = list[i];
		if(map[node[parentKeyExpr]] !== undefined){
			list[map[node[parentKeyExpr]]][childrenExpr].push(node);
		}else{
			roots.push(node);
		}
	}
	return roots;
}

(function ($) {
	$.fn.isValidDate = function(){
		var datepicker = $(this).data("datepicker");
		var dateFormat = datepicker.o.format.replace(/yy/g, "y");
		var isValid = false;
		try{
			var parseDate = $.datepicker.parseDate(dateFormat, $(this).val());
			if($.datepicker.formatDate(dateFormat, parseDate) == $(this).val()){
				isValid = true;
			}
		}catch(e){}
		return isValid;
	};
	
	$.jQueryAjax = $.ajax;
	
	$.generateSpringListString = function(data, resultData, keyPrefix){
		if(!resultData){
			resultData = new Object();
		}
		if(!keyPrefix){
			keyPrefix = "";
		}
		$.each(data, function(key, value){
			var isArray = $.isArray(value);
			if(isArray){
				for(var i=0;i<value.length;i++){
					if(typeof value[i] == "object" && (value[i] && value[i].constructor.name !== "File")){
						$.each(value[i], function(childKey, childValue){
							if(typeof childValue != "undefined" && childValue != null){
								if($.isArray(childValue)){
									var subObject = new Object();
									subObject[childKey] = childValue;
									childValue = $.generateSpringListString(subObject, new Object(), key + "[" + i + "].");
									$.extend(resultData, childValue);
								}else{
									resultData[keyPrefix + key + "[" + i + "]." + childKey] = childValue;
								}
							}
						})
					}else{
						resultData[keyPrefix + key + "[" + i + "]"] = value[i];
					}
				}
			}else if(value && typeof value == "object" && Object.getPrototypeOf(value).constructor.name === ({}).constructor.name){
				if(value && value.constructor.name !== "File"){
					$.each(value, function(childKey, childValue){
						if(typeof childValue != "undefined" && childValue != null){
							if($.isArray(childValue)){
								var subObject = new Object();
								subObject[childKey] = childValue;
								childValue = $.generateSpringListString(subObject, new Object(), key + ".");
								$.extend(resultData, childValue);
							}else{
								resultData[keyPrefix + key + "." + childKey] = childValue;
							}
						}
					})
				}else{
					resultData[keyPrefix + key] = value;
				}
			}else{
				if(typeof value != "undefined" && value != null){
					resultData[key] = value;
				}
			}
		});
		return resultData;
	};
	
	$.serializeFiles = function() {
		var formData = new FormData();
		for(var i=0;i<arguments.length;i++){
			var data = $.generateSpringListString(arguments[i]);
			$.each(data, function(key, value){
				formData.append(key, value);
			});
		}
		return formData;
	};
	
	$.ajax = function(param){
		if(param.sendFile){
			var data = param.data ? $.serializeFiles(param.data) : undefined;
		}else{
			var data = param.data ? $.generateSpringListString(param.data) : undefined;
		}
		return $.jQueryAjax({
			type:param.type,
			url:param.url,
			data:data,
			dataType:param.dataType,
			contentType:param.sendFile ? false : param.contentType ? param.contentType : undefined,
			processData:param.sendFile ? false : undefined,
			cache:false,
			beforeSend:function(xhr, settings){
				xhr.setRequestHeader("AJAX", true);
				if(param.beforeSend){
					param.beforeSend(xhr, settings);
				}
			},
			success:function(data, status, xhr){
				if(xhr.getResponseHeader("Authentication-Error")){
					eval(data);
					/*if(param.error){
						param.error(xhr, status);
					}*/
					return;
				}
				if(param.success){
					param.success(data, status, xhr);
				}
			},
			error:function(xhr, status, error){
				if(xhr.getResponseHeader("Database-Duplicate-Error")){
					alertify.alert(xhr.responseJSON.message);
					return;
				}
				if(xhr.getResponseHeader("BBS-Internal-Error")){
					alertify.alert(xhr.responseJSON.message);
					return;
				}
				if(xhr.getResponseHeader("Custom-Error")){
					alertify.alert(xhr.responseJSON.message);
					return;
				}
				if(param.error){
					param.error(xhr, status, error);
				}
			},
			complete:function(xhr, status){
				if(param.complete){
					param.complete(xhr, status);
				}
			}
		});
	};
	
	$.fn.tel = function(){
		return $(this).each(function(){
			$(this).addClass("es_tel");
			$(this).on("keydown keyup change input", function(){
				this.value = this.value.replace(/[^\d.-]/g, "");
				var tel = this.value.replace(/-/g, "");
				if(tel.startsWith("02")){
					$(this).attr("maxlength", 12);
					if(tel.length < 7){
						this.value = tel.replace(/(^02)([0-9]+)/,"$1-$2");
					}else if(tel.length < 10){
						this.value = tel.replace(/(^02)([0-9]{3})([0-9]+)/,"$1-$2-$3");
					}else if(tel.length == 10){
						this.value = tel.replace(/(^02)([0-9]{4})([0-9]{4})/,"$1-$2-$3");
					}
				}else{
					$(this).attr("maxlength", 13);
					if(tel.length < 8){
						this.value = tel.replace(/(^01[0-9]{1}|[0-9]{3})([0-9]+)/,"$1-$2");
					}else if(tel.length < 11){
						this.value = tel.replace(/(^01[0-9]{1}|[0-9]{3})([0-9]{3})([0-9]+)/,"$1-$2-$3");
					}else if(tel.length == 11){
						this.value = tel.replace(/(^01[0-9]{1}|[0-9]{3})([0-9]{4})([0-9]{4})/,"$1-$2-$3");
					}
				}
			});
			$(this).on("keypress", function(e){
				if(e.type === "paste") {
					key = event.clipboardData.getData("text/plain");
				}else {
					var key = e.keyCode || theEvent.which;
					key = String.fromCharCode(key);
				}
				var regex = /[0-9]|\./;
				if(!regex.test(key)) {
					e.returnValue = false;
					e.preventDefault();
				}
			});
		});
	};
	
	$.tel = function(value){
		value = value.replace(/[^\d.-]/g, "");
		var tel = value.replace(/-/g, "");
		if(tel.startsWith("02")){
			if(tel.length < 7){
				value = tel.replace(/(^02)([0-9]+)/,"$1-$2");
			}else if(tel.length < 10){
				value = tel.replace(/(^02)([0-9]{3})([0-9]+)/,"$1-$2-$3");
			}else if(tel.length == 10){
				value = tel.replace(/(^02)([0-9]{4})([0-9]{4})/,"$1-$2-$3");
			}
		}else{
			if(tel.length < 8){
				value = tel.replace(/(^01[0-9]{1}|[0-9]{3})([0-9]+)/,"$1-$2");
			}else if(tel.length < 11){
				value = tel.replace(/(^01[0-9]{1}|[0-9]{3})([0-9]{3})([0-9]+)/,"$1-$2-$3");
			}else if(tel.length == 11){
				value = tel.replace(/(^01[0-9]{1}|[0-9]{3})([0-9]{4})([0-9]{4})/,"$1-$2-$3");
			}
		}
		return value;
	};
})($);

//$.extend($.fn.datepicker.defaults, {maxViewMode:2, autoclose:true, clearBtn:true, format:"dd-M-yyyy", todayBtn:"linked", todayHighlight:true});

/*Inputmask.extendDefaults({
	autoUnmask:true
});
*/
/*Inputmask.extendAliases({
	"numeric": {
		autoUnmask:true,
		unmaskAsNumber:true,
		autoGroup: true,
		groupSeparator: ","
	}
});*/

$(window).on("resize", function(e){
	$(".easi-content-container").css("min-height", function(){
		var windowHeight = $(window).height();
		var headerHeight = $("#header").outerHeight();
		var subheaderHeight = $("#subheader").length > 0 ? $("#subheader").outerHeight() : 0;
		var footerHeight = $("#footer").outerHeight();
		return windowHeight - (headerHeight + subheaderHeight + footerHeight);
	});
	$("body").css("visibility", "visible");
});

$(function(){
	$(window).trigger("resize");
});
