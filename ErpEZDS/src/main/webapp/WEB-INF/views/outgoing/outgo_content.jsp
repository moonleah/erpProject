<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
			<div id="content">
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Z5 PART RELEASE</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Z5 생산부품 출고 목록</h6>
                                <%@ include file="../ivt_nav.jsp" %>  
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        	<!-- <th>No</th> -->
                                        	<th>No</th>
                                        	<th>PART Number</th>
  											<th>PART SPEC</th>
                                            <th>출고수량</th>
                                            <th>가격</th>
                                            <th>입고날짜</th>
                                            <th>회사</th>
                                            <th>비고</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody id = "tableBody">
                                          <c:forEach var="result" items="${getOutgoList}" varStatus="status">
									         <tr onclick = "outgoDetail(${result.outId},${result.prdNo})">
									           <td  >${status.count}</td>
									           <td  >${result.prdNo}</td>
									           <td  >${result.prdSpec}</td>
									           <td  >${result.outQty}</td>
									           <td  >${result.outPrice}</td>
									           <td  >${result.outDate}</td>
									           <td  >${result.outCompanyName}</td>
									           <td  >${result.outComment}</td>
									          </tr>
										  </c:forEach>  
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
<script>
function IncomDetail(){
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
	
				
	}

</script>