<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="../include.jsp"%> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/w3.css"> 
     <link rel="stylesheet" href="${pageContext.request.contextPath}/css/easisoft.css"> 
</head> 
<body>
<div  class=" userInfoPop" style="min-height: 100%">
    <div class="w3-row es_padding_10">          
            <div class="w3-row es_head es_center">
                  	<span class=" es_size_16 es_text_lineheight_30"> PRODUCT PART INVENTORY</span>		                    	
                  	<!-- <a  class="es_float_right es_padding_10" href=# onclick="javascript:openProductSaleInsert();"                        id="btnInsert">ADD</a>-->
           <!--  <a  class="es_float_right es_padding_10" href=# onclick="javascript:openProductSaleUpdate('productSaleList.saleSeq');" id="btnUpdate">Edit</a>-->
                  	<!-- <a  class="es_float_left  es_padding_10" href=# onclick="javascript: self.close();">CLOSE</a>-->
            </div>
            <div class="w3-row content">
                       <div class="es_div_table"> <!-- DIV테이블 시작 -->
	                         <div class="w3-row es_row">
		                         <div class="w3-col l12 m12 s12 es_cell_title es_center">
					                <span class="">${prdInfo.prdSpec} DETAIL</span>
		                          </div>
	                         </div>
		                     <div class="w3-row es_row">
		                         
		                         <div class="w3-col l2   m2   s12    es_cell_th">Product Part No.</div>
		                         <div class="w3-col l4   m4   s12    es_cell_td">${prdInfo.prdNo} </div>
		                         <div class="w3-col l2   m2   s12    es_cell_th">DESCRIPTION</div>
		                         <div class="w3-col l4   m4   s12    es_cell_td">${prdInfo.prdDesc}</div>
		                         
		                         <div class="w3-col l2   m2   s12    es_cell_th">Product Part Spec</div>
		                         <div class="w3-col l4   m4   s12    es_cell_td">${prdInfo.prdSpec}</div>
		                         <div class="w3-col l2   m2   s12    es_cell_th">TOL</div>
		                         <div class="w3-col l4   m4   s12    es_cell_td">${prdInfo.prdTol}</div>
		                         
		                         <div class="w3-col l2   m2   s12    es_cell_th">Type</div>
		                         <div class="w3-col l4   m4   s12    es_cell_td">${prdInfo.prdType}</div>
		                          <div class="w3-col l2   m2   s12    es_cell_th">Product Qty</div>
		                         <div class="w3-col l4   m4   s12   es_cell_td">${prdInfo.prdQty}</div>
		                         
		                         <div class="w3-col l2   m2   s12    es_cell_th">Category</div>
		                         <div class="w3-col l4   m4   s12    es_cell_td">${prdInfo.cateName}</div>
		                          <div class="w3-col l2   m2   s12    es_cell_th">Sub Category</div>
		                         <div class="w3-col l4   m4   s12    es_cell_td">${prdInfo.subCateName}</div>
		                         
		                         <div class="w3-col l2   m2   s12    es_cell_th">OperatingTemp</div>
		                         <div class="w3-col l4   m4   s12    es_cell_td">${prdInfo.prdTemp}</div>
		                         <div class="w3-col l2   m2   s12    es_cell_th">Product Maker</div>
		                         <div class="w3-col l4   m4   s12    es_cell_td">${prdInfo.prdMaker}</div>
		                         
		                         <div class="w3-col l2   m2   s12    es_cell_th">Product MOQ</div>
		                         <div class="w3-col l10   m10   s12    es_cell_td">${prdInfo.prdMoq}</div>
		                       <%--   <div class="w3-col l2   m2   s12    es_cell_th">Product Moq</div>
		                         <div class="w3-col l4   m4   s12    es_cell_td">${prdInfo.prdMoq}</div> --%>
		                         
		                         
		                     </div>
                    </div> <!-- DIV테이블 끝 -->
            
             </div>
	</div>
	 <div class="card shadow">
              <!-- Card Header - Accordion -->
                <a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse"
                    role="button" aria-expanded="false" aria-controls="collapseCardExample">
                    <h6 class="m-0 font-weight-bold text-primary">입고리스트</h6>
                </a>
                <!-- Card Content - Collapse -->
                <div class="collapse" id="collapseCardExample">
                   <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="icmTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        	<!-- <th>No</th> -->
                                        	<th>PART Number</th>
                                            <th>입고수량</th>
                                            <th>가격</th>
                                            <th>발주날짜</th>
                                            <th>입고날짜</th>
                                            <th>회사</th>
                                            <th>비고</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody id = "tableBody">
									       <c:forEach var="result" items="${getIncomList}" varStatus="status">
									         <tr >
									          <%--  <th  >${result.icmId}</th> --%>
									           <th  >${result.prdNo}</th>
									           <th  >${result.icmQty}</th>
									           <th  >${result.icmPrice}</th>
									           <th  >${result.icmOrderDate}</th>
									           <th  >${result.icmDate}</th>
									           <th  >${result.icmCompanyName}</th>
									           <th  >${result.icmComment}</th>
									          </tr>
										  </c:forEach>  
                                    </tbody>
                                </table>
                            </div>
                        </div>
                </div>
            </div>
            
            <div class="card shadow">
              <!-- Card Header - Accordion -->
                <a href="#outdoingList" class="d-block card-header py-3" data-toggle="collapse"
                    role="button" aria-expanded="false" aria-controls="outdoingList">
                    <h6 class="m-0 font-weight-bold text-primary">출고리스트</h6>
                </a>
                <!-- Card Content - Collapse -->
                <div class="collapse" id="outdoingList">
                   <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="outTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        	<!-- <th>No</th> -->
                                        	<th>PART Number</th>
                                            <th>출고수량</th>
                                            <th>가격</th>
                                            <th>출고날짜</th>
                                            <th>회사</th>
                                            <th>비고</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody id = "tableBody">
									      <c:forEach var="result" items="${getIncomList}" varStatus="status">
									         <tr >
									           <th  >${result.prdNo}</th>
									           <th  >${result.icmQty}</th>
									           <th  >${result.icmPrice}</th>
									           <th  >${result.icmDate}</th>
									           <th  >${result.icmCompanyName}</th>
									           <th  >${result.icmComment}</th>
									          </tr>
										  </c:forEach>  
									           
									          
                                    </tbody>
                                </table>
                            </div>
                        </div>
                </div>
            </div>
		
	 <div class="w3-row es_center es_padding_30">
            <button type="button" class="btn btn-primary" >Add</button>
            <button type="button" class="btn btn-secondary" onclick="javascript: self.close();" >Close</button>
	 </div>
</div>	

<script>
//Call the dataTables jQuery plugin
$(document).ready(function() {
	   $('#icmTable').DataTable();
	   $('#outTable').DataTable();
	});
</script>
</body>
</html>    