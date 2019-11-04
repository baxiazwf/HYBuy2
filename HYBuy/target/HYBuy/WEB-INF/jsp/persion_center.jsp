<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0">　---添加移动设备标签 -->

    <meta name="viewport" content="width=device-width,
                                     initial-scale=1.0,
                                     maximum-scale=1.0,
                                     user-scalable=no">　
    <!---更加合适的一定设备命名方式-->
    <title>Hello , together~ </title>　
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="../mycss/style.css" 　type="text/css" rel="stylesheet">

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
    <div class="container">
        <!----个人中心导航栏-->
        <div class='row'>
            <nav class="navbar navbar-default navbar-static-top">
                <ul class="nav nav-tabs">
                    <li role="presentation" class="active"><a href="#" class="btn btn-primary btn-lg active"
                            role="button">创建作品</a></li>
                    <li role="presentation"><a href="model_html/model.html" class="btn btn-primary btn-lg active"
                            role="button">你的空间</a></li>
                    <li role="presentation"><a href="person_center_html/persion_center.html"
                            class="btn btn-primary btn-lg active" role="button">个人中心</a>
                    </li>
                </ul>
            </nav>
        </div>
        　　
        <!---作品选项-->
        <div class="row">
            <form class="form-horizontal">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">标题</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control"  placeholder="text">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">详细说明</label>
                    <div class="col-sm-10">
                        <textarea class="form-control" id="text" rows="8"> </textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="exampleInputFile">模型</label>
                    <input type="file" id="exampleInputFile">
                    <p class="help-block">模型的文件在这里上传</p>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">输入张量</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputEmail3" placeholder="text">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">输出张量</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputEmail3" placeholder="text">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">提交</button>
                    </div>
                </div>
            </form>

        </div>
    </div>

</body>

</html>