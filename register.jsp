<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML >
<html>
	<head>
		<title>注册用户</title>
		<jsp:include page="common/common.jsp"/>
		<script type="text/javascript" src="js/common/register.js"></script>

	</head>

	<body style="background-image: url('../image/102.jpg');
	background-repeat:no-repeat ;background-size:100% 100%;background-attachment: fixed;">
		<div align="center">
			<div id="top">
				<jsp:include page="head.jsp"/>
			</div>
			<p>
			<div>
				<a id="img-link" href="index.jsp"> <img src="image/logo.jpg" border="0"/> </a>
			</div>
			<div style="width: 80%; height: 60%">
				<form action="register" method="post" id="register">
					<div align="center">
						<div
							style="background-color: #18fffc; height: 14px; font-size: 14px;padding-left: 60%;">
							<span>*</span>表示必须填写
						</div>
						<div style="float: left">
							<img src="image/1100.png">

						</div>
						<div>
						<font color="red">${status}</font>
						<p>
							<label>
								&nbsp;&nbsp;用户名：
								<span>*</span>
							</label>
							<input type="text" name="uname" value="${uname }"
								class="required" maxlength="50" minlength="3">
						<p>
							<label>
								登陆密码：
								<span>*</span>
							</label>
							<input id="passwd" type="password" name="passwd" class="required"
								maxlength="50" minlength="3">
						<p>
							<label>
								确认密码：
								<span>*</span>
							</label>
							<input id="passwd1" type="password" name="passwd1"
								class="required" maxlength="50" minlength="3">
						<p>
							<label>
								电子邮箱：
								<span>*</span>
							</label>
							<input type="text" name="email" class="email" maxlength="50"
								minlength="7">
						<p>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input class="submit" type="submit" value="注  册">
						</div>
					</div>
				</form>
			</div>
			<div id="foot">
				<jsp:include page="foot.jsp"/> 
			</div>
		</div>
	</body>
</html>
