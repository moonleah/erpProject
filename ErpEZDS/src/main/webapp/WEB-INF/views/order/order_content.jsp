<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<sec:authentication var="principal" property="principal" />
	 <div id="content">
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Z5 주문서 작성</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <!-- <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">ORDER FORM</h6>
                        </div> -->
            <div class="card-body"> 
						<div class = "es_border es_border_gray es_padding_16" > 
						<div class="w3-row ">  
							<div class="w3-col l1  m12  s12 es_label">PART NO</div> 
							<div class="w3-col l2  m12  s12">
								<select id="partNoSelect" name="partNoSelect" class="es_input inputField orderSelect" >
									<option>-</option>
						  		</select>
						  	</div>
							<div class="w3-col l1  m12  s12 es_label">SPEC</div> 
							<div class="w3-col l2  m12  s12">
								<select id="specSelect" class="es_input inputField orderSelect" >
								<option>-</option>
						  		</select>
							</div>
							<div class="w3-col l1  m12  s12 es_label">SUB SPEC</div> 
							<div class="w3-col l2  m12  s12">
								<select id="subSpecSelect" class="es_input inputField orderSelect"  >
								<option>-</option>
						  		</select>
							</div>
							<div class="w3-col l1  m12  s12 es_label">업체</div> 
							<div class="w3-col l2  m12  s12" >
								<select id="companySel" class="es_input inputField orderSelect" >
								<option>-</option>
						  		</select>
							</div>
						</div>
						
						<div  class="w3-row">  
							<div class="w3-col l1  m12  s12 es_label">최소발주수량</div> 
							<div class="w3-col l2  m12  s12"><input class="es_input inputField " type="text"  id="prdMoq" value="" readOnly></div>
							<div class="w3-col l1  m12  s12 es_label">발주 수량</div> 
							<div class="w3-col l2  m12  s12"><input class="es_input inputField" type="text"  id="orderQty" value="" ></div>
							<div class="w3-col l1  m12  s12 es_label">단가</div> 
							<div class="w3-col l2  m12  s12"><input class="es_input inputField" type="text"  id="orderPrice" value="" ></div>
							<div class="w3-col l1  m12  s12 es_label">발주 일자</div> 
							<div class="w3-col l2  m12  s12"><input class="es_input inputField" type="text"  id="orderDate" value="" ></div>
						</div>
						<div class="w3-row es_center es_padding_30">
				            <button type="button" class="btn btn-primary" onclick="productOrder()" >Order</button>
						 </div>
						 </div>
                     <hr class="sidebar-divider">
                     
                     <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold ">ORDER LIST</h6>
                     </div>
                     <div class="card-body ">
	                    <div class="table-responsive">  
	                      	<table class="table table-bordered" id="orderTable" width="100%" cellspacing="0">
	         			  	</table>   
	         			  	<div class="w3-row es_right ">
					            <button type="button" id="orderConfirm" class="btn btn-info" onclick="purchaseOrder()" >발주확정</button>
							 </div>
	       			 	</div>
	       			 </div>	
              </div>
           </div>	
      </div>
   
				
            </div>
         <%@ include file="order_js.jsp" %>      
<script>
$(document).ready(function () {
    $(".orderSelect").select2();
    $("#orderDate").datepicker();
    $("#orderDate").datepicker( "option", "dateFormat", "yy-mm-dd" );
    var today = new Date();
    $( "#orderDate" ).datepicker( "setDate", today);
    getProductList();
    getCompanyList();
    productOrderList();   
    
    $('#specSelect').change(function () {
       var prdNo = $('#specSelect').val();
   	   getSubSpecList(prdNo);
     });
    
    $('#partNoSelect').change(function () { //제품 콤보박스 변경시 spec 콤보박스도 같이 변경 
    	var select = $("#partNoSelect option:selected").attr('value');
    	$('#specSelect').val(select).trigger('change');
		$('#prdMoq').val($("#partNoSelect option:selected").attr('value2'));
	});
    
    $('body').on('click', '#checkAll', function() {
        $('.singlechkbox').prop('checked', this.checked);
    });
        
   
    
});


</script>