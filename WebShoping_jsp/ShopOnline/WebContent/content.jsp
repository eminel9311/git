<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>
<%@page import="model.Category"%>
<%@page import="dao.CategoryDAO"%>
<%@ page language="java" contentType="text/html"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	CategoryDAO categoryDAO = new CategoryDAO();
	ProductDAO productDAO = new ProductDAO();

%>

	<div class="container">
		<div class="content">
			<div class="content-top">
				<h3 class="future">Điện thoại</h3>
				<% for(Category c : categoryDAO.getListCategory()){ %>
					
					<a class="nav-content" href="product.jsp?category=<%= c.getCategoryID() %>"><%=c.getCategoryName() %></a>
				 <%} %>

			</div>
			
			<div class="content-top-in">
				
				<%
					for(Product p : productDAO.getListProductByCategory(4)){
				%>
					<div class="col-md-3 md-col">
						<div class="col-md">
							<a href="single.jsp?product=<%= p.getProductID()%>"><img src="<%=p.getProductImage()%>" alt="<%=p.getProductName() %>" /></a>
							<div class="top-content">
								<h5>
									<a href="single.html"><%=p.getProductName() %></a>
								</h5>
								<div class="white">
									<a href="single.html"
										class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">Thêm vào giỏ hàng</a>
									<p class="dollar">
										<span class="in-dollar">$</span><span><%=p.getProductPrice() %></span>
									</p>
									<div class="clearfix"></div>
								</div>

							</div>
						</div>
					</div>
					
				
					<%} %>
					
					<div class="clearfix"></div>
				</div>
		
			
		</div>
	</div>

</body>
</html>