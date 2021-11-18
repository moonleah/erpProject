<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>

</style>

<div class="modal fade bd-example-modal-xl" id="detailModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
     <div class="modal-body">
     	<h1 class="h3 mb-2 text-gray-800">Welcome EZDS Detail modal</h1>
		   <!-- Collapsable Card Example -->
           <div class="card shadow">
              <!-- Card Header - Accordion -->
                <a href="#productDesc" class="d-block card-header py-3" data-toggle="collapse"
                    role="button" aria-expanded="true" aria-controls="productDesc">
                    <h6 class="m-0 font-weight-bold text-primary">부품상세설명</h6>
                </a>
                <!-- Card Content - Collapse -->
                <div class="collapse show" id="productDesc">
                    <div class="card-body">
                     	<div class="input-group col-md-12 ml-auto">
						  <div class="input-group-prepend col-md-6 ml-auto">
						     <span class="input-group-text" id="basic-addon1">prdNO</span>
						  	 <input type="text" class="form-control" placeholder="productNo" aria-label="productNo" aria-describedby="basic-addon1" value="1231554">
						  </div>
						  <div class="input-group-prepend col-md-6 ml-auto">
						     <span class="input-group-text" id="basic-addon1">prdNO</span>
						  	 <input type="text" class="form-control" placeholder="productNo" aria-label="productNo" aria-describedby="basic-addon1" value="1231554">
						  </div>
						</div>
						
						<div class="input-group col-md-12 ml-auto">
						  <div class="input-group-prepend col-md-6 ml-auto">
						     <span class="input-group-text" id="basic-addon1">prdNO</span>
						  	 <input type="text" class="form-control" placeholder="productNo" aria-label="productNo" aria-describedby="basic-addon1" value="1231554">
						  </div>
						  <div class="input-group-prepend col-md-6 ml-auto">
						     <span class="input-group-text" id="basic-addon1">prdNO</span>
						  	 <input type="text" class="form-control" placeholder="productNo" aria-label="productNo" aria-describedby="basic-addon1" value="1231554">
						  </div>
						</div>
						
						<div class="input-group col-md-12 ml-auto">
						  <div class="input-group-prepend col-md-6 ml-auto">
						     <span class="input-group-text" id="basic-addon1">prdNO</span>
						  	 <input type="text" class="form-control" placeholder="productNo" aria-label="productNo" aria-describedby="basic-addon1" value="1231554">
						  </div>
						  <div class="input-group-prepend col-md-6 ml-auto">
						     <span class="input-group-text" id="basic-addon1">prdNO</span>
						  	 <input type="text" class="form-control" placeholder="productNo" aria-label="productNo" aria-describedby="basic-addon1" value="1231554">
						  </div>
						</div>
						
						<div class="input-group col-md-12 ml-auto">
						  <div class="input-group-prepend col-md-6 ml-auto">
						     <span class="input-group-text" id="basic-addon1">prdNO</span>
						  	 <input type="text" class="form-control" placeholder="productNo" aria-label="productNo" aria-describedby="basic-addon1" value="1231554">
						  </div>
						  <div class="input-group-prepend col-md-6 ml-auto">
						     <span class="input-group-text" id="basic-addon1">prdNO</span>
						  	 <input type="text" class="form-control" placeholder="productNo" aria-label="productNo" aria-describedby="basic-addon1" value="1231554">
						  </div>
						</div>
						
					
				
					
                    </div>
                </div>
            </div>
               <!-- Collapsable Card Example -->
           <div class="card shadow">
              <!-- Card Header - Accordion -->
                <a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse"
                    role="button" aria-expanded="true" aria-controls="collapseCardExample">
                    <h6 class="m-0 font-weight-bold text-primary">[부품NO]입고리스트</h6>
                </a>
                <!-- Card Content - Collapse -->
                <div class="collapse show" id="collapseCardExample">
                   <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        	<!-- <th>No</th> -->
                                        	<th>PART Number</th>
  											<th>PART DESC</th>
                                            <th>입고수량(Total)</th>
                                            <th>가격</th>
                                            <th>발주날짜</th>
                                            <th>입고날짜</th>
                                            <th>회사</th>
                                            <th>비고</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody id = "tableBody">
									         <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                </div>
            </div>
               <!-- Collapsable Card Example -->
           <div class="card shadow">
              <!-- Card Header - Accordion -->
                <a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse"
                    role="button" aria-expanded="true" aria-controls="collapseCardExample">
                    <h6 class="m-0 font-weight-bold text-primary">[부품NO]출고리스트</h6>
                </a>
                <!-- Card Content - Collapse -->
                <div class="collapse show" id="collapseCardExample">
                   <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable2" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        	<!-- <th>No</th> -->
                                        	<th>PART Number</th>
  											<th>PART DESC</th>
                                            <th>입고수량(Total)</th>
                                            <th>가격</th>
                                            <th>발주날짜</th>
                                            <th>입고날짜</th>
                                            <th>회사</th>
                                            <th>비고</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody id = "tableBody">
									         <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
									            <tr >
									           <th  >1</th>
									           <th  >2</th>
									           <th  >3</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									           <th  >4</th>
									          </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                </div>
            </div>
            
            <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
      		</div>
		</div>
    </div>
  </div>
</div>

<script>
$(document).ready(function() {
	  $('#dataTable').DataTable();
	  $('#dataTable2').DataTable();
	});

</script>
