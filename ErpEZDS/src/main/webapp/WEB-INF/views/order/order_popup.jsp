<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
    <title>EZDS Admin</title>
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/w3.css"> 
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/easisoft.css">    
   	<%@ include file="../include.jsp" %>
</head>

<body>
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
									<option value ="${partNo}">${partNo}</option>
						  		</select>
						  	</div>
							<div class="w3-col l1  m12  s12 es_label">SPEC</div> 
							<div class="w3-col l2  m12  s12">
								<select id="specSelect" class="es_input inputField orderSelect" >
								<option value ="${partNo}">${spec}</option>
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
							<div class="w3-col l2  m12  s12"><input class="es_input inputField " type="text"  id="prdMoq" value="${moq}" readOnly></div>
							<div class="w3-col l1  m12  s12 es_label">발주 수량</div> 
							<div class="w3-col l2  m12  s12"><input class="es_input inputField" type="text"  id="orderQty" value="" ></div>
							<div class="w3-col l1  m12  s12 es_label">단가</div> 
							<div class="w3-col l2  m12  s12"><input class="es_input inputField" type="text"  id="orderPrice" value="" ></div>
							<div class="w3-col l1  m12  s12 es_label">발주 일자</div> 
							<div class="w3-col l2  m12  s12"><input class="es_input inputField" type="text"  id="orderDate" value="" ></div>
						</div>
						<div class="w3-row es_center es_padding_30">
				            <button type="button" class="btn btn-primary" onclick="productOrder2()" >Order</button>
						 </div>
						 </div>
                     <hr class="sidebar-divider">
                     
              </div>
           </div>	
      </div>
   
				
            </div>
            </body>
         <%@ include file="order_js.jsp" %>      
<script>
$(document).ready(function () {
    $(".orderSelect").select2();
    $("#orderDate").datepicker();
    $("#orderDate").datepicker( "option", "dateFormat", "yy-mm-dd" );
    var today = new Date();
    $( "#orderDate" ).datepicker( "setDate", today);
    getCompanyList();
    
    var prdNo = $('#specSelect').val();
   	getSubSpecList(prdNo);

});


function productOrder2(){
	var param = new Object();
	param.orderPartNo      	   = $("#partNoSelect").val();
	param.orderSpec      	   = $("#specSelect option:selected").text();
	param.orderSubSpec     	   = $("#subSpecSelect option:selected").text();
	param.orderCompany		   = $("#companySel option:selected").text();	
	param.orderPrice      	   = $("#orderPrice").val();
	param.orderQty      	   = $("#orderQty").val();
	var date = $("#orderDate").datepicker("getDate");
	param.orderDate      	   = $.datepicker.formatDate("yy-mm-dd", date)
	param.orderUser      	   = '${principal.username}'
	
	$.ajax({
	        url : "/user/productOrder",
	        type : 'post',
	        data : param,
	        success : function(data){
	        	 alert("success")
	        	 opener.opener.window.location.href="/user/order"
	        	 self.close()
	        	 opener.close();
	        },
	        error : function(){
	            alert("error");
	        }
	});
	
}






</script>