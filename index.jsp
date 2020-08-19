<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="com.eshore.user.SelectAll" pageEncoding="UTF-8"%>
<%@ page import="com.eshore.user.goodBean" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%
	SelectAll S=new SelectAll();
	List<goodBean> l=new ArrayList<goodBean>();
	l=S.login(0);
%>
<!DOCTYPE HTML >
<html>
	<head>
		<title>硕果满园网！！！！</title>
		<jsp:include page="common/common.jsp"/>
		<script type="text/javascript" ></script>
	</head>
	<style>
		#affiche {
			color: red;
			display: block;
			width: 100%;
			height: 60px;
			margin: 0 auto;
			position: relative;
			overflow: hidden;
			background-color: #ffa50e;
		}
		.affiche_text {
			position: absolute;
			top: 0;
			left: 100%;
			line-height: 30px;
			display: block;
			word-break: keep-all;
			text-overflow: ellipsis;
			white-space: nowrap;
		}
	</style>
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.js" ></script>
	<script type="text/javascript">
        (function(){var timer = setTimeout(this.marquee, 1000);}());
        function marquee() {
            var scrollWidth = $('#affiche').width();
            var textWidth = $('.affiche_text').width();
            var i = scrollWidth;
            setInterval(function() {
                i--;
                if(i < -textWidth ) {
                    i = scrollWidth;
                }
                $('.affiche_text').animate({'left': i+'px'}, 20);
            }, 20);
        }
	</script>
	<body style="background-image: url('../image/102.jpg');
	background-repeat:no-repeat ;background-size:100% 100%;background-attachment: fixed;">
		<div align="center">
			<div id="logoselect">
				<jsp:include page="logo_select.jsp"></jsp:include>
			</div>
			<%--<div style="width: 1000px;height: auto;border: 2px solid springgreen">--%>
				<table border="1" id="list" style="width: 100%;background-color:rgba(255,250,59,0.85);">
					<tr class="goodlist" style="background-color:rgba(255,250,59,0.85);width: 100%;">
						<td>
							<a href="fenleiServlet?id=1" style="font-size: 25px;">苹果</a>|
							<a href="fenleiServlet?id=2" style="font-size: 25px;">橘子</a>|
							<a href="fenleiServlet?id=4" style="font-size: 25px;">葡萄</a>|
							<a href="fenleiServlet?id=5" style="font-size: 25px;">香蕉</a>|
							<a href="fenleiServlet?id=6" style="font-size: 25px;">橙子</a>|
							</td>
						<td>
							<div style=" height:auto;">
								<form action="goods" method="post" name="index-select">
									<input id="keyWord" type="text" name="keyWord"
										   onblur="this.className='inputout';if(this.value==''){this.value='请输入关键字';}"
										   onfocus="this.className='inputover';this.focus();if(this.value=='请输入关键字'){this.value='';}"
										   size="50" value="请输入关键字" name="keyWord">
									<select name="keyClass">
										<option value="0" selected="selected">
											查询条件
										</option>
										<option value="1">
											按商品名
										</option>
										<option value="2">
											按商品种类
										</option>
									</select>
									<input type="hidden" name="action" value="index-select">
									<input class="submit" type="submit" value="搜 索">
								</form>
							</div>
						</td>
						<td><div id="top">
							<jsp:include page="head.jsp"></jsp:include>
						</div></td>
					</tr>
					<tr>
						<div id="affiche"><h1 style="color: lawngreen" class="affiche_text">火热售卖中！！！！！！！！！！！！！！！</h1></div>
					</tr>
				</table>

			<input id="status" type="hidden" name="status " value="${status}">

			<div id="main" style="height: 800px;width: 100%">

				<%for (int i=0;i<l.size();i++){%>
				<div style="float: left;width:241px;height: 300px;
				margin-left: 40px ;margin-top: 40px;color: #f9ff13;font-size: 25px;
					border: 3px solid #ffa50e;">
					<a href="goods?sid=<%=l.get(i).getId()%>&action=goodslist-select" >
						<img src="<%=l.get(i).getGphoto()%>" alt="" width="241px;" height="300px">
							<%=l.get(i).getGname()%>&nbsp;&nbsp;&nbsp;&nbsp;￥&nbsp;&nbsp;<%=l.get(i).getPrice()%>
					</a>
				</div>
				<%}%>
			</div>
			<div id="foot">
				<jsp:include page="foot.jsp"></jsp:include>
			</div>
			<%--</div>--%>
		</div>
	</body>
</html>
