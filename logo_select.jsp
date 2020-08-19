<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML >
<html>
	<head>
		<title></title>
	</head>
	<script type="text/javascript">
        var index=0;
        //改变图片
        function ChangeImg() {
            index++;
            var a=document.getElementsByClassName("img-slide");
            if(index>=a.length) index=0;
            for(var i=0;i<a.length;i++){
                a[i].style.display='none';
            }
            a[index].style.display='block';
        }
        //设置定时器，每隔五秒切换一张图片
        setInterval(ChangeImg,5000);
	</script>
	<body>
		<div>
			<a id="img-link" href="index.jsp">
				<img class="img-slide img1" src="image/logo.jpg" border="0" alt="1" style="width: 100%"/>
				<img class="img-slide img2" src="image/logo2.jpg" border="0" alt="1" style="display: none;width: 100%"/>
			</a>
		</div>
		<br>
		<%--<div style=" height:auto;">--%>
			<%--<form action="goods" method="post" name="index-select">--%>
				<%--<input id="keyWord" type="text" name="keyWord"--%>
					   <%--onblur="this.className='inputout';if(this.value==''){this.value='请输入关键字';}"--%>
					   <%--onfocus="this.className='inputover';this.focus();if(this.value=='请输入关键字'){this.value='';}"--%>
					   <%--size="50" value="请输入关键字" name="keyWord">--%>
				<%--<select name="keyClass">--%>
					<%--<option value="0" selected="selected">--%>
						<%--查询条件--%>
					<%--</option>--%>
					<%--<option value="1">--%>
						<%--按商品名--%>
					<%--</option>--%>
					<%--<option value="2">--%>
						<%--按商品种类--%>
					<%--</option>--%>
				<%--</select>--%>
				<%--<input type="hidden" name="action" value="index-select">--%>
				<%--<input class="submit" type="submit" value="搜 索">--%>
			<%--</form>--%>
		<%--</div>--%>
	</body>
</html>
