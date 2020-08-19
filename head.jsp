<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML >
<html>
	<head>
		<title>硕果满园网！！！！</title>
		<link rel="stylesheet" type="text/css" href="css/styles.css">
	</head>
	<body>
		<div>
			<%
				if (session.getAttribute("uname") == null
						|| session.getAttribute("uname").equals("")) {
			%>

			<a href="login.jsp">登录</a>
			<a href="register.jsp">免费注册</a>
			<%
				} else {
			%>
			您好
			<a href="shoppingcart?action=lookbus"> <font><%=session.getAttribute("uname")%></font>
			</a>，硕果满园网欢迎您的光临！
			<a href="login?action=logout">注销</a>
			<%
				}
			%>
			<a href="index.jsp">我要买</a>
			<img src="image/buslogo.jpg" border="0"/>
			<a href="shoppingcart?action=lookbus">购物车</a>
			<img src="image/homelogo.jpg" border="0"/>
			<a href="shoppingcart?action=paid">已淘到的宝贝</a>
		</div>
	</body>
</html>
