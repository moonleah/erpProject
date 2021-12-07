<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="content">
    <!-- Begin Page Content -->
    <div class="container-fluid">
       <!-- Page Heading -->
       <h1 class="h3 mb-2 text-gray-800">Z5 주문 조회</h1>
	
		  <div class="card shadow">  
			<!-- Tab Start -->
				<ul class="nav nav-tabs">
				  <li class="nav-item">
				    <a class="nav-link active" data-toggle="tab" href="#qwe">전체</a>
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
				</ul>
			<!-- Tab End -->
			<!-- Tab content Start -->		
				<div class="tab-content">
				  <div class="tab-pane fade show active" id="qwe">
				    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id ornare libero. Vivamus iaculis, justo vel mattis pharetra, nisi ligula varius nisl, sit amet mollis tortor ligula vitae nisi.</p>
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