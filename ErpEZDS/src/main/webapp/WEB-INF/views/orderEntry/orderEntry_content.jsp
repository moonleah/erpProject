<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   


<div id="content">
	<!-- Begin Page Content -->
	<div class="container-fluid">
		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">Z5 주문 현황 및 관리</h1>
		   <div class="horizontal-menu">
      </div>
		<div class="card shadow">
			<!-- Tab Start -->
			<ul class="nav nav-tabs">
				<li class="nav-item"><a class="nav-link active"
					data-toggle="tab" href="#All">전체</a></li>
				<!--  <li class="nav-item">
				    <a class="nav-link" data-toggle="tab" href="#asd">진행현황</a>
				  </li>
				 -->
			</ul>
			<!-- Tab End -->
			<!-- Tab content Start -->
			<div class="tab-content">
				<div class="tab-pane fade show active" id="All">
					<h4 class="es_padding es_margin">주문확정 리스트</h4>
					<div class="card-body">
						<div class="w3-row es_searchbar">
							<div class="es_search_option_wrap">
								<div class="es_search_desc"></div>
								<div class="es_search_option">
									<div>
										<div class="es_search_label" style="width: 100px;">ProductGrpNm</div>
										<div class="es_search_content">
											<select class="inputField" name="searchProductGrp"
												id="searchProductGrp"
												style="width: 280px; height: 30px; padding: 5px;">
												<option value="">All</option>
												<option value="{result.productGrpCd}">{result.productGrpNm}</option>
											</select>
										</div>
									</div>
									<div>
										<div class="es_search_label" style="width: 100px">SerialNo</div>
										<div class="es_search_content">
											<input class="inputField" type="text" id="searchSerialNo"
												name="searchSerialNo" style="height: 30px">
										</div>
									</div>
									<div>
										<div class="es_search_label" style="width: 100px">PartNo</div>
										<div class="es_search_content">
											<input class="inputField" type="text" id="searchPartNo"
												name="searchPartNo" style="height: 30px">
										</div>
									</div>
									<div>
										<div class="es_search_label" style="width: 100px">PartNm</div>
										<div class="es_search_content">
											<input class="inputField" type="text" id="searchPartNm"
												name="searchPartNm" style="height: 30px">
										</div>
									</div>
									<div>
										<div class="es_search_label" style="width: 100px">SaleStaus</div>
										<div class="es_search_content">
											<div class="es_radio">
												<label><input class="inputField" type="radio"
													id="searchSaleStatus" name="searchSaleStatus" value=""
													checked><span>ALL</span></label> <label><input
													class="inputField" type="radio" id="searchSaleStatus"
													name="searchSaleStatus" value="Y"><span>SOLD</span></label>
												<label><input class="inputField" type="radio"
													id="searchSaleStatus" name="searchSaleStatus" value="N"><span>IN-STOCK</span></label>
											</div>
										</div>
									</div>
									<br>
									<div>
										<div class="es_search_label" style="width: 100px">Sales
											Date</div>
										<div class="es_search_content">
											<input class="inputField es_center" type="text"
												id="searchSaleStartDt" style="width: 100px; height: 30px">
											~ <input class="inputField es_center" type="text"
												id="searchSaleEndDt" style="width: 100px; height: 30px">
										</div>
									</div>
									<div>
										<div class="es_search_label" style="width: 100px">ShipDtm</div>
										<div class="es_search_content">
											<input class="inputField es_center" type="text"
												id="searchStartDt" style="width: 100px; height: 30px">
											~ <input class="inputField es_center" type="text"
												id="searchEndDt" style="width: 100px; height: 30px">
										</div>
									</div>
								</div>
							</div>
							<div class="es_search_btn_wrap">
								<a class="es_btn_search" href=#
									onclick="javascript: getProductSaleList();" id="btnSelect">SEARCH</a>
								<a class="es_btn_add" href=#
									onclick="javascript: excelExport();" id="btnExport">Excel
									Export</a> <a class="es_btn_close" href="/admin/main.do">MAIN</a>
							</div>
						</div>


						<div class="table-responsive">
							<hr class="sidebar-divider">
							<div class="margin_30"></div>
							<table class="table table-bordered" id="orderAllTable"
								width="100%" cellspacing="0">
								<thead>
									<tr>
										<th>발주일자</th>
										<th>발주번호</th>
										<th>주문코드</th>
										<th>상태</th>
										<th>setting</th>
									</tr>
								</thead>
								<tbody id="tableBody">
									<%-- <c:forEach var="result" items="${getIvtList}" varStatus="status"> --%>
									<tr onclick="" style="cursor: pointer;">
										<td>{result.orderDate}</td>
										<td>{result.orderCode}</td>
										<td>{result.orderPartNo}</td>
										<td>{result.orderSpec}</td>
										<td>{result.orderSpec}</td>
									</tr>
									<%-- </c:forEach> --%>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Tab content End -->
	</div>

</div>

