<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <script type="text/javascript">

var minDate, maxDate;
$.fn.dataTable.ext.search.push(
    function( settings, data, dataIndex ) {
        var min = minDate.val();
        var max = maxDate.val();
        var date = new Date( data[1] );
        if (
            ( min === null && max === null ) ||
            ( min === null && date <= max ) ||
            ( min <= date   && max === null ) ||
            ( min <= date   && date <= max )
        ) {
            return true;
        }
        return false;
    }
);

$(document).ready(function() {
    minDate = new DateTime($('#min'), {
        format: 'YYYY-MM-DD'
    });
    maxDate = new DateTime($('#max'), {
        format: 'YYYY-MM-DD'
    });
    var table = $('#orderAllTable').DataTable();
    $('#min, #max').on('change', function () {
        table.draw();
    });
    
    $('#clear').on('click', function () {
       location.reload()
    });
});



	
	
</script>
	  


<div id="content">
	<!-- Begin Page Content -->
	<div class="container-fluid">
		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">Z5 주문 현황 및 관리</h1>
		   <div class="horizontal-menu">
      </div>
		<div class="card shadow">
			<div class="content">
					<h4 class="es_padding es_margin">주문 현황</h4>
					<div class="card-body">
							 <table border="0" cellspacing="5" cellpadding="5">
						        <tbody>
						        <tr>
						            <td>Minimum date:</td>
						            <td><input type="text" id="min" name="min"></td>
						            <td><span> ~ </span></td>
						            <td>Maximum date:</td>
						            <td><input type="text" id="max" name="max"></td>
						            <td><input type="button" id="clear" name="clear"  value="clear"></td>
						        </tr>
						    	</tbody>
						    </table>
						   <div> 	
						<div class="table-responsive">
							<hr class="sidebar-divider">
							<div class="margin_30">
							</div>
						
							<table class="table table-bordered" id="orderAllTable"
								width="100%" cellspacing="0">
								<thead>
									<tr>
										<th>no</th>
										<th>발주일자</th>
										<th>발주코드</th>
										<th>코드</th>
										<th>상태</th>
										<th>setting</th>
									</tr>
								</thead>
								<tbody id="tableBody">
								 <c:forEach var="result" items="${getOrderAllList}" varStatus="status"> 
									<tr onclick="" style="cursor: pointer;">
										<td>${result.orderId}</td>
										<td>${result.orderDate}</td>
										<td>${result.orderCodeNum}</td>
										<td>${result.orderCode}</td>
										<td>${result.orderStatus}</td>
										<td>
								     <a href=# onclick="productUpdate('+ o.prdId +')" ><i class="fas fa-info-circle"  ></i></a>
							    	 <a href=# onclick="productDelete('+ o.prdId +')" ><i class="fas fa-trash" style="color:red;"></i></a>
										</td>
									</tr>
								</c:forEach> 
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


