<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>EZDS Admin</title>
   <%@ include file="include.jsp" %>
</head>

<body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">
		 <%@ include file="sidebar.jsp" %>
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
	  <%@ include file="nav.jsp" %>  
            <!-- Main Content -->
            <%@ include file="main_content.jsp" %>
            
	 	<%@ include file="footer.jsp" %> 
        </div>
        <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->


    <!-- Logout Modal-->
	<%@ include file="modal/logoutModal.jsp" %>
	

	</body>
</html>