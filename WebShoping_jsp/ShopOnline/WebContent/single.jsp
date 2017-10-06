<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Single Page</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/custom.css" rel="stylesheet" type="text/css" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Bonfire Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!--fonts-->
<link
	href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!--slider-script-->
<script src="js/responsiveslides.min.js"></script>
<script>
	$(function() {
		$("#slider1").responsiveSlides({
			auto : true,
			speed : 500,
			namespace : "callbacks",
			pager : true,
		});
	});
</script>
<!--//slider-script-->
<script>
	$(document).ready(function(c) {
		$('.alert-close').on('click', function(c) {
			$('.message').fadeOut('slow', function(c) {
				$('.message').remove();
			});
		});
	});
</script>
<script>
	$(document).ready(function(c) {
		$('.alert-close1').on('click', function(c) {
			$('.message1').fadeOut('slow', function(c) {
				$('.message1').remove();
			});
		});
	});
</script>
</head>
<body>

	<%
		ProductDAO productDAO = new ProductDAO();
		Product product = new Product();
		String product_id = "";
		if (request.getParameter("product") != null) {
			product_id = request.getParameter("product");
			product = productDAO.getProductByID(Long.parseLong(product_id));
		}
	%>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<div class="single">
			<div class="col-md-12 top-in-single">
				<div class="col-md-5 single-top">
					<ul id="etalage">
						<li><a href="optionallink.html"> <img
								class="etalage_thumb_image img-responsive" src="<%=product.getProductImage() %>"
								alt="">

						</a></li>

					</ul>

				</div>
				<div class="col-md-7 single-top-in">
					<div class="single-para">
						<% %>
						<h4>Thông tin chi tiết sản phẩm</h4>
						<p>Tên sản phẩm: <%=product.getProductName()%></p>
						<div class="para-grid">
						
							<span class="add-to">Giá: $<%=product.getProductPrice() %></span> 
							<a href="#" class="hvr-shutter-in-vertical cart-to">Thêm vào giỏ</a>
							<div class="clearfix"></div>
						</div>
						
						<div class="available">
							<h6>Tùy chọn sẵn có :</h6>
							<ul>
								<li>Màu sắc: <select>
										<option>Bạc</option>
										<option>Đeb</option>
										<option>Đen bóng</option>
										<option>Đỏ</option>
								</select></li>
								<li>Kích cỡ:<select>
										<option>L</option>
										<option>M</option>
										<option>S</option>
										<option>SL</option>
										<option>SM</option>
								</select></li>
								<li>Chất lượng:<select>
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
								</select></li>
							</ul>
						</div>
						<p><%=product.getProductDescription() %></p>

						<a href="#" class="hvr-shutter-in-vertical ">Xem thêm thông tin</a>
						

					</div>
				</div>


			</div>

			<div class="clearfix"></div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>