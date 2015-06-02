<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function pass_check(){

	if(document.getElementById("pass").value==document.getElementById("pass_confirm").value){
		alert("비밀번호가 일치합니다.");
	}
	else {
		alert("비밀번호가 일치하지 않습니다.");
		pass_confirm.focus();
		
	}
	
}
</script>
</head>
<body>
<form method="Get" action="./UserServlet">
<div>
ID:<input type="text" id="join_id" name="join_id">
</div>
<div>
PASS:<input type="password" id="pass" name="pass">
Confirm:<input type="password" id="pass_confirm" name="pass_confirm">
<input type="button" onclick="pass_check()" value="비밀번호확인">
</div>
<div>
<input type="submit" value="Join">
<input type="reset" value="Cancel">
</div>
</form>
</body>
</html>