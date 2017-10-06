<%@ page language="java" contentType="text/html"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
     $(document).ready(function (){
    	var x_timer;
    	$('#Username').keyup(function(){
    		/* clearTimeout(x_timer); */
    		var user_name = $('#Username').val();
    		/* console.log(user_name); */
    		x_timer = setTimeout(check_username_ajax(user_name), 1000);
    		
    	});
    	
    	function check_username_ajax(username){
    		$('#user_result').html('<img src = "img/ajax-loader.gif" />');
    		$.post('checkUsernameServlet',{'username':username},function(data){
    		/* 	console.log(data); */
    			$('#user_result').html(data);
    			
    		});
    	}
     });
</script>

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="container">
		<div class="account">
			<h2 class="account-in" style="color: blue;">Đăng ký tài khoản</h2>
				<form action="usersServlet" method="post">
				<div>
					<span>Tài khoản* </span>
					<input id="Username" type="text" style="margin-left: 3px;" name = "username"><span id="user_result"></span>
				</div> 	
				<div> 
					<span class="word">Mật khẩu* </span>
					<input id ="Password" type="password" name = "password">
				</div>				
					<input type="hidden" value="insert" name="command">
					<input type="submit" value="Đăng Ký"> 
				</form>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>