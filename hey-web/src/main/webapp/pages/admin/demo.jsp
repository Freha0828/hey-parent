<%--
  Created by IntelliJ IDEA.
  User: black
  Date: 6/22/2018
  Time: 9:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>添加管理员-WeAdmin Frame型后台管理系统-WeAdmin 1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="../../static/css/font.css">
    <link rel="stylesheet" href="../../static/css/weadmin.css">
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="weadmin-body">
    <form class="layui-form">

        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="we-red">*</span>登录名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="username" name="username" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="phone" class="layui-form-label">
                <span class="we-red">*</span>手机
            </label>
            <div class="layui-input-inline">
                <input type="text" id="phone" name="phone"  class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="L_email" class="layui-form-label">
                <span class="we-red">*</span>邮箱
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_email" name="email"  class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <button class="layui-btn" lay-submit lay-filter="operatorAdd">增加</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </form>
</div>

<script src="../../lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript">
    alert(1);
    layui.extend({
        admin: '{/}../../static/js/admin'
    });
    layui.use(['form','admin'], function(){
        var form = layui.form
            ,admin = layui.admin;
        var $ = layui.jquery;
        //监听提交
        form.on('submit(operatorAdd)', function(data){
            $.ajax({
                type:'POST',
                url:"/hey-web/addOperator?username="+data.field.username+"&&phone="+data.field.phone,
                success:function(res){
                        location.href='./operatorList.jsp';
                }
            });
            return false;
        });
    });



</script>


</body>

</html>
