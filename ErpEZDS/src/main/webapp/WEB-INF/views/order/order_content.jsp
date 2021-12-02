<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	 <div id="content">
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Z5 주문서 작성</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">ORDER FORM
	                             <!-- <a href="#" onclick="productAdd()" class="btn btn-success btn-circle btn-sm fa-pull-right">
	                                        <i class="fas fa-plus "></i>
	                             </a> -->
                             </h6>
                        </div>
            <div class="card-body"> 
						
						<div class="w3-row">  
							<div class="w3-col l1  m2  s12 es_label">PART NO</div> 
							<div class="w3-col l2  m4  s12">
								<select id="partNoSelect" name="partNoSelect" class="es_input inputField orderSelect" >
									<option>-------------select-------------</option>
						  		</select>
						  	</div>
							<div class="w3-col l1  m2  s12 es_label">SPEC</div> 
							<div class="w3-col l2  m4  s12">
								<select id="specSelect" class="es_input inputField orderSelect" >
								<option>-------------select-------------</option>
						  		</select>
							</div>
							<div class="w3-col l1  m2  s12 es_label">SUB SPEC</div> 
							<div class="w3-col l2  m4  s12">
								<select id="subSpecSelect" class="es_input inputField orderSelect"  >
								<option>-------------select-------------</option>
						  		</select>
							</div>
							<div class="w3-col l1  m2  s12 es_label">업체</div> 
							<div class="w3-col l2  m4  s12" >
								<select id="companySel" class="es_input inputField orderSelect" >
								<option>-------------select-------------</option>
						  		</select>
							</div>
						</div>
						
						<div  class="w3-row">  
							<div class="w3-col l1  m2  s12 es_label">최소발주수량</div> 
							<div class="w3-col l2  m4  s12"><input class="es_input inputField" type="text"  id="prdMoq" value="" readOnly></div>
							<div class="w3-col l1  m2  s12 es_label">발주 수량</div> 
							<div class="w3-col l2  m4  s12"><input class="es_input inputField" type="text"  id="orderQty" value="" ></div>
							<div class="w3-col l1  m2  s12 es_label">금액</div> 
							<div class="w3-col l2  m4  s12"><input class="es_input inputField" type="text"  id="orderPrice" value="" ></div>
							<div class="w3-col l1  m2  s12 es_label">발주 일자</div> 
							<div class="w3-col l2  m4  s12"><input class="es_input inputField" type="text"  id="orderDate" value="" ></div>
						</div>
						
							
						<div class="w3-row es_center es_padding_30">
				            <button type="button" class="btn btn-primary" onclick="productOrder()" >Order</button>
						 </div>
                        
                        
              </div>

           </div>	
          <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
             <thead>
                       <tr>
                        <th>발주코드</th>
                        <th>PART NO</th>
                        <th>SPEC</th>
                        <th>SUB SPEC</th>
                        <th>단위</th>
                        <th>단가</th>
                        <th>수량</th>
                        <th>금액</th>
                        <th>납기일</th>
                        <th>비고</th>
                        <th>상태</th>
                       </tr>
             </thead>
             <tbody id = "tableBody">
             	<tr onclick = "">
	           	<td  >cxcxzczxcz</td>
	           	<td  >vcxvxvx</td>
	           	<td  >cxcxzczxcz</td>
	           	<td  >vcxvxvx</td>
	           	<td  >cxcxzczxcz</td>
	           	<td  >vcxvxvx</td>
	           	<td  >cxcxzczxcz</td>
	           	<td  >vcxvxvx</td>
	           	<td  >cxcxzczxcz</td>
	           	<td  >vcxvxvx</td>
	           	<td  >cxcxzczxcz</td>
	          	</tr>
       		</tbody>
          </table>
           
           

      </div>
                <!-- /.container-fluid -->
	<%-- 			<%@ include file="../modal/deleteModal.jsp" %> --%>
				
            </div>
<script>
$(document).ready(function () {
    $(".orderSelect").select2();
    $("#orderDate").datepicker();
    getProductList();
    getCompanyList();
    
    
    $('#specSelect').change(function () {
       var prdNo = $('#specSelect').val();
   	   getSubSpecList(prdNo);
     });
    
    $('#partNoSelect').change(function () { //제품 콤보박스 변경시 spec 콤보박스도 같이 변경 
    	var select = $("#partNoSelect option:selected").attr('value');
    	$('#specSelect').val(select).trigger('change');
		$('#prdMoq').val($("#partNoSelect option:selected").attr('value2'));
	});
    
});

//제품 sub spec 가져오기
function getSubSpecList(prdNo){
	if(prdNo != 0 ){
		 $.ajax({
		        url : "/user/getSubSpecList",
		        type : 'post',
		        data : { subSpecPrdNo : prdNo },
		        success : function(data){
		        	if(data.length > 0 ) {
		        	 $.each(data, function (index, value) {
		        		 $('#subSpecSelect *').remove();
		        		 $('#subSpecSelect').append('<option value="' + value.subSpecPrdNo + '">'  + value.subSpecName + '</option>');
		             });
		        	 }else{
		        		 $('#subSpecSelect *').remove();
		        		 $('#subSpecSelect').append('<option value="0">No results found ..</option>');
		        	 }
		        },
		        error : function(){
		            alert("error");
		        }
		  });
	}	 
}

//제품정보 가져오기
function getProductList(){
	 $.ajax({
	        url : "/user/getProductList",
	        type : 'post',
	        success : function(data){
	        	 $.each(data, function (index, value) {
	                 $('#partNoSelect').append('<option value="' + value.prdNo + '"value2="' + value.prdMoq + '">'  + value.prdNo + '</option>');
	                 $('#specSelect').append('<option value="' + value.prdNo + '">'  + value.prdSpec + '</option>');
	             });
	        	 
	        },
	        error : function(){
	            alert("error");
	        }
	  });
}

//회사정보 가져오기
function getCompanyList(){
	 $.ajax({
	        url : "/user/getCompanyList",
	        type : 'post',
	        success : function(data){
	        	 $.each(data, function (index, value) {
	                 $('#companySel').append('<option value="' + value.companyId + '">'  + value.companyName + '</option>');
	             });
	        },
	        error : function(){
	            alert("error");
	        }
	  });
}



</script>