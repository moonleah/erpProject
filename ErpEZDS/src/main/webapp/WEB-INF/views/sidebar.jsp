 <%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
  <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
    
        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
                <div class="sidebar-brand-icon rotate-n-15">
               <i class="fas fa-car"></i>
                </div>
                <div class="sidebar-brand-text mx-3">EZDS Admin<sup>erp</sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
          <!--   <li class="nav-item ">
                <a class="nav-link" href="/" >
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>ERP Dashboard</span></a>
            </li> -->

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Information
            </div>


            <!-- Nav Item - Tables -->
            <li class="nav-item" >
                <a class="nav-link" href="/user/company">
                    <i class="far fa-building"></i>
                    <span>거래처</span></a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="/user/productList">
                    <i class="fas fa-fw fa-table"></i>
                    <span>품목</span></a>
            </li>
           <!--  <li class="nav-item ">
                <a class="nav-link" href="/user/order_normal">
                    <i class="fas fa-fw fa-table"></i>
                    <span>구매 요청</span></a>
            </li> -->
            
            
             <!-- Divider -->
            <hr class="sidebar-divider">
            <!-- Heading -->
            <div class="sidebar-heading">
                창고
            </div>
             
            <!--  <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>주문관리</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">원자재 주문:</h6>
                        <a class="collapse-item" href="/user/order">주문서작성</a>
                        <a class="collapse-item" href="/user/orderEntry">주문현황</a>
                    </div>
                </div>
            </li> -->
           
             <li class="nav-item">
                <a class="nav-link" href="/user/order">
                    <i class="fas fa-fw fa-table"></i>
                    <span>주문서 작성</span></a>
            </li>
             <li class="nav-item">
                <a class="nav-link" href="/user/orderEntry">
                    <i class="fas fa-fw fa-table"></i>
                    <span>주문 현황</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/user/ivt">
                    <i class="fas fa-fw fa-table"></i>
                    <span>재고</span></a>
            </li>

        <!--     <li class="nav-item">
                <a class="nav-link" href="/user/icm">
                    <i class="fas fa-fw fa-table"></i>
                    <span>원자재 입고</span></a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="/user/out">
                    <i class="fas fa-fw fa-table"></i>
                    <span>원자재 출고</span></a>
            </li> -->
<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANAGER')">   
          <li class="nav-item">
           <a class="nav-link" href="#">
          <span>role_admin/manager</span>
          </a>
          </li>   
</sec:authorize>             <!-- 권한에 따른 메뉴 보여짐 -->

<sec:authorize access="hasAnyRole('ROLE_USER')">
           <li class="nav-item">
           <a class="nav-link" href="#">
          <span>role_user</span>
          </a>
          </li>   
</sec:authorize>             <!-- 권한에 따른 메뉴 보여짐 -->
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle" onclick="toggleFunc()"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->
        
        
        
<script>

</script> 