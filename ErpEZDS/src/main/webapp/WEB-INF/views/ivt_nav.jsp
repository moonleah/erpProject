<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<style>

#nav_menu ul {
 list-style-type:none;
 background-color:#4e73df;
 padding:5px 5px 5px 5px;
 float:right;
 border-radius: 20px;
}

 

#nav_menu ul li {
 display:inline;
 border-left: 1px solid #c0c0c0;
 padding: 0px 10px 0px 10px;
 margin: 5px 0px 5px 0px;
 color:#ffffff;
 font-size:9pt;
}

 

#nav_menu ul li:first-child {
 border-left: none;
}

 

/* 특별하게 정해지지 않은 링크 속성에 모두 적용할 스타일 : 흰글씨 / 밑줄없앰 */
#nav_menu a {
 text-decoration:none;
 color:#ffffff
}

 

/* 링크에 마우스 롤오버시 적용되는 스타일 : 하단에 노란 밑줄이(border-bottom) 생김 */
#nav_menu a:hover {
 color:#D4F4FA;
 border-bottom:1px solid #FFF;
}




</style>

 

<div id="nav_menu">
<ul>
<li><a href="/user/ivt">재고</a></li>
<li><a href="/user/icm">입고</a></li>
<li><a href="/user/out">출고</a></li>
</ul>
</div>


 

