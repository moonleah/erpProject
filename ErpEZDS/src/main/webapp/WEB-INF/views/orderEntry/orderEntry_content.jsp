<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>  

@keyframes gradient {  
    0% {  
        background-position: 0% 50%;  
    }  
    50% {  
        background-position: 100% 50%;  
    }  
    100% {  
        background-position: 0% 50%;  
    }  
}  

</style>

 <div class="card shadow">  
<h2> Bootstrap4 Tab Example </h2>  
<ul class="nav nav-tabs" role="tablist">  
  <li class="nav-item">  
    <a class="nav-link active" data-toggle="tab" href="#home" role="tab"> Home </a>  
  </li>  
  <li class="nav-item">  
    <a class="nav-link" data-toggle="tab" href="#profile" role="tab"> Profile </a>  
  </li>  
  <li class="nav-item">  
    <a class="nav-link" data-toggle="tab" href="#messages" role="tab"> Messages </a>  
  </li>  
  <li class="nav-item">  
    <a class="nav-link" data-toggle="tab" href="#settings" role="tab"> Settings </a>  
  </li>  
</ul>  
    <div class="tab-content">  
    <div class="tab-pane" id="profile" role="tabpanel">  
      <h1> User Profile </h1>  
      <table>  
      <thead class="thead-inverse">  
        <tr>  
          <th> </th>  
          <th> User </th>  
          <th> Description </th>  
          <th> Order Details </th>  
          <th> Date </th>  
          <th> Payment </th>  
        </tr>  
      </thead>  
      <tbody>  
        <tr>  
          <td><input type="checkbox" class="check"></td>  
          <td>  
            <div class="chip-user d-flex flex-items-md-middle">  
              <div class="chip-user__img mr-1">  
                <img src="1.png"  
                     class="img-circle">  
              </div>  
              <div class="chip-username">  
                <span class="real-name d-block"> My Name </span>  
                <span class="alias-name d-block"> Other Name </span>  
              </div>  
            </div>  
          </td>  
          <td class="text-primary text-bold"> Amazon </td>  
          <td class="text-primary text-bold"> #1234 </td>  
          <td> 1/8/2018 </td>  
          <td> <i class="fa fa-cc-paypal"> </i> </td>  
        </tr>  
    </tbody>  
      </table>  
    </div>  
    <div class="tab-pane" id="messages" role="tabpanel">  
      <h1> Messages </h1>  
      <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>  
      <hr />  
      <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>  
    </div>  
    <div class="tab-pane" id="settings" role="tabpanel">  
      <h1> Settings </h1>  
      <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>  
    </div>  
  </div>  
</div>