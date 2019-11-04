<%--
  Created by IntelliJ IDEA.
  User: ZWF
  Date: 2019/11/4
  Time: 12:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0">　---添加移动设备标签 -->

    <meta name="viewport" content="width=device-width,
                                     initial-scale=1.0,
                                     maximum-scale=1.0,
                                     user-scalable=no">　
    <!---更加合适的一定设备命名方式-->
    <title>Bootstrap 模板</title>　
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- 包括所有已编译的插件 -->
    <script src="js/bootstrap.min.js"></script>
</head>

<body>
<script>
   function loginf(){
       window.location.href = "<%=request.getContextPath()%>/login";
       <%--$.get('<%=request.getContextPath()%>/login2');--%>
    }
   function registf(){
       window.location.href = "<%=request.getContextPath()%>/regist";
       <%--$.get('<%=request.getContextPath()%>/regist2');--%>
   }
</script>
<div class="container">
    <!----div标题栏-->
    <div class='row'>
        <div class="col-md-4">
            <h1>together网站首页</h1>
        </div>
        <div class="col-md-4 col-md-offset-10">
            <button type="button" class="btn btn-success">
                <span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span>
                <button type="button" class="btn btn-default" onclick="loginf()" >登录</button>
            </button>
            <button type="button" class="btn btn-success">
                <span class="glyphicon glyphicon-plane" aria-hidden="true"></span>
                <button type="button" class="btn btn-default" onclick="registf()" >注册</button>
            </button>
        </div>
    </div>

    <!----搜索栏目-->
    <div class="row">

        <div class="col-lg-6 col-md-offset-3">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Search for...">
                <span class="input-group-btn">
                        <button class="btn btn-default" type="button">Go!</button>
                    </span>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
    </div><!-- /.row -->






    <!---相关通知和说明--->
    <div class="jumbotron">
        <h1>
            Hello, together!
        </h1>

        <p> are together
            ,大家好，欢迎加入together大家庭，我们是一个人工智能服务平台，在这里你可以找到你想要实现智能化的一切工具和知识，在这里，我们对接上下线，将上线的研究员和下线的数据采集员集合在一起，</p>
        <p> 世界已经迎来了第五次工业革命，我们作为第五次工业革命的引领者，将带动上下线对接，让神经网络和机械的结合更加容易，让每一个企业，每一个个人都能够通过我们的平台参与到第五工业革命的潮流中来，只要你有想法，在这里有你想要的一切，甚至是想法。
        </p>
        <p>
            <a class="btn btn-primary btn-large" href="#">Learn more</a>
        </p>
    </div>

    <!----上面导航栏部分-->
    <div class='row'>
        <nav class="navbar navbar-default navbar-static-top">
            <ul class="nav nav-tabs">
                <li role="presentation" class="active"><a href="#" class="btn btn-primary btn-lg active"
                                                          role="button">首页</a></li>
                <li role="presentation"><a href="model_html/model.html" class="btn btn-primary btn-lg active"
                                           role="button">模型社区</a></li>
                <li role="presentation"><a href="person_center_html/persion_center.html" class="btn btn-primary btn-lg active" role="button">个人中心</a>
                </li>

            </ul>
        </nav>
    </div>
    <!----中间内容部分-->
    <div class="row clearfix">
        <div class="col-md-4 column nerous">
            <h2>
                <a href="#">神经网络接口 </a>
            </h2>
            <p>
                神经网络接口由某位企业或者个人创造，并且上传到我们的网站，通过我们的网站接口他们可以为某一行业提供服务，当然这要分为信息类的还是直接提供服务类的。致力于打造最棒的神经网络构建市场，对接上下线。
            </p>
            <p>
                <a class="btn" href="#">View details »</a>
            </p>
        </div>
        <div class="col-md-4 column nerous">
            <h2>
                <a href="#">神经网络接口 </a>
            </h2>
            <p>
                神经网络接口由某位企业或者个人创造，并且上传到我们的网站，通过我们的网站接口他们可以为某一行业提供服务，当然这要分为信息类的还是直接提供服务类的。致力于打造最棒的神经网络构建市场，对接上下线。
            </p>
            <p>
                <a class="btn" href="#">View details »</a>
            </p>
        </div>
        <div class="col-md-4 column nerous">
            <h2>
                <a href="#">神经网络接口 </a>
            </h2>
            <p>
                神经网络接口由某位企业或者个人创造，并且上传到我们的网站，通过我们的网站接口他们可以为某一行业提供服务，当然这要分为信息类的还是直接提供服务类的。致力于打造最棒的神经网络构建市场，对接上下线。
            </p>
            <p>
                <a class="btn" href="#">View details »</a>
            </p>
        </div>
        <div class="col-md-4 column nerous">
            <h2>
                <a href="#">神经网络接口 </a>
            </h2>
            <p>
                神经网络接口由某位企业或者个人创造，并且上传到我们的网站，通过我们的网站接口他们可以为某一行业提供服务，当然这要分为信息类的还是直接提供服务类的。致力于打造最棒的神经网络构建市场，对接上下线。
            </p>
            <p>
                <a class="btn" href="#">View details »</a>
            </p>
        </div>
        <div class="col-md-4 column nerous">
            <h2>
                <a href="#">神经网络接口 </a>
            </h2>
            <p>
                神经网络接口由某位企业或者个人创造，并且上传到我们的网站，通过我们的网站接口他们可以为某一行业提供服务，当然这要分为信息类的还是直接提供服务类的。致力于打造最棒的神经网络构建市场，对接上下线。
            </p>
            <p>
                <a class="btn" href="#">View details »</a>
            </p>
        </div>
        <div class="col-md-4 column nerous">
            <h2>
                <a href="#">神经网络接口 </a>
            </h2>
            <p>
                神经网络接口由某位企业或者个人创造，并且上传到我们的网站，通过我们的网站接口他们可以为某一行业提供服务，当然这要分为信息类的还是直接提供服务类的。致力于打造最棒的神经网络构建市场，对接上下线。
            </p>
            <p>
                <a class="btn" href="#">View details »</a>
            </p>
        </div>
        <div class="col-md-4 column nerous">
            <h2>
                <a href="#">神经网络接口 </a>
            </h2>
            <p>
                神经网络接口由某位企业或者个人创造，并且上传到我们的网站，通过我们的网站接口他们可以为某一行业提供服务，当然这要分为信息类的还是直接提供服务类的。致力于打造最棒的神经网络构建市场，对接上下线。
            </p>
            <p>
                <a class="btn" href="#">View details »</a>
            </p>
        </div>
        <div class="col-md-4 column nerous">
            <h2>
                <a href="#">神经网络接口 </a>
            </h2>
            <p>
                神经网络接口由某位企业或者个人创造，并且上传到我们的网站，通过我们的网站接口他们可以为某一行业提供服务，当然这要分为信息类的还是直接提供服务类的。致力于打造最棒的神经网络构建市场，对接上下线。
            </p>
            <p>
                <a class="btn" href="#">View details »</a>
            </p>
        </div>
        <div class="col-md-4 column nerous">
            <h2>
                <a href="#">神经网络接口 </a>
            </h2>
            <p>
                神经网络接口由某位企业或者个人创造，并且上传到我们的网站，通过我们的网站接口他们可以为某一行业提供服务，当然这要分为信息类的还是直接提供服务类的。致力于打造最棒的神经网络构建市场，对接上下线。
            </p>
            <p>
                <a class="btn" href="#">View details »</a>
            </p>
        </div>

        <div class="col-md-4 column nerous">
            <h2>
                <a href="#">神经网络接口 </a>
            </h2>
            <p>
                神经网络接口由某位企业或者个人创造，并且上传到我们的网站，通过我们的网站接口他们可以为某一行业提供服务，当然这要分为信息类的还是直接提供服务类的。致力于打造最棒的神经网络构建市场，对接上下线。
            </p>
            <p>
                <a class="btn" href="#">View details »</a>
            </p>
        </div>
        <div class="col-md-4 column nerous">
            <h2>
                <a href="#">神经网络接口 </a>
            </h2>
            <p>
                神经网络接口由某位企业或者个人创造，并且上传到我们的网站，通过我们的网站接口他们可以为某一行业提供服务，当然这要分为信息类的还是直接提供服务类的。致力于打造最棒的神经网络构建市场，对接上下线。
            </p>
            <p>
                <a class="btn" href="#">View details »</a>
            </p>
        </div>


    </div>

    <!-----脚注，下面-->
    <div class="row clearfix">
        <div class="col-md-12 column nerous">
            <address> <strong>together, Inc.</strong> 795 Folsom Ave, Suite 600 San Francisco, CA 94107<br /> <abbr
                    title="phone">P:</abbr> 17705419425</address>
        </div>
    </div>
</div>
</body>

</html>
