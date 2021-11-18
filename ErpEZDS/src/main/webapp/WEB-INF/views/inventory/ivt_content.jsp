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
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        	<!-- <th>No</th> -->
                                        	<th>PART Number</th>
  											<th>PART DESC</th>
                                            <th>입고수량(Total)</th>
 	                                        <th>출고수량(Total)</th>
                                            <th>재고수량(Total)</th>
                                            <th>제품당 QTY</th>
                                            <th>생산가능 대수</th>
                                        </tr>
                                    </thead>
                                    <tbody id = "tableBody">
                                          <c:forEach var="result" items="${getIvtList}" varStatus="status">
									         <tr onclick = "IvtDetail(${result.prdNo})">
									           <th  >${result.prdNo}</th>
									           <th  >${result.prdDesc}</th>
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
            <button type="button" class="btn btn-primary" onclick="detail()" data-target="#detailModal">클릭해서 나오는 modal</button>
                                  
			<%-- <%@ include file="ivt_modal.jsp" %> --%>
<script>

$(document).ready(function() {
	/*   $('#icmTable').DataTable();
	  $('#outTable').DataTable(); */
	});

function detail(){
	window.open("/user/popup", "PopupWin", 'width=1000px,height=800px,scrollbars=yes');

}



/* 

function IvtDetail(){
	  param = JSON.stringify(param);

	    $.ajax({
	        url : "/getProductList.do",
	        data : param,
	        type : 'post',
	        success : function(data){
	            var results = data.boardList;
	            var str = '<TR>';
	            $.each(results , function(i){
	                str += 
	                '<TD>' 
	                + results[i].bdTitl + '</TD><TD>' 
	                + results[i].bdWriter + '</TD><TD>'
	                + results[i].bdWriter + '</TD><TD>'
	                + results[i].bdWriter + '</TD><TD>'
	                + results[i].bdWriter + '</TD><TD>'
	                + results[i].bdWriter + '</TD><TD>'
	                + results[i].bdWriter + '</TD><TD>'
	                + results[i].bdWriter + '</TD><TD>'
	                + results[i].bdRgDt + 
	                '</TD>';
	                str += '</TR>';
	           });
	           $("tableBody").append(str); 
	        },
	        error : function(){
	            alert("error");
	        }
	    });	
	
				
	} */

</script>