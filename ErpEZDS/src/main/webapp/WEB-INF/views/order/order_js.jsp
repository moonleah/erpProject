<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<script>
function purchaseOrder(){
	var insertConfirm = confirm('Are you sure??? ')
	if(insertConfirm){
	
	var param = new Object(); 
	var rowData = new Array(); 
    var tdArr = new Array();
    var idArr = new Array();
	var checkbox = $("input[name=checkRow]:checked");
	if(checkbox.length == 0 ){
		alert("발주할 목록을 선택해주세요")
	}
	    checkbox.each(function(i) {
	    	var no = $(this).attr('value');
	      	var tr = checkbox.parent().parent().eq(i);
	        var td = tr.children();
	        // 체크된 row의 모든 값을 배열에 담는다.
	        rowData.push(tr.text());
	        var company = td.eq(10).text();
	        // 가져온 값을 배열에 담는다.
	        tdArr.push(company);
	        idArr.push(no);
	    })
    let dupYn = false;
    for(let i = 0; i < tdArr.length; i++) {
      const currElem = tdArr[i];
      for(let j = i+1; j < tdArr.length; j++) {
        if(currElem != tdArr[j]) {
         dupYn = true;
		 break;
        }else{
         dupYn = false;
        }
      }
      if(!dupYn)  {
      	  openPopup("/user/purchaseOrder", "productAdd", 1500, 900 ,{ArrId :  JSON.stringify(idArr) , orderCompany : tdArr[0]});
      }else{
          alert("발주 업체가 다릅니다.다시 선택해주세요.")
        	break;
      } 
    }
    
  }
}



//제품 sub spec 가져오기
function getSubSpecList(prdNo){
	if(prdNo != 0 ){
		 $.ajax({
		        url : "/user/getSubSpecList",
		        type : 'post',
		        data : { subSpecPrdNo : prdNo },
		        success : function(data){
		        	if(data.length > 0 ) {
		        	 $.each(data, function (index, value) {
		        		 $('#subSpecSelect *').remove();
		        		 $('#subSpecSelect').append('<option value="' + value.subSpecPrdNo + '">'  + value.subSpecName + '</option>');
		             });
		        	 }else{
		        		 $('#subSpecSelect *').remove();
		        		 $('#subSpecSelect').append('<option value="0">No results</option>');
		        	 }
		        },
		        error : function(){
		            alert("error");
		        }
		  });
	}	 
}

//제품정보 가져오기
function getProductList(){
	 $.ajax({
	        url : "/user/getProductList",
	        type : 'post',
	        success : function(data){
	        	 $.each(data, function (index, value) {
	                 $('#partNoSelect').append('<option value="' + value.prdNo + '"value2="' + value.prdMoq + '">'  + value.prdNo + '</option>');
	                 $('#specSelect').append('<option value="' + value.prdNo + '">'  + value.prdSpec + '</option>');
	             });
	        	 
	        },
	        error : function(){
	            alert("error");
	        }
	  });
}

//회사정보 가져오기
function getCompanyList(){
	 $.ajax({
	        url : "/user/getCompanyList",
	        type : 'post',
	        success : function(data){
	        	 $.each(data, function (index, value) {
	                 $('#companySel').append('<option value="' + value.companyId + '">'  + value.companyName + '</option>');
	             });
	        },
	        error : function(){
	            alert("error");
	        }
	  });
}


function productOrder(){
	var param = new Object();
	param.orderPartNo      	   = $("#partNoSelect").val();
	param.orderSpec      	   = $("#specSelect option:selected").text();
	param.orderSubSpec     	   = $("#subSpecSelect option:selected").text();
	param.orderCompany		   = $("#companySel option:selected").text();	
	param.orderPrice      	   = $("#orderPrice").val();
	param.orderQty      	   = $("#orderQty").val();
	var date = $("#orderDate").datepicker("getDate");
	param.orderDate      	   = $.datepicker.formatDate("yy-mm-dd", date)
	param.orderUser      	   = '${principal.username}'
	
	$.ajax({
	        url : "/user/productOrder",
	        type : 'post',
	        data : param,
	        success : function(data){
	        	 alert("success")
	        	 location.reload();
	        },
	        error : function(){
	            alert("error");
	        }
	});
}



function productOrderList() { 
	var param = new Object();
	param.orderUser      	   = '${principal.username}'
	$.ajax({
        url : "/user/productOrderList",
        type : 'post',
        data : param,
        success : function(data){
        if(data.lenght != 0 ) { 	 
        	 var str = ""; 
        	 var str2 = ""; 
	        	 str2    +='<thead><tr>'
	        	 str2    +='<th><input type="checkbox" id="checkAll"/></th>'
	        	 str2    +='<th>발주일자</th>'
	             str2    +='<th>발주코드</th>'
	             str2    +='<th>PART NO</th>'
	             str2    +='<th>SPEC</th>'
	             str2    +='<th>SUB SPEC</th>'
	             str2    +='<th>단위</th>'
	        	 str2    +='<th>수량</th>'
	        	 str2    +='<th>단가</th>'
	        	 str2    +='<th>금액</th>'
	        	 str2    +='<th>업체</th>'
	        	 str2    +='<th>상태</th>'
	        	 str2    +='</tr></thead>' ;
        	 $.each(data, function (index, value) {
        		 str += "<TR>"
        		 str += '<TD><input type="checkbox" id="checkRow" name="checkRow" class="singlechkbox" value =' + value.orderId + ' /></TD>'
        		 str += '<TD>' + value.orderDate + '</TD>'
        		 str += '<TD>' + value.orderCode + '</TD>'
        		 str += '<TD>' + value.orderPartNo + '</TD>'
        		 str += '<TD>' + value.orderSpec + '</TD>'
                 str += '<TD>' + value.orderSubSpec + '</TD>'
                 str += '<TD>' + value.orderUnit + '</TD>' 
                 str += '<TD>' + value.orderQty + '</TD>'
                 str += '<TD>' + value.orderPrice + '</TD>'
                 str += '<TD>' + value.orderTotalPrice + '</TD>' 
                 str += '<TD>' + value.orderCompany + '</TD>' 
                 str += '<TD>' + value.orderStatus + '</TD>'
                 str += '</TR>'
             });
        	
        	 $('#orderTable *').remove();
    		 $('#orderTable').append(str2 + str);
    		 $('#orderTable').DataTable();
    		
        	}else { 
        		console.log('no data')
        	}
        },
        error : function(){
            alert("error");
        }
        
       
  })
	
}

</script>