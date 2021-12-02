<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
			<div id="content">
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Z5 생산 부품 목록</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Z5 생산 부품 목록
	                             <a href="#" onclick="productAdd()" class="btn btn-success btn-circle btn-sm fa-pull-right">
	                                        <i class="fas fa-plus "></i>
	                             </a>
                             </h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        	<th>PART NO</th>
                                        	<th>SPEC'</th>
  											<th>CATEGORY</th>
                                            <th>SUBCATEGORY</th>
                                            <th>DESC</th>
                                            <th>TYPE</th>
                                            <th>Temp</th>
                                            <th>MAKER</th>
                                            <th>TOL</th>
                                            <th>QTY</th>  
                                            <th>MOQ</th>  
                                            <th>Setting<i class="fas fa-fw fa-cog"></i></th>
                                        </tr>
                                    </thead>
                                    <tbody id = "tableBody">
                                          <c:forEach var="result" items="${getProductList}" varStatus="status">
									         <tr>
									           <td value="${result.prdNo}" >${result.prdNo}</td>
									           <td value="${result.prdNo}" >${result.prdSpec}</td>
									           <td value="${result.cateName}" >${result.cateName}</td>
									           <td value="${result.subCateName}" >${result.subCateName}</td>
									           <td value="${result.prdDesc}" >${result.prdDesc}</td>
									           <td value="${result.prdType}" >${result.prdType}</td>
									           <td value="${result.prdTemp}" >${result.prdTemp}</td>
									           <td value="${result.prdMaker}" >${result.prdMaker}</td>
									           <td value="${result.prdTol}" >${result.prdTol}</td>
									           <td value="${result.prdQty}" >${result.prdQty}</td>
									           <td value="${result.prdMoq}" >${result.prdMoq}</td>
									           <td><!-- data-toggle="modal" data-target="#my-modal" --> 
										            <a href="#"   onclick="productDelete(${result.prdId})"  class="btn btn-danger btn-circle btn-sm fa-pull-right">
						                                        <i class="fas fa-trash "></i>
						                            </a>
										            <a href="#" onclick="productUpdate(${result.prdId})" class="btn btn-info btn-circle btn-sm fa-pull-right" style = 'margin-right:3px;'>
	                                        			<i class="fas fa-info-circle  "></i>
	                             					</a>
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
function productAdd(){
	openPopup("/user/productAdd", "productAdd", 1000, 700);
}

function productUpdate(p_id){
	openPopup("/user/productUpdateView", "productUpdate", 1000, 700, {prdId: p_id});
}

function productDelete(p_id){
	var param = new Object();
	param.prdId      	   = p_id;
	
	$("#deletModal").modal("show");
	$("#delete").click(function(){
		 $.ajax({
		        url : "/user/productDelete",
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