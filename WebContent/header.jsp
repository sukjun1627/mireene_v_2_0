<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<Link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
          
    <a class="navbar-brand" href="#" id="cover"><img src="./poke.jpg" width="32" height="32" class="thmub_img"  alt=""/>최석준</a>
    <div id = "map_canvas"></div>
  </div>
  
    <ul class="nav navbar-nav navbar-right">
         <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">1-depth <b class="caret"></b></a>
        <ul class="dropdown-menu"> 
          <li><a href="#">먹거리</a></li>
          <li><a href="#">Soccer</a></li>
          <li><a href="#">Girlfriends</a></li>
          <li><a href="#">hhhhh</a></li>
        </ul>
      </li>
           <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">2-depth <b class="caret_1"></b></a>
        <ul class="dropdown-menu"> 
          <li><a href="#">Test1</a></li>
          <li><a href="#">Test2</a></li>
          <li><a href="#">Test3</a></li>
          <li><a href="#">Test4</a></li>
        </ul>
      </li>
      <li><a href="index.jsp">Home</a></li>
      <li><a href="writer_page.jsp">글쓰기</a></li>
      <li><a href="option.jsp">설정</a></li>
 
    </ul>
  
</nav>
</body>
</html>