<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html >
<html>
<head></head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>注册</title>
	<script src="https://code.jquery.com/jquery-git.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.0.272/jspdf.debug.js"></script>
<script type="text/javascript">
//验证注册表单
	function checkForm(){
		// 将需要验证表单组件 提供id属性
		var username = document.getElementById("uname").value;
		if(username==null||username==""){
			alert("用户名不能为空");
			return false;
		}
		// 为其它字段添加非空校验
		var password = document.getElementById("upwd").value;
		var repassword = document.getElementById("repassword").value;
		if(password != repassword){
			alert("两次密码必须一致！");
			document.getElementById("upwd").value = "";
			document.getElementById("uname").value = "";
			document.getElementById("repassword").value = "";
			return false;
		}else {
			$.post('<%=request.getContextPath()%>/checkuser',
					{uname:username,upwd:password},function (result) {// alert(result);
						if (result == "error"){
							$.get('<%= request.getContextPath()%>/adduser',{uname:username,upwd:password},function(result){
								var n = new Number(result);
								// alert(n);
								if(n!=0){
									alert("注册成功");
<%--									<%Thread.sleep(300000);%>--%>
									<%--window.location.href = "<%=request.getContextPath()%>/index";--%>
								}
							});
						}
					});
		}

	}
	// //切换验证码
	// function change(){
	// 	document.getElementById("myimg").src = "user/verifyCode?"+new Date().getTime();
	// }
</script>

<body>
	<jsp:include page="navigate.jsp" />
	<h2>用户注册</h2>
		用户&nbsp;名：<input type="text" name="uname" id="uname" autocomplete="off"/><br>
		密　　码：<input type="password" name="upwd" id="upwd" autocomplete="new-password"/><br>
		确认密码：<input type="password" id="repassword" /><br>
<%--		性　　别：<input type="radio" name="gender" value="男" checked="checked"/>男&nbsp;&nbsp;--%>
<%--		   	     <input type="radio" name="gender" value="女"/>女<br>--%>
<%--		出生日期：<input type="text" name="birthday" /><br>--%>
<%--		身&nbsp;份证：<input type="text" name="idCard" /><br>--%>
<%--		邮　　箱：<input type="text" name="email" /><br>--%>
<%--		手　　机：<input type="text" name="mobile" /><br>--%>
<%--		地　　址：<input type="text" name="address" /><br>--%>
<%--		验证 码：<input type="text" name="checkcode"><img id="myimg" alt="单击换一张" src="user/verifyCode" onclick="change();"><br>--%>
		<input type="button" id="submit" style="height:30px;width:50px" value = "提交" onclick="checkForm()"></input>


</body>
</html>