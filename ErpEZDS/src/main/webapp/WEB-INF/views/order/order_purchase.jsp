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
<style>
.ordertext{
	border:none;
}
 @page { size: landscape; }

</style>
<body>
<div  class=" userInfoPop" style="min-height: 100%">
  	     <div class="w3-row es_head es_center ">
                  	<span class=" es_size_20 es_text_lineheight_30"> EZDS 구매 발주서 </span>		                    	
		</div>
        
    <div class="w3-row content es_padding_20" id="print" >   <!-- 여기부터 캡쳐 -->
      <div class=" es_border_gray es_padding_16">       
             <div class="w3-row es_row es_center es_margin_60">
       			<div class="w3-col l12  m12  s12  es_size_30 es_text_lineheight_30 es_padding_10">구매 발주서</div>
            </div>

			<div class="w3-row  es_margin">
				<div class="w3-col l6  m6  s12 es_left     ">
					<div class="w3-row"> 
						<div class="w3-col l6 m12  s12 es_center es_padding_left_20  es_size_20">${companyList.companyName}</div>
						<div class="w3-col l4 m12  s12 es_left    es_size_20 es_bold "> 귀하</div>
					</div>
					<div class="es_margin_20"></div>
					<div class="w3-row"> 
						<div class="w3-col l3 m12  s12 es_right     ">대 표 자 :</div>
						<div class="w3-col l9 m12  s12 es_padding_left">${companyList.companyCeo}</div>
					</div>
					<div class="w3-row"> 
						<div class="w3-col l3 m12  s12 es_right   ">주 소 :</div>
						<div class="w3-col l9 m12  s12 es_padding_left     "> ${companyList.companyAddress} </div>
					</div>
					
					<div class="w3-row"> 
						<div class="w3-col l3 m12  s12   es_right   ">담 당 자 :</div>
						<div class="w3-col l9 m12  s12  es_padding_left    "> ${companyList.companyStaff} </div>
					</div>
					
					<div class="w3-row"> 
						<div class="w3-col l3 m12  s12   es_right   ">전 화 :</div>
						<div class="w3-col l9 m12  s12  es_padding_left    "> ${companyList.companyTel} </div>
					</div>

					<div class="w3-row"> 
						<div class="w3-col l3 m12  s12    es_right  ">발 주 번 호 :</div>
						<div class="w3-col l9 m12  s12  es_padding_left    "> ${codeNum}</div>
					</div>
				</div>  
				
				<div class="w3-col l6  m6  s12 es_left    ">
					<div class="w3-row"> 
						<div class="w3-col l12 m12  s12 es_center es_size_20 es_bold ">(주)이지디에스</div>
					</div>
					<div class="es_margin_20"></div>
					<div class="w3-row "> 
						<div class="w3-col l3 m12  s12  es_right    ">대 표 자 :</div>
						<div class="w3-col l9 m12  s12  es_padding_left    "> 최 한 호 </div>
					</div>
					<div class="w3-row"> 
						<div class="w3-col l3 m12  s12  es_right    ">사업자 번호 :</div>
						<div class="w3-col l9 m12  s12   es_padding_left   "> 215-87-24639 </div>
					</div>
					
					<div class="w3-row"> 
						<div class="w3-col l3 m12  s12  es_right    ">주 소 :</div>
						<div class="w3-col l9 m12  s12  es_padding_left    "> 서울 송파 법원로 11길 11 A동 1405호</div>
					</div>
					
					<div class="w3-row"> 
						<div class="w3-col l3 m12  s12  es_right    ">담 당 자 :</div>
						<div class="w3-col l9 m12  s12  es_padding_left    "> 조 정 호</div>
					</div>

					<div class="w3-row"> 
						<div class="w3-col l3 m12  s12  es_right    ">전 화 :</div>
						<div class="w3-col l9 m12  s12   es_padding_left   ">  070-7733-7774</div>
					</div>
				</div>  

			</div>
			<div class="es_margin_40"></div>
		   <table class="table">
			<thead>
				<tr>
					<th>No</th>
					<th>코드</th>
					<th>품목명</th>
					<th>대체 품목명</th>					 
					<th>단위</th>
					<th>단가</th>
					<th>수량</th>
					<th>금액</th>
					<th>납기일</th>
					<th>비고</th>
				</tr>
			</thead>
			
			 <c:forEach var="result" items="${orderList}" varStatus="status">
			 <tbody id = "tableBody">
			         <tr >
			           <td  >${status.count}</td>
			           <td  >${result.orderCode}</td>
			           <td  >${result.orderSpec}</td>
			           <c:if test="${result.orderSubSpec ne 'No results'}">
			           <td  >${result.orderSubSpec}</td>
			      	   </c:if>
			      	   <c:if test="${result.orderSubSpec eq 'No results'}">
			           <td></td>
			      	   </c:if>
			           <td  >${result.orderUnit}</td>
			           <td  >${result.orderPrice}</td>
			           <td  >${result.orderQty}</td>
			           <td  >${result.orderTotalPrice}</td>
			           <td  >${result.orderDueDate}</td>
			           <td  >${result.orderComment}</td>
			         </tr>
			         <c:set var= "total" value="${total + result.orderTotalPrice}"/>
		  		</c:forEach>  
            </tbody>
		  </table>
			
			 <hr class="sidebar-divider es_margin_60">
			 <div class="w3-row  es_margin">
				<div class="w3-col l12  m12  s12 es_left ">
					<div class="es_margin_20"></div>
					<div class="w3-row"> 
						<div class="w3-col l9 m12  s12 es_right">합 계 :</div>
						<div class="w3-col l3 m12  s12 es_padding_left">
						<fmt:formatNumber type="currency" maxFractionDigits="0"  value="${total}" />
						</div>
					</div>
					<div class="w3-row"> 
						<div class="w3-col l9 m12  s12 es_right">부 가 세 :</div>
						<div class="w3-col l3 m12  s12 es_padding_left">
						<fmt:formatNumber type="currency" maxFractionDigits="0"  value="${total/10}" />
						</div>
					</div>
					
					<div class="w3-row"> 
						<div class="w3-col l9 m12  s12   es_right">총 합 계 :</div>
						<div class="w3-col l3 m12  s12  es_padding_left">
						<fmt:formatNumber type="currency" maxFractionDigits="0"  value="${total + total/10}" />
						</div>
					</div>
				</div>  
			</div>
			
			
 	</div>
		
	 
</div>	

<div class="w3-row es_center es_padding_30">
            <button type="button" class="btn btn-primary" onclick="printPage()" >print</button>
            <button type="button" class="btn btn-primary" onclick="" >PDF download</button>
            <button type="button" class="btn btn-secondary" onclick="javascript: self.close();" >Close</button>
	 </div>


</div>


</body>

<script type="text/javascript">
//<![CDATA[
function printPage(){
 var initBody;
 window.onbeforeprint = function(){
  initBody = document.body.innerHTML;
  document.body.innerHTML =  document.getElementById('print').innerHTML;
 };
 window.onafterprint = function(){
  document.body.innerHTML = initBody;
 };
 window.print();
 return false;
}
//]]>
</script>

</html>    