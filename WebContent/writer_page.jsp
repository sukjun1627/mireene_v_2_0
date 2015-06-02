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
<div>
 <div>
  <!-- /input-group depth-1 -->
  <div class="col-md-2" id="left-side-menu">
		<div class="list-group" id="sub_menu">
  <a href="#" class="list-group-item active">1-Depth</a>

 
  <div>
  <a href="#" class="list-group-item" id="prr"><center>+</center></a>
  </div>
    <div class="input-group" id="asd" >
      <input type="text" class="form-control" id=txtID>
      <span class="input-group-btn">
        <button class="btn btn-primary btn-md" type="button" onclick="insertData()" id="sub_btn">Add</button>
    </span>
    </div>  
</div>
</div>

<!-- /input-group depth-2 -->
	<div class="col-md-2" id="left-side-menu">
			<div class="list-group" id="sub_menu">
  	<a href="#" class="list-group-item active">2-Depth</a>

 
  	<div>
  	<a href="#" class="list-group-item" id="prr"><center>+</center></a>
  	</div>
    	<div class="input-group" id="asd" >
      	<input type="text" class="form-control" id=txtID>
      	<span class="input-group-btn">
        	<button class="btn btn-primary btn-md" type="button" onclick="insertData()" id="sub_btn">Add</button>
    	</span>
    	</div>  
	</div>
	</div>

<!-- /input-group depth-3 -->

	<div>
	<div class="col-md-2" id="left-side-menu">
		<div class="list-group" id="sub_menu">
  	<a href="#" class="list-group-item active">3-Depth</a>

 
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
</div>
<div>
<p>
<div class="col-mid-2" id="write">
  <div class="input-group" id="aa">
  <form action="insert.do" method="post" enctype="multipart/form-data" onsubmit="return formCheck();">
      <input type="text" class="form-control" id=title_input value="제목">
      <textarea class="form-control" rows="3" id=content_input value="내용"></textarea>
      <input type="file" name="filename"><br/>
      <div>
      <span class="input-group-btn">
      <a href="./Mainpage.html"><button class="btn btn-primary btn-md" type="submit" onclick="insertDatas()" id="submit">Submit</button></a>
      <button class="btn btn-primary btn-md" type="reset" id="cancel">Cancel</button>
      </span>
      </div>
      </form>
    </div>
    </div>
</div>
</div>
</div>
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>