<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
	// ���������� ���̷�Ʈ�� ��û�� ������ �������� �ƴϴ�.
	// ��򰡿��� center ���� �����̵Ȼ��·� �������� �Ǿ���� ���� �۵��� �Ұ��̴�.
	String top="header.jsp";
	String center=(String)request.getAttribute("center");
	String bottom ="";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
 
<style type="text/css">
#wrap{width:1000px; height:800px; background:blue;}
#header{width:900px; height:65px; margin-left:50px; margin-bottom:10px; background:yellow;}
#middle{width:1000px; float:left; background:black;}
#sidebar{width:200px;height:500px; float:left; margin-left:50px; margin-right:10px; background:gray;}
#content{width:700px; height:500px;float:left; background:red;}
#footer{width:900px; height:130px; float:left; margin-left:50px; margin-top:10px; background:orange;}
</style>
 
</head>
<body>

<div id="wrap">
   <div id="header">
   <jsp:include page="header.jsp" />
   </div>
   <div id="middle">
       <div id="sidebar">
       <jsp:include page="side_menu.jsp" />
       </div>
       <div id="content">
       <jsp:include page="content.jsp" />
       </div>
   </div>
   <div id="footer">footer</div>
</div>

</body>
</html>