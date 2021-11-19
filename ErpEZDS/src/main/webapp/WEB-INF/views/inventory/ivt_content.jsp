<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
			<div id="content">
                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Z5 INVENTORY List</h1>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Z5 생산부품 재고 리스트</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="ivtTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        	<!-- <th>No</th> -->
                                        	<th>PART Number</th>
  											<th>PART SPEC'</th>
  											<th>Category</th>
                                            <th>입고수량(Total)</th>
 	                                        <th>출고수량(Total)</th>
                                            <th>재고수량(Total)</th>
                                            <th>제품당 QTY</th>
                                            <th>생산가능 대수</th>
                                        </tr>
                                    </thead>
                                    <tbody id = "tableBody">
                                          <c:forEach var="result" items="${getIvtList}" varStatus="status">
									         <tr onclick = "openIvtDetail(${result.prdNo})" style="cursor: pointer;">
									           <th  >${result.prdNo}</th>
									           <th  >${result.prdSpec}</th>
									           <th  >${result.cateName}</th>
									           <th  >${result.icmSumQty}</th>
									           <th  >${result.outSumQty}</th>
									           <th  >${result.ivtTotal}</th>
									           <th  >${result.prdQty}</th>
									           <th  >${result.avlPrdQty}</th>
									         </tr>
										  </c:forEach>  
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
<script>

$(document).ready(function() {
	   $('#ivtTable').DataTable();
	});

function openIvtDetail(p_prdNo){
	openPopup("/user/ivtDetail", "openProductSaleDetail", 1000, 700, {prdNo: parseInt(p_prdNo) });
}


/* function IvtDetail(p_prdNo){  //개별디테일 
	var src_width =screen.availWidth;
	var src_height =screen.availHeight;
	var param = new Object();
	param.prdNo = parseInt(p_prdNo);
	
	console.log(p_prdNo);
	 $.ajax({
	        url : "/user/ivtDetail",
	        data : param,
	        type : 'post',
	        success : function(data){
	        	console.log(data);
	        	window.open(data);
	        	
	        },
	        error : function(){
	            alert("error");
	        }
	 });
	

	//window.open("/user/popup", "PopupWin", 'top=0,left=0, width='+src_width+',height='+src_height+',scrollbars=yes');

}
 */


</script>