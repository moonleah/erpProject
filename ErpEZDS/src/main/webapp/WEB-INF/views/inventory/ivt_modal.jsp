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
<div  class="es_white" style="min-height: 100%">
    <div class="w3-row es_padding_10">          
            <div class="w3-row es_head es_center">
                  	<span class="font-NotoSansBold es_size_16 es_text_lineheight_30">PRODUCT SALES STATUS</span>		                    	
                  	<!-- <a  class="es_float_right es_padding_10" href=# onclick="javascript:openProductSaleInsert();"                        id="btnInsert">ADD</a>-->
           <!--  <a  class="es_float_right es_padding_10" href=# onclick="javascript:openProductSaleUpdate('productSaleList.saleSeq');" id="btnUpdate">Edit</a>-->
                  	<!-- <a  class="es_float_left  es_padding_10" href=# onclick="javascript: self.close();">CLOSE</a>-->
            </div>
            <div class="w3-row content">
                       <div class="es_div_table"> <!-- DIV테이블 시작 -->
	                         <div class="w3-row es_row">
		                         <div class="w3-col l12 m12 s12 es_cell_title es_center">
					                <span class="">productSaleList.dealerNm</span>
		                          </div>
	                         </div>
		                     <div class="w3-row es_row">
								 <div class="w3-col l2   m2   s12    es_cell_th">SerialNo</div>
		                         <div class="w3-col l10   m4   s12    es_cell_td es_text_red">productSaleList.serialNo</div>
		                         <div class="w3-col l2   m2   s12    es_cell_th">ProductGrpNm</div>
		                         <div class="w3-col l10   m4   s12    es_cell_td">productSaleList.productGrpNm</div>
		                         
		                         <div class="w3-col l2   m2   s12    es_cell_th">PartNo</div>
		                         <div class="w3-col l4   m4   s12    es_cell_td">productSaleList.partNo</div>
		                         <div class="w3-col l2   m2   s12    es_cell_th">PartNm</div>
		                         <div class="w3-col l4   m4   s12    es_cell_td">productSaleList.partNm</div>
		                         
		                         <div class="w3-col l2   m2   s12    es_cell_th">DealerCd</div>
		                         <div class="w3-col l4   m4   s12    es_cell_td">productSaleList.dealerCd</div>
		                         <div class="w3-col l2   m2   s12    es_cell_th">DealerNm</div>
		                         <div class="w3-col l4   m4   s12    es_cell_td">productSaleList.dealerNm</div>
		                         
		                         <div class="w3-col l2   m2   s12    es_cell_th">CustId</div>
		                         <div class="w3-col l10  m10  s12   es_cell_td">productSaleList.custId</div>
		                         <div class="w3-col l2   m2   s12    es_cell_th">SaleCnt</div>
		                         <div class="w3-col l10  m10  s12   es_cell_td">productSaleList.saleCnt</div>
		                         <div class="w3-col l2   m2   s12    es_cell_th">LockTerm</div>
		                         <div class="w3-col l10  m10  s12   es_cell_td">productSaleList.gcntNm</div>
		                         <div class="w3-col l2   m2   s12    es_cell_th">TraceProduct</div>
		                         <div class="w3-col l10  m10  s12   es_cell_td">productSaleList.traceProduct</div>
		                         <div class="w3-col l2   m2   s12    es_cell_th">SaleStatus</div>
		                         <div class="w3-col l10  m10  s12   es_cell_td">productSaleList.saleStatus</div>
		                         <div class="w3-col l2   m2   s12    es_cell_th">UseYn</div>
		                         <div class="w3-col l10  m10  s12   es_cell_td">productSaleList.useYn</div>
								 <div class="w3-col l2   m2   s12    es_cell_th">ShipDtm</div>
		                         <div class="w3-col l4   m4  s12   es_cell_td">productSaleList.shipDtm</div>
		                         <div class="w3-col l2   m2   s12    es_cell_th">SaleDtm</div>
		                         <div class="w3-col l4   m4  s12   es_cell_td">productSaleList.saleDtm</div>
		                         <div class="w3-col l2   m2   s12    es_cell_th">WarrantyDt</div>
		                         <div class="w3-col l10  m10  s12   es_cell_td">productSaleList.warrantyDt</div>
		                         <div class="w3-col l2   m2   s12    es_cell_th">UpdateYear</div>
		                         <div class="w3-col l4   m4  s12   es_cell_td">productSaleList.updateYear</div>
		                         <div class="w3-col l2   m2   s12    es_cell_th">WarrantyYear</div>
		                         <div class="w3-col l4   m4  s12   es_cell_td">productSaleList.warrantyYear</div>
		                     </div>
                    </div> <!-- DIV테이블 끝 -->
            
             </div>
	</div>	
	 <div class="w3-row es_center es_padding_30">
               <!--     	<a  class="es_btn_edit"  href=# onclick="javascript:openProductSaleUpdate('productSaleList.saleSeq');" id="btnUpdate">Edit</a>-->
                 	<a  class="es_btn_add"   href=# onclick="javascript:openProductSaleInsert();"                         id="btnInsert">ADD</a>
	                <a  class="es_btn_close" href=# onclick="javascript: self.close();">CLOSE</a>
	 </div>
</div>	
</body>
</html>    