<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="w3-row content es_padding_20 modal fade" id="specAdd" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">  
    <div class="modal-dialog modal-xl">
	    <div class="modal-content">
	     <div class="modal-body">
	     	<h1 class="h3 mb-2 text-gray-800">PRODUCT replacement ADD</h1>      
					<div>	
						<div class="w3-col l2  m6  s12 es_label"> SPEC</div> 
						<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="subSpecName"  name="subSpecName" placeholder="subSpec"></div>
						<div class="w3-col l2  m6  s12 es_label">MAKER</div> 
						<div class="w3-col l4  m6  s12"><input class="es_input inputField" type="text"  id="subSpecMaker"  name="subSpecMaker" placeholder="subSpecMaker"></div>
					</div>
		 </div>
			     	 <div class="modal-footer">
          				<button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
          				<button type="button" class="btn btn-primary" onclick="specInsert()" >Insert</button>
        			</div>
			  
	  </div>
	 </div>
</div>	


<script type="text/javascript">
		function specInsert(){
			var param = new Object();
			param.subSpecPrdNo 				= '${product.prdNo}';
			param.subSpecMaker 				= $('#subSpecMaker').val();
			param.subSpecName 				= $('#subSpecName').val();
			var delConfirm = confirm('Are you sure??? ')
			if(delConfirm){
					$.ajax({
				        url : "/user/productSpecInsert",
				        data : param,
				        type : 'post',
				        success : function(data){
				        	alert("insert success");
				        	location.reload();
				        },
				        error : function(){
				            alert("error");
				        }
				 		})
				}
		}

</script>

