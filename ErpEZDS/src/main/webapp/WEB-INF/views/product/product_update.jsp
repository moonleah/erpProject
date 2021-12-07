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
	       			<div class="w3-col l12  m12  s12  es_size_16 es_text_lineheight_30 es_padding_10">PRODUCT UPDATE</div>
	            </div>
	
				<div class="w3-row">  
					<div class="w3-col l2  m6  s12 es_label">PART NO</div> 
					<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="prdNo"  name="prdNo" value="${product.prdNo}" readonly></div>
					<div class="w3-col l2  m6  s12 es_label">PART SPEC'</div> 
					<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="prdSpec"  name="prdSpec" value="${product.prdSpec}"></div>
				</div>
				
				<div class="w3-row">
					<div class="w3-col l2  m6  s12 es_label">Category</div> 
					<div class="w3-col l4  m3  s3">
	                      <select class="es_input inputField"   name="prdCateId" id="prdCateId" >
			                  <c:forEach var="result" items="${categoryList}" varStatus="status">
			                      <option value="${result.cateId}"   <c:if test="${product.cateId eq result.cateId}">selected</c:if>  >${result.cateName}</option>
				              </c:forEach>
	             	 	 </select>
				    </div>
				    <div class="w3-col l2  m6  s12 es_label">Sub Category</div> 
					<div class="w3-col l4  m3  s3">
	                      <select class="es_input inputField"   name="prdSubCateId" id="prdSubCateId" >
			                  <c:forEach var="result" items="${subCategoryList}" varStatus="status">
			                      <option value="${result.subCateId}"  <c:if test="${product.subCateName eq result.subCateName}">selected</c:if> >${result.subCateName}</option>
				              </c:forEach>
	             	 	 </select>
				    </div>
			    </div>
				
				<div class="w3-row">  
					<div class="w3-col l2  m6  s12 es_label">DESC</div> 
					<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="prdDesc"  name="prdDesc"  value="${product.prdDesc}"></div>
					<div class="w3-col l2  m6  s12 es_label">TYPE</div> 
					<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="prdType"  name="prdType"  value="${product.prdType}"></div>
				</div>
				
					
				<div class="w3-row">  
					<div class="w3-col l2  m6  s12 es_label">MAKER</div> 
					<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="prdMaker"  name="prdMaker"  value="${product.prdMaker}"></div>
					<div class="w3-col l2  m6  s12 es_label">TEMP</div> 
					<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="prdTemp"  name="prdTemp"  value="${product.prdTemp}"></div>
				</div>
				
				<div class="w3-row">  
					<div class="w3-col l2  m6  s12 es_label">QTY</div> 
					<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="prdQty"  name="prdQty"  value="${product.prdQty}"></div>
					<div class="w3-col l2  m6  s12 es_label">TOL</div> 
					<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="prdTol"  name="prdTol"  value="${product.prdTol}"></div>
				</div>
					
				<div class="w3-row">  
					<div class="w3-col l2  m6  s12 es_label">MOQ</div> 
					<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="prdMoq"  name="prdMoq"  value="${product.prdMoq}"></div>
					<div class="w3-col l2  m6  s12 es_label">SUB SPEC' ADD</div> 
					<div class="w3-col l4  m6  s12"> 
							<a href="#" data-toggle="modal" data-target="#specAdd" class="btn btn-success btn-circle btn-sm " style="margin-top:0.5em;">
	                                      <i class="fas fa-plus "></i>
	                        </a>
	                </div>
				</div>
		  </div>
		  	<div class="w3-row es_center es_padding_30">
	            <button type="button" class="btn btn-primary" onclick="productUpdate()" >Update</button>
	            <button type="button" class="btn btn-secondary" onclick="javascript: self.close();" >Close</button>
			 </div>
	 </div> 
</div>

	<c:if test="${fn:length(subSpecList) > 0}">

		 <div class="card-body">
		 <div class="w3-row content es_padding_20">  
            <div class="w3-row es_row">
     			<div class="w3-col l12  m12  s12  es_size_16 es_text_lineheight_30 es_padding_10">PRODUCT SUBSPEC LIST</div>
          	</div>
				            <div class="table-responsive">
                                <table class="table table-bordered" id="subSpecList" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        	<th>PART NO</th>
                                        	<th>SUB SPEC'</th>
                                            <th>MAKER</th>
                                            <th>Setting<i class="fas fa-fw fa-cog"></i></th>
                                        </tr>
                                    </thead>
                                    <tbody id = "tableBody">
                                           <c:forEach var="result" items="${subSpecList}" varStatus="status"> 
									         <tr>
									          <td>${result.subSpecPrdNo}</td>
									          <td>${result.subSpecMaker}</td>
									          <td>${result.subSpecName}</td>
									          <td>
										            <a href="#"   onclick="deleteSubSpec(${result.subSpecId})"  class="btn btn-danger btn-circle btn-sm fa-pull-right">
						                                        <i class="fas fa-trash "></i>
						                            </a>
									           </td>
									          </tr>
										  </c:forEach>   
                                    </tbody>
                                </table>
                            </div>
                 </div>
		 </div>
		 </c:if>
		 
		<%@ include file="modal/specUpdateModal.jsp" %>

<script>
/* $(document).ready(function() {
 $('#subSpecList').DataTable();
}); 
 */
 $(document).keyup(function(e) {
	    if ( e.keyCode == 27) {
	        window.close(); 
	    }
	})


function productUpdate(){
	
	var selectOpt = document.getElementById("prdCateId");
	selectOpt = selectOpt.options[selectOpt.selectedIndex].value;
	
	var selectOpt2 = document.getElementById("prdSubCateId");
	selectOpt2 = selectOpt2.options[selectOpt2.selectedIndex].value;

	var param = new Object();
	param.prdId 				= ${product.prdId}
	param.prdNo 				= $('#prdNo').val();
	param.prdSpec 				= $('#prdSpec').val();
	param.prdDesc 				= $('#prdDesc').val();
	param.prdType 				= $('#prdType').val();
	param.prdMaker 				= $('#prdMaker').val();
	param.prdTol 				= $('#prdTol').val();
	param.prdTemp 				= $('#prdTemp').val();
	param.prdQty 				= $('#prdQty').val();
	param.prdMoq 				= $('#prdMoq').val();
	param.cateId      	  	= selectOpt;
	param.subCateId      	= selectOpt2;
	
	console.log(param);
	var udtConfirm = confirm('Are you sure??? ')
	if(udtConfirm){
		 $.ajax({
		        url : "/user/productUpdate",
		        data : param,
		        type : 'post',
		        success : function(data){
		        	opener.parent.location.reload();
		        	window.close();
		        	alert("product update success");
		        },
		        error : function(){
		            alert("error");
		        }
		 })
	}
	 
	
}

function deleteSubSpec(p_id) { 
	var param = new Object();
	param.subSpecId      	   = p_id;
	
	var delConfirm = confirm('Are you sure??? ')
	if(delConfirm){
		$.ajax({
		        url : "/user/deleteSubSpec",
		        data : param,
		        type : 'post',
		        success : function(data){
		        	location.reload();
		        	alert("delete success");
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