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
<script type="text/javascript">
int i = 0;
function star(){
	
	i++;
	
	alert(i);
}
$(document).ready(function()
		
		//생성하는거
		$('#super').hide(); //초기에 입력버튼 숨기기위해 숨김.
		$("#comment").click(function(){
	       $("#super").toggle();
	    });
		});


</script>
</head>
<body>
<div id="main">
		<div class="panel-group" id="accordion">
<!-- 패널 +부분 -->		
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseAdd">+</a>
      </h4>
    </div>
    <div id="collapseAdd" class="panel-collapse collapse">
      <div class="panel-body">
        <div class="input-group" id="aa">
      <input type="text" class="form-control" id=writer_input>
      <input type="text" class="form-control" id=title_input>
      <textarea class="form-control" rows="3" id=content_input></textarea>
      <div>
      <span class="input-group-btn">
      <button class="btn btn-primary btn-md" type="submit" onclick="insertDatas()" id="submit">Submit</button>
      <button class="btn btn-primary btn-md" type="reset" id="cancel">Cancel</button>
      </span>
      </div>
    </div><!-- /input-group -->
      </div>
    </div>
  </div>		
		<!--게시글 보여주는 구간 흠       -->
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
          <img src="./img1.JPG" width="32" height="32" class="thmub_img"  alt=""/>
          	장성룡
          2015.05.18
              <img src="./star.png" width="32" height="32" class="thmub_img"  alt="" title="50" align="right">
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in">
      <div class="panel-body">
        저는 오이라고합니다 
        <nav>
  			<a href="#">좋아요</a>
  			<a href="#" id="comment">댓글달기</a>
 
  		</nav>
      </div>
       <form class="navbar-form navbar-left" >
     
        <div class="form-group" >
   <input type="text" class="form-control" value="댓글을 입력하세요" width="70%;">
   </div>
   <input type="submit" value="전송" class="btn btn-default">
   </form>
    </div>
    <div>
      <div>
       
   <div class="well well-sm">
<img src="./img1.JPG" width="32" height="32" class="thmub_img"  alt=""/>
          	장성룡
          아아아아아아아아아아아아아아
</div>
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">

        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
              <img src="./img2.JPG" width="32" height="32" class="thmub_img"  alt=""/>
          최석준
  2015.05.18
    <img src="./star.png" width="32" height="32" class="thmub_img"  alt="" title="20" align="right">
    	 
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse">
      <div class="panel-body">
       이런식으로 글을 입력하긴 할건데 여기 그림추가하는 건 file API를 사용해야하더라고.
   <form>
   <input type="text" value="댓글을 입력하세요">
   <input type="submit" value="전송">
   </form>          
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
          <img src="./img3.jpg" width="32" height="32" class="thmub_img"  alt=""/>
          신예림
  2015.05.18
  <img src="./star.png" width="32" height="32" class="thmub_img"  alt="" title="500" align="right">
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse">
      <div class="panel-body">
        get방식으로 메소드를 받아 다시 카테고리를 추가하는부분 난해난해
        <nav>
  <a href="#" onclick ="star()" value = "좋아요">
  <a href="/css/">댓글달기</a>
 
  		</nav>
      </div>
    </div>
  </div>
</div>
</div>
</body>
</html>