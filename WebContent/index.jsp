<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="input-group" id="Account" align="center" >
    <h1>미리내</h1>
    <div class="col-sm-9">
    <form method="GET" action="./LoginServlet">
    <div class=".col-md-4">
      <input type="text" class="form-control" id=txtID placeholder="UserID">
    </div>
    <div class=".col-md-4">
      <input type="password" class="form-control" id=Password>
    </div>
    <span class="input-group-btn">
        <a href="Mainpage.html"><input type="submit" class="btn btn-primary btn-md" value="접속"></a>
        <a href="Register_page.html"><button class="btn btn-primary btn-md" type="button">회원가입</button></a>
        
    </span>
    </form>
    
    <div>
    <a href="Facebook.html"><img src="./F-logo.png" width="32" height="32" class="thmub_img"  alt=""/></a>
    <a href="Instargram.html"><img src="./I-logo.png" width="32" height="32" class="thmub_img"  alt=""/></a>
    <a href="Twitter.html"><img src="./T-logo.png" width="32" height="32" class="thmub_img"  alt=""/></a>
    </div>
    
    </div>
    </div>
</body>
</html>