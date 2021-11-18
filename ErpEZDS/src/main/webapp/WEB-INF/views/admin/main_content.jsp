<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
			<div id="content">
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Z5 거래처</h1>
<!--                     <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
                        For more information about DataTables, please visit the <a target="_blank"
                            href="https://datatables.net">official DataTables documentation</a>.</p>
 -->
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Z5 부품 거래처 목록</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        	<th>No</th>
                                            <th>Company Name</th>
  											<!-- <th>MAIN CATEGORY</th>
                                            <th>SUB CATEGORY</th>
                                            <th>DESCRIPTION</th>
                                            <th>SPEC'</th>
                                            <th>TYPE</th>
                                            <th>OperatingTemp</th>
                                            <th>MAKER</th>  -->
                                        </tr>
                                    </thead>
                                    <tbody id = "tableBody">
                                          <c:forEach var="result" items="${selectList}" varStatus="status">
									         <tr>
									           <th value="${result.companyId}" >${result.companyId}</th>
									           <th value="${result.companyName}" >${result.companyName}</th>
									          </tr>
										  </c:forEach>  
                                      <!-- 	 <tr>
                                            <td>Tiger Nixon</td>
                                            <td>System Architect</td>
                                            <td>Edinburgh</td>
                                            <td>61</td>
                                            <td>2011/04/25</td>
                                            <td>$320,800</td>
                                            <td>1608</td>
                                            <td>-55℃~+125℃</td>
                                            <td>삼성전기</td>
                                        </tr> -->
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
<script>
function tableCreate(){
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