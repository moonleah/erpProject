<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="../include.jsp"%> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/w3.css"> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/easisoft.css"> 
</head> 
<body>
<div  class=" userInfoPop" style="min-height: 100%">
  	     <div class="w3-row es_head es_center">
                  	<span class=" es_size_16 es_text_lineheight_30"> PRODUCT PART COMPANY</span>		                    	
		</div>
        
    <div class="w3-row content es_padding_20">  
      <div class="es_border es_border_gray es_padding_16">       
             <div class="w3-row es_row">
       			<div class="w3-col l12  m12  s12  es_size_16 es_text_lineheight_30 es_padding_10">COMPANY UPDATE</div>
            </div>

			<div class="w3-row">  
				<div class="w3-col l2  m6  s12 es_label">Company Name</div> 
				<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="companyName"  name="companyName" placeholder="Company Name" value="${company.companyName}"></div>
				
			</div>
			<div class="w3-col l2  m6 s12 es_label">Type</div> 
				<div class="w3-col l4  m6 s12">
	                <div class="es_radio">
	                		<label><input class="inputField" type="radio" id="companyType" name="companyType"  value="1"   ${company.companyType eq '1' ? 'checked' : ''}><span>Receipt</span></label>
	                        <label><input class="inputField" type="radio" id="companyType" name="companyType"  value="2"   ${company.companyType ne '1' ? 'checked' : ''}><span>Release</span></label>
	               </div>
               </div>
			<div class="w3-row">  
				<div class="w3-col l2  m6  s12 es_label">Address</div> 
				<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="companyAddress"  name="companyAddress" value="${company.companyAddress}"></div>
				<div class="w3-col l2  m6  s12 es_label">Company Tel</div> 
				<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="companyTel"  name="companyTel" value="${company.companyTel}"></div>

			</div>
		</div>
 	  
   
 </div>
		
	 <div class="w3-row es_center es_padding_30">
            <button type="button" class="btn btn-primary" onclick="companyUpdate()" >Update</button>
            <button type="button" class="btn btn-secondary" onclick="javascript: self.close();" >Close</button>
	 </div>
</div>	

<script>
//Call the dataTables jQuery plugin

$(document).keyup(function(e) {
    if ( e.keyCode == 27) {
        window.close(); 
    }
})	
	

function companyUpdate(){
		var param = new Object();
		param.companyId      	   = ${company.companyId};
		param.companyName      	   = $('#companyName').val();
		param.companyType      	   = $("input[name='companyType']:checked").val();
		param.companyAddress       = $('#companyAddress').val();
		param.companyTel    	   = $('#companyTel').val();
		
		 $.ajax({
		        url : "/user/companyUpdate",
		        data : param,
		        type : 'post',
		        success : function(data){
		        	opener.parent.location.reload();
		        	window.close();
		        	alert("update success");
		        },
		        error : function(){
		            alert("update error");
		        }
		 });
		
		
	}
	
	
</script>
</body>
</html>    