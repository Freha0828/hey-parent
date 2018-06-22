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
    <link rel="stylesheet" href="../../lib/layui//css/layui.css">
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="../../lib/layui/layui.js" charset="utf-8"></script>
</head>

<body>
<div class="weadmin-body">
    <form class="layui-form">
        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="we-red">*</span>登录名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="username" name="username" required="" lay-verify="required"
                       autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="we-red">*</span>将会成为您唯一的登入名
            </div>
        </div>
        <div class="layui-form-item">
            <label for="phone" class="layui-form-label">
                <span class="we-red">*</span>手机
            </label>
            <div class="layui-input-inline">
                <input type="text" id="phone" name="phone" required="" lay-verify="phone"
                       autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="we-red">*</span>将会成为您唯一的登入名
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_email" class="layui-form-label">
                <span class="we-red">*</span>邮箱
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_email" name="email" required="" lay-verify="email"
                       autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="we-red">*</span>
            </div>
        </div>
        <div class="layui-form-item">
            <button class="layui-btn" lay-submit lay-filter="operatorAdd">增加</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </form>
</div>

<script type="text/javascript">
    layui.use(['layer','form'], function(){
        var form = layui.form;
        var $ = layui.jquery;

        //监听提交
        form.on('submit(operatorAdd)', function(data){
            $.ajax({
                type:"POST",
                //url:"/hey-web/addOperator?username="+data.field.username+"&&phone="+data.field.phone+"&&email="+data.field.email,
                url:"/hey-web/addOperatorTest",
                dataType:"json",//预期服务器返回的数据类型
                data:JSON.stringify(data.field),//表格数据序列化
                contentType: "application/json; charset=utf-8",
                success:function(res){
                    var resJson = eval('(' + res + ')');
                    if (res != null && resJson.code == 0) {
                        //location.href='../../index.jsp';
                        layer.msg("添加操作员成功！",{icon:1},function(){
                            parent.location.reload(); // 父页面刷新
                            var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
                            parent.layer.close(index);
                        });

                    } else {
                        layer.msg('添加操作员失败，请重新添加！', {time:1200});
                        return false;
                    }
                }
            });
            return false;
        });
    });
</script>
</body>

</html>
