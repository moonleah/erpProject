<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
			<div id="content">
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Z5 거래처</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Z5 부품 거래처 목록
	                             <a href="#" onClick = "companyAdd()" class="btn btn-success btn-circle btn-sm fa-pull-right">
	                                        <i class="fas fa-plus "></i>
	                             </a>
                            </h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="companyTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        	<!-- <th><input type="checkbox" onclick="checkAll(this)"></th> -->
											<th>NO</th>                                        
                                            <th>Company Name</th>
                                            <th>Company CEO</th>
                                            <th>Company Staff</th>
                                            <th>Company Type</th>
                                            <th>Company Addr</th>
                                            <th>Company tel</th>
                                            <th>Setting<i class="fas fa-fw fa-cog"></i></th>
                                        </tr>
                                    </thead>
                                    <tbody id = "tableBody">
                                          <c:forEach var="result" items="${selectList}" varStatus="status">
									         <tr>
									           <!-- <th><input type="checkbox" name=""></th> -->
									           <td >${status.count}</td>
									           <td >${result.companyName}</td>
									           <td >${result.companyCeo}</td>
									           <td >${result.companyStaff}</td>
									           <td >${result.companyType}</td>
									           <td >${result.companyAddress}</td>
									           <td >${result.companyTel}</td>
									           <td>
	                             					<a href=# onClick = "companyUpdate(${result.companyId})" ><i class="fas fa-info-circle es_margin"  ></i></a>
							    	 				<a href=# onClick = "companyDelete(${result.companyId})" ><i class="fas fa-trash" style="color:red;"></i></a>
									           </td>
									         </tr>
										  </c:forEach>  
										 
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->
				<%@ include file="../modal/deleteModal.jsp" %>
            </div>
<script>
$(document).ready(function() {
	   $('#companyTable').DataTable();   
	});

function checkAll(bx) {
	  var cbs = document.getElementsByTagName('input');
	  for(var i=0; i < cbs.length; i++) {
	    if(cbs[i].type == 'checkbox') {
	      cbs[i].checked = bx.checked;
	    }
	  }
	}

function companyAdd(){
	openPopup("/user/companyAdd", "companyAdd", 1000, 700);
}

function companyUpdate(p_id){
	var param = new Object();
	param.companyId      	   = p_id;
	openPopup("/user/companyUpdateView", "companyUpdate", 1000, 700, {companyId: p_id});
}

function companyDelete(p_id){
	var param = new Object();
	param.companyId      	   = p_id;
	$("#deletModal").modal("show");
	$("#delete").click(function(){	
	 $.ajax({
	        url : "/user/companyDelete",
	        data : param,
	        type : 'post',
	        success : function(data){
	        	location.reload();
	        },
	        error : function(){
	            alert("error");
	        }
	 });
	})
}


</script>