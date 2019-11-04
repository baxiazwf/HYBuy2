<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://code.jquery.com/jquery-git.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.0.272/jspdf.debug.js"></script>
    <title>登陆</title>
</head>
<body>
<jsp:include page="navigate.jsp" />
<script>
    function  funlogin() {
        var uname = document.getElementById("uname").value;
        var upwd = document.getElementById("upwd").value;
        alert(upwd+uname);
        $.post("<%=request.getContextPath()%>/checkuser",{uname:uname,upwd:upwd},function(result){
            if(result=="success"){
                alert("<%=request.getSession().getAttribute("uname")%>")
                window.location = "<%=request.getContextPath()%>/index";
            }
        });
    }
    function jumpRegist(){
        $.get("<%=request.getContextPath()%>/regist");
        <%--window.location = "<%=request.getContextPath()%>/regist";--%>
    }
</script>
<h2>用户登陆</h2>
    用户名：<input type="text" id = "uname"autocomplete="off"/> <br>
    密&nbsp;码：<input type="password" id = "upwd" autocomplete="new-password"/> <br>
           <input type="button" value="登陆"  onclick="funlogin()" />
    <input type="button" value="还没注册，先去注册..." onclick="jumpRegist()"/>



</body>
</html>
