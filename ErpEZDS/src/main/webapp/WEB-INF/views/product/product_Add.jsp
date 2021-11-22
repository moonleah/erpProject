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
  
        
    <div class="w3-row content es_padding_20">  
      <div class="es_border es_border_gray es_padding_16">       
             <div class="w3-row es_row">
       			<div class="w3-col l12  m12  s12  font-NotoSansBold es_size_16 es_text_lineheight_30 es_padding_10">PRODUCT PART INFO</div>
            </div>
			<div class="w3-row">  
			
			<!-- 	<div class="w3-col l2  m6  s12 es_label">ShipSeq</div>  -->
				<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="shipSeq"  name="shipSeq" placeholder="shipSeq"  readonly hidden></div>
			</div>
			<div class="w3-row">  
				<div class="w3-col l2  m6  s12 es_label">DealerCd</div> 
				<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="dealerCd"  name="dealerCd" placeholder="dealerCd"  readonly></div>
				
			</div>
			<div class="w3-row">  
				<div class="w3-col l2  m6  s12 es_label">ProductCd</div> 
				<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="productGrpCd"  name="productGrpCd" placeholder="productGrpCd"  readonly></div>
				<div class="w3-col l2  m6  s12 es_label">PartNo</div> 
				<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="partNo"  name="partNo" placeholder="partNo"  readonly></div>
			</div>
			<div class="w3-row">  
				<div class="w3-col l2  m6  s12 es_label">ShipDtm</div> 
				<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="shipDtm"  name="shipDtm" placeholder="shipDtm"  readonly></div>
				<div class="w3-col l2  m6  s12 es_label">WarrantyDt</div> 
				<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="warrantyDt"  name="warrantyDt" placeholder="warrantyDt"  readonly></div>
			</div>
			</div><br>
			<div class="es_border es_border_gray es_padding_16">    
			<div class="w3-row es_row">
       			<div class="w3-col l12  m12  s12    font-NotoSansBold es_size_16 es_text_lineheight_30 es_padding_10">Customer Info</div>
            </div>
			<div class="w3-row">  
				<div class="w3-col l2  m6  s12 es_label">CustId</div> 
				<div class="w3-col l4  m6  s12">
					<div id="custId"></div>	
				</div>
				<div class="w3-col l2  m6  s12 es_label">CustName</div> 
				<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="custName"  name="custName" placeholder="custName"  readonly></div>
			</div>
			<div class="w3-row">  
				<div class="w3-col l2  m6  s12 es_label">CountryNm</div> 
				<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="countryNm"  name="countryNm" placeholder="countryNm"  readonly></div>
				<div class="w3-col l2  m6  s12 es_label">Email</div> 
				<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="email"  name="email" placeholder="email" readonly></div>
			</div>
			<div class="w3-row">  
				<div class="w3-col l2  m6  s12 es_label">AccessDate</div> 
				<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="accessDate"  name="accessDate" placeholder="accessDate"  readonly></div>
				<div class="w3-col l2  m6  s12 es_label">Point</div> 
				<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="point"  name="point" placeholder="point"  readonly></div>
			</div>
			</div><br>
			<div class="es_border es_border_gray es_padding_16">    
			<div class="w3-row es_row">
       			<div class="w3-col l12  m12  s12    font-NotoSansBold es_size_16 es_text_lineheight_30 es_padding_10">SubScription Info</div>
            </div>
			<div class="w3-row">  
				<div class="w3-col l2  m6  s12 es_label">UpdateYear</div> 
				<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="updateYear"  name="updateYear" placeholder="updateYear" value="1"></div>
				<!--  <input class="es_input inputField" type="text"  id="updateYear"  name="updateYear" placeholder="updateYear"  readonly></div>-->
				<div class="w3-col l2  m6  s12 es_label">WarrantyYear</div> 
				<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="warrantyYear"  name="warrantyYear" placeholder="warrantyYear" value="1"></div>
				<!-- <input class="es_input inputField" type="text"  id="warrantyYear"  name="warrantyYear" placeholder="warrantyYear"  readonly></div> -->
			</div>
			</div><br>
			<div class="es_border es_border_gray es_padding_16">      
			 <div class="w3-row es_row">
       			<div class="w3-col l12  m12  s12    font-NotoSansBold es_size_16 es_text_lineheight_30 es_padding_10">ProductSale Info</div>
            </div>
			<div class="w3-row">  
				<div class="w3-col l2  m6  s12 es_label">SaleDtm</div> 
				<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="saleDtm"  name="saleDtm" placeholder="saleDtm"></div>
			</div>
		   <div class="w3-row">  
				<div class="w3-col l2  m6  s12 es_label">SaleCnt</div> 
				<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="saleCnt"  name="saleCnt" placeholder="saleCnt" value="1"></div>
				<div class="w3-col l2  m6  s12 es_label">LockTerm</div> 
	       		<div class="es_radio">
                     <c:forEach var="result" items="${gcnt}" varStatus="status">
		                 <label><input type="radio" name="gcnt" value="${result.cd}" ><span>${result.cdNm}</span></label>
			        </c:forEach>
               </div>
		   </div>
		   <div class="w3-row">  
				<div class="w3-col l2  m6  s12 es_label">SaleStatus</div> 
				<div class="w3-col l4  m6 s12">
					<div class="es_radio">
		                    <label><input class="inputField" type="radio" id="saleStatus" name="saleStatus"  value="Y" ${productSaleList.saleStatus eq 'Y' ? 'checked' : ''}><span>Y</span></label>
	                        <label><input class="inputField" type="radio" id="saleStatus" name="saleStatus"  value="N" ${productSaleList.saleStatus ne 'Y' ? 'checked' : ''}><span>N</span></label>
	               	</div>
               	</div>
				<div class="w3-col l2  m6 s12 es_label">UseYn</div> 
				<div class="w3-col l4  m6 s12">
	                <div class="es_radio">
	                		<label><input class="inputField" type="radio" id="useYn" name="useYn"  value="Y" ${productSaleList.useYn  eq 'Y' ? 'checked' : ''}><span>Y</span></label>
	                        <label><input class="inputField" type="radio" id="useYn" name="useYn"  value="N" ${productSaleList.useYn  ne 'Y' ? 'checked' : ''}><span>N</span></label>
	               </div>
               </div>
		   </div>
 	   	   </div>
   
 </div>
		
	 <div class="w3-row es_center es_padding_30">
               <!--     	<a  class="es_btn_edit"  href=# onclick="javascript:openProductSaleUpdate('productSaleList.saleSeq');" id="btnUpdate">Edit</a>-->
                 	<a  class="es_btn_add"   href=# onclick="javascript:openProductSaleInsert();"                         id="btnInsert">ADD</a>
	                <a  class="es_btn_close" href=# onclick="javascript: self.close();">CLOSE</a>
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