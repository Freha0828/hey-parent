<%--
  Created by IntelliJ IDEA.
  User: black
  Date: 6/20/2018
  Time: 4:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>管理员列表-WeAdmin Frame型后台管理系统-WeAdmin 1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="../../static/css/font.css">
    <link rel="stylesheet" href="../../static/css/weadmin.css">
    <link rel="stylesheet" href="../../lib/layui//css/layui.css">
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body class="layui-layout-body">
<div class="weadmin-nav">
                <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">管理员管理</a>
            <a>
              <cite>操作员列表</cite></a>
          </span>
    <a class="layui-btn layui-btn-sm" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="weadmin-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 we-search">
            <div class="layui-inline">
                <input class="layui-input" placeholder="开始日" name="start" id="start">
            </div>
            <div class="layui-inline">
                <input class="layui-input" placeholder="截止日" name="end" id="end">
            </div>
            <div class="layui-inline">
                <input type="text" name="username" placeholder="请输入用户名" autocomplete="off" class="layui-input">
            </div>
            <button class="layui-btn" lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>
    <div class="weadmin-block">
        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
        <button class="layui-btn" onclick="WeAdminShow('添加用户','./operatorAdd.jsp')"><i class="layui-icon"></i>添加</button>
    </div>

    <table class="layui-table" id="operatorList" lay-filter="operatorList">
    </table>
</div>

<script src="../../lib/layui/layui.js" charset="utf-8"></script>
<script src="../../static/js/eleDel.js" type="text/javascript" charset="utf-8"></script>
<script>
    layui.use('table', function(){
        var table = layui.table;

        //LayUI table
        table.render({
            elem: '#operatorList'
            ,height: 315
            ,url: '/hey-web/user/getAllOperators' //数据接口
            ,page: true //开启分页
            ,cols: [[ //表头
                {field: 'id', title: 'ID', width: '170', sort: true},
                {field: 'userName', title: '用户名', width: '250'},
                {field: 'roleId', title: '角色id', width: '200'},
                {field: 'phoneNum', title: '电话', width: '200'},
                {field: 'email', title: '邮箱', width: '200'},
                {field: 'createTime', title: '创建时间', width: '200', sort: true},
                {field: 'updateTime', title: '修改时间', width: '200', sort: true},
                {field: 'updateUser', title: '修改人', width: '200', sort: true},
            ]]
        });
    });
    
    // function addOperator() {
    //     location.href="./demo.jsp";
    // }

</script>
</body>
</html>
