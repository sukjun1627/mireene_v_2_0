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
	<div id="left-side-menu">
		<div class="list-group" id="sub_menu">
  <a href="#" class="list-group-item active">Mr. Chef</a>
  <a href="#" class="list-group-item">Girlfriend</a>
  <a href="#" class="list-group-item">먹거리</a>
  <a href="#" class="list-group-item">웹프로그래밍</a>
 
  <div>
  <a href="#" class="list-group-item" id="prr"><center>+</center></a>
  </div>
    <div class="input-group" id="asd" >
      <input type="text" class="form-control" id=txtID>
      <span class="input-group-btn">
        <button class="btn btn-primary btn-md" type="button" onclick="insertData()" id="sub_btn">Add</button>
    </span>
    </div><!-- /input-group -->
  
</div>
</div>
</body>
</html>