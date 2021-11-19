<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="include.jsp" %>

 <div id="wrapper">
<%@ include file="sidebar.jsp" %> 

		 <div id="content-wrapper" class="d-flex flex-column">	
		   <%@ include file="nav.jsp" %>  
			<div id="content">
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Welcome EZDS Index Page</h1>
<!--                     <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
                        For more information about DataTables, please visit the <a target="_blank"
                            href="https://datatables.net">official DataTables documentation</a>.</p>
 -->
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Welcome Index Page</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                      <p>Welcome Index Page </p>

										<%-- 	<c:if test=" ${empty sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal}">
											    --%>
											 	  <a href = "loginForm"><button type="button" class="btn btn-primary"  id="login">Login</button></a>
                                      			  <a href = "registForm">   <button type="button" class="btn btn-primary"  id="register">Create an Account</button></a>
								<%-- 			 
											 </c:if> --%>
											 
					<!-- 	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#detailModal">Launch demo modal</button> -->
                                  
                                     <!-- Logout Modal-->
						<%@ include file="modal/detailModal.jsp" %>
                                  
                            </div>
                        </div>
                    </div>

                </div>
              </div>
              
              <%-- ${sessionScope.SPRING_SECURITY_CONTEXT.authentication.authorities} --%>
                <!-- /.container-fluid -->
			</div>
       </div>
           <!-- Logout Modal-->
	<%-- <%@ include file="modal/logoutModal.jsp" %> --%>
       
<script type="text/javascript">



</script>      
       