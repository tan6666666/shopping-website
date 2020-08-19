<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.eshore.user.goodBean" %>
<%@ page import="com.eshore.pojo.Goods" %>
<!DOCTYPE HTML >
<html>
	<head>
		<title>淘淘网—开心淘！</title>
		<link rel="stylesheet" type="text/css" href="css/styles.css">
	</head>
	<body style="background-image: url('../image/102.jpg');
	background-repeat:no-repeat ;background-size:100% 100%;background-attachment: fixed;">
		<div align="center">
			<div id="top">
				<jsp:include page="../head.jsp"/> 
			</div>
			<p>
			<div id="logoselect">
				<jsp:include page="../logo_select1.jsp"/> 
			</div>
			<div>
				<div style="background-color: #E1F0F0; width: 1000px; height: 35px; font-size: 25px; color: red">
					<table width="1000px">
						<tr>
							<td width="13%">图片</td>
							<td width="21%">产品</td>
							<td width="18%">单价</td>
							<td width="19%">运费</td>
							<td width="18%">型号</td>
							<td >出产地</td>
						</tr>
					</table>
				</div>
				<div id="main">
					<table width="1000px" border="0" id="list">

					    <c:choose>
					    	<c:when test="${empty goods}">
					    		<div align="left">
									<span>抱歉，没有找到符合您条件的商品，请看看别的</span>
									<br>
									<jsp:include page="../recommend.jsp"/>
								</div>
					       </c:when>
					       <c:otherwise>
					           <c:forEach items="${goods}" var="good">
									<tr height="100px">
										<td width="13%">
											<a href="goods?sid=${good.gid}&action=goodslist-select">
											  <img src="${good.gphoto}" width="100px" height="100px" border="0">
											 </a>
										</td>
										<td width="21%">
											<a href="goods?sid=${good.gid}&action=goodslist-select">
												${good.gname}</a>
											<br>
											${good.described}
											<br>
											出厂日期：${good.pdate}
										</td>
										<td width="18%">${good.price}￥
										</td>
										<td width="19%">${good.carriage}￥
										</td>
										<td width="18%">${good.types}</td>
										<td>${good.paddress}</td>
									</tr>
								</c:forEach>
					       </c:otherwise>
					    </c:choose>


					</table>
				</div>

				<div id="foot">
					<jsp:include page="../foot.jsp"/> 
				</div>
			</div>
		</div>
	</body>
</html>
