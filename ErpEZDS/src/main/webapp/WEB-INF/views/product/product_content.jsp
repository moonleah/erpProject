<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
			<div id="content">
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">물품 리스트</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">품 목 Category
	                             <a href="#" onclick="productAdd()" class="btn btn-success btn-circle btn-sm fa-pull-right">
	                                        <i class="fas fa-plus "></i>
	                             </a>
								 <select class="inputField"   name="productCategory" id="productCategory"  onchange = "categoryChange()">
								 		<option value="0">All</option>
						                  <c:forEach var="result" items="${productCategory}" varStatus="status">
						                      <option value="${result.prdCategory}">${result.prdCategory}</option>
							              </c:forEach>
			             	 	 </select>
								
							</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="prdTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        	<th>PRD CATE</th>
                                        	<th>PART NO</th>
                                        	<th>SPEC'</th>
  											<th>PRAT CATE</th>
                                            <th>PRAT SUBCATE</th>
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
		        	alert("success")
		        	location.reload();
		        },
		        error : function(){
		            alert("error");
		        }
			 });
		})
}

 function categoryChange(){ 
 var prdCategory = $('#productCategory').val();
 var d_table = $('#prdTable').DataTable({
	  dom: 'Blfrtip',
      buttons: [
      /* {
          extend: 'csvHtml5',
          text: 'Excel',
          footer: true,
          className: 'exportBtn'
      }, */
      ],
	    columnDefs: [{
	    defaultContent: "",
/* 	    className: 'select-checkbox', */
	    targets: 0
	      }],
	    select: {
	            style:    'os',
	            selector: 'td:first-child'
	        },
	   "bDestroy": true,
	   "sAjaxSource": '/user/productList2?prdCategory='+prdCategory+'',
	    columns: [
	     { data: 'prdCategory'},
	     { data: 'prdNo' },
	     { data: 'prdSpec' },
	     { data: 'cateName' },
	     { data: 'subCateName' },
	     { data: 'prdDesc' },
	     { data: 'prdType' },
	     { data: 'prdTemp' },
	     { data: 'prdMaker' },
	     { data: 'prdTol' },
	     { data: 'prdQty' },
	     { data: 'prdMoq' },
	     { data: null , "bSortable": false, render:  function (o) { 
	    	 return  '<a href=# onclick="productUpdate('+ o.prdId +')" >' + '<i class="fas fa-info-circle"  ></i>' + '</a>'
	    	 + '<a href=# onclick="productDelete('+ o.prdId +')" >' + '<i class="fas fa-trash" style="color:red;"></i>' + '</a>'; 
	    	 } 
	     } 
	       ],
	});

 }
 
 
 
 $(document).ready(function() {
	 categoryChange();
	 
	/*  $('#prdTable_filter').prepend('<select id="select"></select>');
	    $('#prdTable > thead > tr').children().each(function (indexInArray, valueOfElement) { 
	        $('#select').append('<option>'+valueOfElement.innerHTML+'</option>');
	    }); */
	
 })
</script>