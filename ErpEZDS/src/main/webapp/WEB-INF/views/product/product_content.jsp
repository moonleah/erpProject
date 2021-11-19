<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
			<div id="content">
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Z5 생산 부품 목록</h1>
                     <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
                        For more information about DataTables, please visit the <a target="_blank"
                            href="https://datatables.net">official DataTables documentation</a>.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Z5 생산 부품 목록</h6>
                             <a href="/" class="btn btn-success btn-circle btn-sm fa-pull-right">
                                        <i class="fas fa-plus "></i>
                             </a>
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
                                            <th>Setting<i class="fas fa-fw fa-cog"></i></th>
                                        </tr>
                                    </thead>
                                    <tbody id = "tableBody">
                                          <c:forEach var="result" items="${getProductList}" varStatus="status">
									         <tr>
									           <th value="${result.prdNo}" >${result.prdNo}</th>
									           <th value="${result.prdSpec}" >${result.prdSpec}</th>
									           <th value="${result.cateName}" >${result.cateName}</th>
									           <th value="${result.subCateName}" >${result.subCateName}</th>
									           <th value="${result.prdDesc}" >${result.prdDesc}</th>
									           <th value="${result.prdType}" >${result.prdType}</th>
									           <th value="${result.prdTemp}" >${result.prdTemp}</th>
									           <th value="${result.prdMaker}" >${result.prdMaker}</th>
									           <th>
										            <a href="/" class="btn btn-danger btn-circle btn-sm fa-pull-right">
						                                        <i class="fas fa-trash "></i>
						                            </a>
										            <a href="/" class="btn btn-info btn-circle btn-sm fa-pull-right" style = 'margin-right:3px;'>
	                                        			<i class="fas fa-info-circle  "></i>
	                             					</a>
									           </th>
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