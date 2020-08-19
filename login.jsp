<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML >
<html>
	<head>
		<title>硕果满园网！！！！！！</title>
		<jsp:include page="common/common.jsp"/>
		<script type="text/javascript" src="js/common/login.js"></script>
	</head>

	<body style="background-image: url('../image/102.jpg');
	background-repeat:no-repeat ;background-size:100% 100%;background-attachment: fixed;">
		<div align="center" style="height: 100%">
			<div id="top">
				<jsp:include page="head.jsp"></jsp:include>
			</div>
			<%--<div>--%>
				<%--<a id="img-link" href="index.jsp"></a>--%>
			<%--</div>--%>
			<div style="width: 100%;height: 60%" >
				<%--<img src="image/loginlogo.jpg" align="left"--%>
					<%--style="padding-left: 25%;margin-top: 100px" border="0"/>--%>
				<br><br><br><br>
				<div id="loginbg" align="center">
					<div align="center">
						<div style="float: left">
							<img src="image/1101.png">
						</div>
						<form action="login" method="post" id="login" align="center">
							<table width="300px" align="center" style="color:#0717ff;margin-top: 130px">
								<tr>
									<td colspan="2">
										<font color="red" size="5">${status}</font>
									</td>
								</tr>
								<tr>
									<td>
										<strong>用户名：</strong>
									</td>
									<td>
										<input type="text" name="uname" value="${uname}"
											maxlength="50" minlength="3">
									</td>
								</tr>
								<tr></tr>
								<tr>
									<td width="20%">
										<strong>密&nbsp;&nbsp;码：</strong>
									</td>
									<td width="70%">
										<input type="password" name="passwd" maxlength="50"
											minlength="3">
									</td>
								</tr>
								<tr>
									<td colspan="2" align="center">
										<br>
										<input type="hidden" name="action" value="login">
										<input class="submit" type="submit" value="登&nbsp;&nbsp;陆">
										&nbsp;&nbsp;
										<a href="register.jsp">免费注册</a>
									</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
			<div id="foot">
				<jsp:include page="foot.jsp"></jsp:include>
			</div>
		</div>
	</body>
</html>
