<%--
  Created by IntelliJ IDEA.
  User: black
  Date: 6/20/2018
  Time: 10:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理-WeAdmin Frame型后台管理系统-WeAdmin 1.0</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="shortcut icon" href="./favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="./static/css/font.css">
    <link rel="stylesheet" href="./static/css/weadmin.css">
    <script type="text/javascript" src="./lib/layui/layui.js" charset="utf-8"></script>
</head>
<body>
    <!-- 顶部开始 -->
    <div class="container">
        <div class="logo">
            <a>九江市分行</a>
        </div>
        <div class="left_open">
            <i title="展开左侧栏" class="iconfont">&#xe699;</i>
        </div>

        <ul class="layui-nav right" lay-filter="">
            <li class="layui-nav-item">
                <div>admin</div>
            </li>
            <li class="layui-nav-item to-index">
                <a href="login.html">Logout</a>
            </li>
        </ul>

    </div>
    <!-- 顶部结束 -->
    <!-- 中部开始 -->
    <!-- 左侧菜单开始 -->
    <div class="left-nav">
        <div id="side-nav">
            <ul id="nav">
                <li>
                    <a href="javascript:;">
                        <i class="iconfont">&#xe6b8;</i>
                        <cite>客户基本信息</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a _href="./pages/queryCustomer/list.html">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>客户信息查询</cite>
                            </a>
                        </li>
                        <!-- <li>
                            <a _href="./pages/member/del.html">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>客户信息修改</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="./pages/member/del.html">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>客户信息删除</cite>
                            </a>
                        </li> -->
                        <!--<li>
                            <a href="javascript:;">
                                <i class="iconfont">&#xe70b;</i>
                                <cite>会员管理</cite>
                                <i class="iconfont nav_right">&#xe697;</i>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a _href="./pages/member/addInput.html">
                                        <i class="iconfont">&#xe6a7;</i>
                                        <cite>输入框操作</cite>
                                    </a>
                                </li>
                                <li>
                                    <a _href="./pages/404.html">
                                        <i class="iconfont">&#xe6a7;</i>
                                        <cite>三级菜单演示</cite>
                                    </a>
                                </li>
                                <li>
                                    <a _href="./pages/404.html">
                                        <i class="iconfont">&#xe6a7;</i>
                                        <cite>导航菜单演示</cite>
                                    </a>
                                </li>
                            </ul>
                        </li>-->
                    </ul>
                </li>
                <!--<li>
                    <a href="javascript:;">
                        <i class="iconfont">&#xe705;</i>
                        <cite>文章管理</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a _href="./pages/article/list.html">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>文章列表</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="./pages/article/category.html">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>分类管理</cite>
                            </a>
                        </li>
                    </ul>
                </li>-->
                <li id="exportInfo" style="display: none;">
                    <a href="javascript:;">
                        <i class="iconfont">&#xe723;</i>
                        <cite>客户信息导入</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a _href="./pages/order/list.html">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>文件上传</cite>
                            </a>
                        </li>
                    </ul>
                </li>
                <li id="exportInfo01" style="display: none;">
                    <a href="javascript:;">
                        <i class="iconfont">&#xe726;</i>
                        <cite>管理员管理</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a _href="./pages/admin/adminList.jsp">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>管理员列表</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="./pages/admin/operatorList.jsp">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>操作员列表</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="./pages/admin/roleList.jsp">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>角色列表</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="./pages/admin/rule.html">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>权限管理</cite>
                            </a>
                        </li>
                    </ul>
                </li>
                <!--<li>
                    <a href="javascript:;">
                        <i class="iconfont">&#xe6ce;</i>
                        <cite>系统统计</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a _href="./pages/echarts/echarts1.html">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>拆线图</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="./pages/echarts/echarts2.html">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>柱状图</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="./pages/echarts/echarts3.html">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>地图</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="./pages/echarts/echarts4.html">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>饼图</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="./pages/echarts/echarts5.html">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>雷达图</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="./pages/echarts/echarts6.html">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>k线图</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="./pages/echarts/echarts7.html">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>热力图</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="./pages/echarts/echarts8.html">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>仪表图</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="./pages/echarts/echarts9.html">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>地图DIY实例</cite>
                            </a>
                        </li>
                    </ul>
                </li>-->
            </ul>
        </div>
    </div>
    <!-- <div class="x-slide_left"></div> -->
    <!-- 左侧菜单结束 -->
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="layui-tab tab" lay-filter="wenav_tab" id="WeTabTip" lay-allowclose="true">
            <ul class="layui-tab-title" id="tabName">
                <li>欢迎使用</li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <iframe src='./pages/welcome.html' frameborder="0" scrolling="yes" class="weIframe"></iframe>
                </div>
            </div>
        </div>
    </div>
    <div class="page-content-bg"></div>
    <!-- 右侧主体结束 -->
    <!-- 中部结束 -->
    <!-- 底部开始 -->
    <div class="footer">
        <div class="copyright">版权所有</div>
    </div>
    <!-- 底部结束 -->
    <script type="text/javascript">
        layui.config({
            base: './static/js/'
            ,version: '101100'
        }).use('admin');
        layui.use(['jquery','admin'], function(){
            var $ = layui.jquery;
            $(function(){
                var url = location.search.substring(8,9);
                if (url == '1') {
                    var exportInfo = document.getElementById('exportInfo');
                    var exportInfo01 = document.getElementById('exportInfo01');

                    exportInfo.style.display = 'block';
                    exportInfo01.style.display = 'block';
                }
            });
        });
    </script>
</body>
    <!--Tab菜单右键弹出菜单-->
    <ul class="rightMenu" id="rightMenu">
        <li data-type="fresh">刷新</li>
        <li data-type="current">关闭当前</li>
        <li data-type="other">关闭其它</li>
        <li data-type="all">关闭所有</li>
    </ul>

</html>
