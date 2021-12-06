 <%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
    
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
                    <span>Company</span></a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="/user/productList">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Product Part</span></a>
            </li>
            
            
             <!-- Divider -->
            <hr class="sidebar-divider">
            <!-- Heading -->
            <div class="sidebar-heading">
                Inventory
            </div>
             
             <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>ORDER Manage</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Order Management:</h6>
                        <a class="collapse-item" href="/user/order">Order</a>
                        <a class="collapse-item" href="/user/orderEntry">Order Entry</a>
                    </div>
                </div>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="/user/ivt">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Inventory Manage</span></a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="/user/icm">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Part receipt</span></a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="/user/out">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Part release</span></a>
            </li>
            
           
            
          <!--    <li class="nav-item">
                <a class="nav-link" href="/user/getIncomTotalList">
                    <i class="fas fa-fw fa-table"></i>
                    <span>product receipt</span></a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="/user/getIncomTotalList">
                    <i class="fas fa-fw fa-table"></i>
                    <span>product release</span></a>
            </li> -->
            

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