
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
		<a href="#"
			class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
			<i class="fas fa-download fa-sm text-white-50"></i> Generate Report
		</a>
	</div>
	<div>
		<p>
			principal :
			<sec:authentication property="principal" />
		</p>
		<p>
			userVO :
			<sec:authentication property="principal.username" />
		</p>

		<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANAGER')">
			<p>매니저 및 어드민</p>
		</sec:authorize>
		<sec:authorize access="hasAnyRole('ROLE_USER')">
			<p>user</p>
		</sec:authorize>

	</div>

</div>
<!-- End of Main Content -->