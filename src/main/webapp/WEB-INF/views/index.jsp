<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <style type="text/css">
        html{
            background: url("../../img/1.jpg") ;
        }
        .form{background: rgba(255,255,255,0.2);width:400px;margin:120px auto;}
        /*阴影*/
        .fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}
        input[type="text"],input[type="password"]{padding-left:26px;}
        .checkbox{padding-left:21px;}
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>
    <%--显示在网页标签页上文字--%>
    <title>登录界面</title>

</head>
<body>
<form name="form" accept-charset="utf-8"  action="/login.action" method="post" onSubmit="javascript:return check_login();">
    <div class="container">
        <div class="form row">
            <div class="form-horizontal col-md-offset-3" id="login_form">
                <h3 class="form-title">LOGIN</h3>
                <div class="col-md-9">
                    <div class="form-group">
                        <i class="fa fa-user fa-lg"></i>
                        <input class="form-control required" type="text" placeholder="Username" id="username" name="username" autofocus="autofocus" maxlength="20"/>
                    </div>
                    <div class="form-group">
                        <i class="fa fa-lock fa-lg"></i>
                        <input class="form-control required" type="password" placeholder="Password" id="password" name="password" maxlength="8"/>
                    </div>
                    <div class="form-group">
                        <label class="checkbox">
                            <input type="checkbox" name="remember" value="1"/>记住我
                        </label>
                    </div>
                    <div class="form-group col-md-offset-9">
                        <button type="submit" class="btn btn-success pull-right" name="submit">登录</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
<script type="text/javascript">
    function check_login()
    {
        if(document.form.username.value=="")/*document.表单名.文本域名.value==''"*/
        {
            alert("请检查用户名是否为空！");
            return false;
        }
        if(document.form.password.value=="")
        {
            alert("请检查您的密码是否为空！");
            return false
        }
        /*<![CDATA[*/
        if(document.form.password.value.length < 6)
        {
            alert("您的密码长度小于6！");
            return false
        }
        /*]]>*/
    }
</script>

</html>