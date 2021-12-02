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
	                  	<span class=" es_size_16 es_text_lineheight_30"> PRODUCT PART</span>		                    	
			</div>
	        
	    <div class="w3-row content es_padding_20">  
	      <div class="es_border es_border_gray es_padding_16">       
	            <div class="w3-row es_row">
	       			<div class="w3-col l12  m12  s12  es_size_16 es_text_lineheight_30 es_padding_10">PRODUCT ADD</div>
	            </div>
	
				<div class="w3-row">  
					<div class="w3-col l2  m6  s12 es_label">PART NO</div> 
					<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="prdNo"  name="prdNo" placeholder="Part No"></div>
					<div class="w3-col l2  m6  s12 es_label">PART SPEC'</div> 
					<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="prdSpec"  name="prdSpec" placeholder="Part SPEC"></div>
				</div>
				
				<div class="w3-row">
					<div class="w3-col l2  m6  s12 es_label">Category</div> 
					<div class="w3-col l4  m3  s3">
	                      <select class="es_input inputField"   name="prdCateId" id="prdCateId" >
			                  <c:forEach var="result" items="${categoryList}" varStatus="status">
			                      <option value="${result.cateId}"  <%-- <c:if test="${customerList.country eq result.countryCd}">selected</c:if>  --%> >${result.cateName}</option>
				              </c:forEach>
	             	 	 </select>
				    </div>
				    <div class="w3-col l2  m6  s12 es_label">Sub Category</div> 
					<div class="w3-col l4  m3  s3">
	                      <select class="es_input inputField"   name="prdSubCateId" id="prdSubCateId" >
			                  <c:forEach var="result" items="${subCategoryList}" varStatus="status">
			                      <option value="${result.subCateId}"  <%-- <c:if test="${customerList.country eq result.countryCd}">selected</c:if> --%>  >${result.subCateName}</option>
				              </c:forEach>
	             	 	 </select>
				    </div>
			    </div>
				
				<div class="w3-row">  
					<div class="w3-col l2  m6  s12 es_label">DESC</div> 
					<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="prdDesc"  name="prdDesc" placeholder="Part DESC"></div>
					<div class="w3-col l2  m6  s12 es_label">TYPE</div> 
					<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="prdType"  name="prdType" placeholder="Part TYPE"></div>
				</div>
				
					
				<div class="w3-row">  
					<div class="w3-col l2  m6  s12 es_label">MAKER</div> 
					<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="prdMaker"  name="prdMaker" placeholder="Part Maker"></div>
					<div class="w3-col l2  m6  s12 es_label">TEMP</div> 
					<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="prdTemp"  name="prdTemp" placeholder="Part Temp"></div>
				</div>
				
				<div class="w3-row">  
					<div class="w3-col l2  m6  s12 es_label">TOL</div> 
					<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="prdTol"  name="prdTol" placeholder="Part Tol"></div>
					<div class="w3-col l2  m6  s12 es_label">QTY</div> 
					<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="prdQty"  name="prdQty" placeholder="Part Qty"></div>
				</div>
					
				<div class="w3-row">  
					<div class="w3-col l2  m6  s12 es_label">MOQ</div> 
					<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="prdMoq"  name="prdMoq" placeholder="Part Moq"></div>
				</div>
		  </div>
	 	  
	 </div>
			
			
			
			
			
			
		 <div class="w3-row es_center es_padding_30">
	            <button type="button" class="btn btn-primary" onclick="productInsert()" >Add</button>
	            <button type="button" class="btn btn-secondary" onclick="javascript: self.close();" >Close</button>
		 </div>
	
	</div>	

<script>


function productInsert(){
	
	var selectOpt = document.getElementById("prdCateId");
	selectOpt = selectOpt.options[selectOpt.selectedIndex].value;
	
	var selectOpt2 = document.getElementById("prdSubCateId");
	selectOpt2 = selectOpt2.options[selectOpt2.selectedIndex].value;

	var param = new Object();
	param.prdNo 				= $('#prdNo').val();
	param.prdSpec 				= $('#prdSpec').val();
	param.prdDesc 				= $('#prdDesc').val();
	param.prdType 				= $('#prdType').val();
	param.prdMaker 				= $('#prdMaker').val();
	param.prdTemp 				= $('#prdTemp').val();
	param.prdQty 				= $('#prdQty').val();
	param.prdMoq 				= $('#prdMoq').val();
	param.prdTol 				= $('#prdTol').val();
	param.cateId      	  	= selectOpt;
	param.subCateId      	= selectOpt2;
	
	console.log(param);
	var insertConfirm = confirm('Are you sure??? ')
	if(insertConfirm){
		 $.ajax({
		        url : "/user/productInsert",
		        data : param,
		        type : 'post',
		        success : function(data){
		        	opener.parent.location.reload();
		        	window.close();
		        	alert("product insert success");
		        },
		        error : function(){
		            alert("error");
		        }
		 })
	}
	
}


</script>
</body>
</html>    