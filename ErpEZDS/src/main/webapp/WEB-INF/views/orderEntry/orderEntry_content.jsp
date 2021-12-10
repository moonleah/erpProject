<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="content">
    <!-- Begin Page Content -->
    <div class="container-fluid">
       <!-- Page Heading -->
       <h1 class="h3 mb-2 text-gray-800">Z5 주문 현황</h1>
	
		  <div class="card shadow">  
			<!-- Tab Start -->
				<ul class="nav nav-tabs">
				  <li class="nav-item">
				    <a class="nav-link active" data-toggle="tab" href="#All">전체</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" data-toggle="tab" href="#asd">진행현황</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" data-toggle="tab" href="#zxc">입고대기</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" data-toggle="tab" href="#zxa">입고완료</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" data-toggle="tab" href="#zxa">출고대기</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" data-toggle="tab" href="#zxa">출고완료</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" data-toggle="tab" href="#zxa">반품</a>
				  </li>
				</ul>
			<!-- Tab End -->
			<!-- Tab content Start -->		
				<div class="tab-content">
				  <div class="tab-pane fade show active" id="All">
				    <h4 class ="es_padding es_margin"> Order All List</h4>
				    <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="orderAllTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        	<th>발주일자</th>
  											<th>발주코드</th>
  											<th>PART NO</th>
                                            <th>SPEC</th>
 	                                        <th>SUB SPEC</th>
                                            <th>단위</th>
                                            <th>수량</th>
                                            <th>단가</th>
                                            <th>금액</th>
                                            <th>업체</th>
                                            <th>상태</th>
                                        </tr>
                                    </thead>
                                    <tbody id = "tableBody">
                                          <%-- <c:forEach var="result" items="${getIvtList}" varStatus="status"> --%>
									         <tr onclick = "" style="cursor: pointer;">
									           <td  >{result.orderDate}</td>
									           <td  >{result.orderCode}</td>
									           <td  >{result.orderPartNo}</td>
									           <td  >{result.orderSpec}</td>
									           <td  >{result.orderSubSpec}</td>
									           <td  >{result.orderUnit}</td>
									           <td  >{result.orderQty}</td>
									           <td  >{result.orderPrice}</td>
									           <td  >{result.orderTotalPrice}</td>
									           <td  >{result.orderCompany}</td>
									           <td  >{result.orderStatus}</td>
									         </tr>
										  <%-- </c:forEach> --%>  
                                    </tbody>
                                </table>
                            </div>
                        </div>
				  </div>
				  <div class="tab-pane fade" id="asd">
				    <p>Nunc vitae turpis id nibh sodales commodo et non augue. Proin fringilla ex nunc. Integer tincidunt risus ut facilisis tristique.</p>
				  </div>
				  <div class="tab-pane fade" id="zxc">
				    <p>Curabitur dignissim quis nunc vitae laoreet. Etiam ut mattis leo, vel fermentum tellus. Sed sagittis rhoncus venenatis. Quisque commodo consectetur faucibus. Aenean eget ultricies justo.</p>
				  </div>
				  <div class="tab-pane fade" id="zxa">
				    <p>Curabitur dignissim quis nunc vitae laoreet. Etiam ut mattis leo, vel fermentum tellus. Sed sagittis rhoncus venenatis. Quisque commodo consectetur faucibus. Aenean eget ultricies justo.</p>
				  </div>
				</div>
			<!-- Tab content End -->
		</div>
	
  	</div>
</div>

<!-- <script>
$(document).ready(function(){
  $(".nav-tabs a").click(function(){
    $(this).tab('show');
  });
  $('.nav-tabs a').on('shown.bs.tab', function(event){
    var x = $(event.target).text();         // active tab
    var y = $(event.relatedTarget).text();  // previous tab
    $(".act span").text(x);
    $(".prev span").text(y);
  });
});
</script> -->