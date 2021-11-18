<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>EZDS INVENTORY</title>
   
</head>

<body id="page-top">
<%@ include file="../include.jsp" %>
    <!-- Page Wrapper -->
    <div id="wrapper">
		 <%@ include file="../sidebar.jsp" %>
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
	  		<%@ include file="../nav.jsp" %>  
            <!-- Main Content -->
            <%@ include file="ivt_content.jsp" %>
            
	 	<%@ include file="../footer.jsp" %> 
        </div>
        <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->
    <!-- Logout Modal-->
	<%@ include file="../modal/logoutModal.jsp" %>
   
</body>

</html>