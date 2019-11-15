<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<%--    <script src="https://code.jquery.com/jquery.js"></script>--%>


<%--    <style type="text/javascript">--%>
<%--        li{--%>
<%--            list-style-type:none;--%>
<%--        }--%>
<%--        #dh{--%>
<%--            position:relative;--%>
<%--            left:20px;--%>
<%--        }--%>
<%--    </style>--%>
<%--    <script>--%>
<%--       //纯jquery写法--%>
<%--       $(function () {--%>
<%--           $("ul>label").bind("mouseover",function () {--%>
<%--                   $("#dh").slideDown(1000);--%>
<%--                   flag = false;--%>
<%--               // $("#dh_img1").attr("src","");--%>
<%--           });--%>
<%--           $("ul>label").bind("mouseout",function () {--%>
<%--                   $("#dh").slideUp(1000);--%>
<%--                   flag = true;--%>
<%--               // $("#dh_img1").attr("src","");--%>
<%--           });--%>
<%--       });--%>
<%--    </script>--%>
<%--    <link rel="stylesheet" href="<%=request.getContextPath()%>/WEB-INF/css/top.css">--%>
    <script src="https://code.jquery.com/jquery-git.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.0.272/jspdf.debug.js"></script>
</head>

<style type="text/css">
    .top{
        /* 设置宽度高度背景颜色 */
        height: auto; /*高度改为自动高度*/
        width:100%;
        padding-bottom: 10px;
        /*margin-left: 30%;*/
        background:rgb(189, 181, 181);
        position: fixed; /*固定在顶部*/
        top: 0;/*离顶部的距离为0*/
        margin-bottom: 5px;
    }
    .top ul{
        /* 清除ul标签的默认样式 */
        width: auto;/*宽度也改为自动*/
        margin-left:30%;
        list-style-type: none;
        white-space:nowrap;
        overflow: hidden;
        /*margin-left: 5%;*/
        /* margin-top: 0;          */
        padding: 0;

    }
    .top li {
        float:left; /* 使li内容横向浮动，即横向排列  */
        margin-right:5%;  /* 两个li之间的距离*/
        position: center;
        overflow: hidden;
    }

    .top li a{
        /* 设置链接内容显示的格式*/
        display: block; /* 把链接显示为块元素可使整个链接区域可点击 */
        color:white;
        text-align: center;
        padding: 3px;
        overflow: hidden;
        text-decoration: none; /* 去除下划线 */

    }
    .top li a:hover{
        /* 鼠标选中时背景变为黑色 */
        background-color: #111;
    }
    .top ul li ul{
        /* 设置二级菜单 */
        margin-left: -0.2px;
        background:rgb(189, 181, 181);
        position: relative;
        display: none; /* 默认隐藏二级菜单的内容 */

    }
    .top ul li ul li{
        /* 二级菜单li内容的显示 */

        float:none;
        text-align: center;
    }
    .top ul li:hover ul{
        /* 鼠标选中二级菜单内容时 */
        display: block;
    }
<%--    上面是top格式--%>
    #Container{
        width:100%;
        margin:0 auto;/*设置整个容器在浏览器中水平居中*/
        background: #f1ffc5;
    }
    #Header{
        height:10%;
        position: absolute;
        /*background: #999755;*/
    }
    /*#logo{*/
    /*    padding-left:50px;*/
    /*    padding-top:20px;*/
    /*    padding-bottom:50px;*/
    /*}*/
    #Content{
        position:relative;
        width: 100%;
        height:60%;
        z-index: 2;
        /*此处对容器设置了高度，一般不建议对容器设置高度，一般使用overflow:auto;属性设置容器根据内容自适应高度，如果不指定高度或不设置自适应高度，容器将默认为1个字符高度，容器下方的布局元素（footer）设置margin-top:属性将无效*!*/
        margin-top:20px;/*此处讲解margin的用法，设置content与上面header元素之间的距离*/
        margin-bottom:20px;
    }
    /*#Content-Left{*/
    /*    height:400px;*/
    /*    width:200px;*/
    /*    margin:20px;!*设置元素跟其他元素的距离为20像素*!*/
    /*    float:left;!*设置浮动，实现多列效果，div+Css布局中很重要的*!*/
    /*    background:#90C;*/
    /*}*/
    /*#Content-Main{*/
    /*    height:400px;*/
    /*    width:720px;*/
    /*    margin:20px;!*设置元素跟其他元素的距离为20像素*!*/
    /*    float:left;!*设置浮动，实现多列效果，div+Css布局中很重要的*!*/
    /*    background:#90C;*/
    /*}*/
    /*注：Content-Left和Content-Main元素是Content元素的子元素，两个元素使用了float:left;设置成两列，这个两个元素的宽度和这个两个元素设置的padding、margin的和一定不能大于父层Content元素的宽度，否则设置列将失败*/
    #Footer{
        width: 100%;
        position: absolute;
        z-index: 1;
        height:30%;
        background: #99ccc0;
    }
    .Clear{
        clear:both;
    }

</style>
<script>

    $(function(){
        $("#dhl li a").on("click",function(){
            var address =$(this).attr("href");
            alert(address);
            $("#iframe1").attr("src",address);
        });
    });


</script>
<body>

<div id="Container">
    <div id="Header">
<%--        <div >--%>
<%--        <jsp:include page="./top.jsp"></jsp:include>--%>
                <div class="top">
                    <ul id="dhl">
                        <li><a href="<%=request.getContextPath()%>/login" target="myFrameName">登录</a></li>
                        <li><a href="<%=request.getContextPath()%>/regist" target="myFrameName">注册</a></li>
                        <li><a href="#">一级菜单</a></li>
                        <li><a href="#"><b>一级菜单</b></a></li>
                        <li><a href="#">一级菜单</a></li>
                        <li>
                            <a href="#">一级菜单</a>
                            <ul>
                                <li><a href="#">二级菜单</a></li>
                                <li><a href="#">二级菜单</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

    </div>
    <div id="Content">
<%--        <div>--%>
<%--            <jsp:include page="./index.jsp"></jsp:include>--%>
<%--        </div>--%>
        <div class="main_right" >
            <iframe id="iframe1" name="myFrameName" frameborder="0"  style="width:100%;height:60%;margin-top:300px;" src="<%=request.getContextPath()%>/WEB-INF/jsp/index.jsp" ></iframe>
        </div>

    </div>
    <div class="Clear"><!--如何你上面用到float,下面布局开始前最好清除一下。--></div>
    <div id="Footer">Footer</div>

</div>
<%--<jsp:include page="<%=request.getContextPath()%>/regist"></jsp:include>--%>
<%--    <UL>--%>
<%--        <img id="dh_img1" src="<%=request.getContextPath()%>/WEB-INF/img/timg.jpeg"/><label>导航栏</label>--%>
<%--        <div id="dh" style="display: none">--%>
<%--        <li><img src="<%=request.getContextPath()%>/WEB-INF/img/visa.png"/><label>导航栏</label></li>--%>
<%--        <li><img src="<%=request.getContextPath()%>/WEB-INF/img/visa.png"/><label>导航栏</label></li>--%>
<%--        </div>--%>
<%--    </UL>--%>
</body>


</html>
