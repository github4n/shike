<%@page import="java.util.List"%>
<%@page import="com.kensure.shike.constant.BusiConstant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String context = BusiConstant.shikemobilepath;
%>
<!DOCTYPE html>
<html lang="zh" style="font-size: 22.125px;"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>登录</title>
    <meta name="keywords" content="<%=BusiConstant.keywords %>">
    <meta name="description" content="<%=BusiConstant.description %>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="address=no">
    <meta name="full-screen" content="yes">
    <link href="<%=BusiConstant.context %>/favicon.ico" rel="shortcut icon" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="<%=BusiConstant.shikemobilepath %>/common/css/base.css">
    <link rel="stylesheet" type="text/css" href="<%=BusiConstant.shikemobilepath %>/common/css/iconfont.css">

    <link rel="stylesheet" type="text/css" href="<%=BusiConstant.shikemobilepath %>/common/css/style.css">

    <script type="text/javascript" src="<%=BusiConstant.shikemobilepath %>/common/js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="<%=BusiConstant.shikemobilepath %>/common/js/Common.js"></script>

    <script>
        var userId=0;
        (function (doc, win) {
            var docEl = doc.documentElement,
            resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
            recalc = function (first) {
                var clientWidth = docEl.clientWidth;
                
                if (!clientWidth) return;
          
                docEl.style.fontSize = 20 * (clientWidth / 320) + 'px';
                
            };
            if (!doc.addEventListener) return;
            win.addEventListener(resizeEvt, recalc, false);
            doc.addEventListener('DOMContentLoaded', recalc, false);
            recalc();
        })(document, window);
    </script>
    
<link href="<%=BusiConstant.shikemobilepath %>/common/css/layer.css" type="text/css" rel="styleSheet" id="layermcss"></head>
<body>
    
<link rel="stylesheet" type="text/css" href="<%=BusiConstant.shikemobilepath %>/mine/login/index.css">

<link rel="stylesheet" type="text/css" href="<%=BusiConstant.shikemobilepath %>/mine/login/mytryout.css">

<link rel="stylesheet" type="text/css" href="<%=BusiConstant.shikemobilepath %>/mine/login/account.css">

<script type="text/javascript" src="<%=BusiConstant.shikemobilepath %>/mine/login/account.js"></script>

<script type="text/javascript" src="<%=BusiConstant.shikemobilepath %>/common/js/uploadimage.js"></script>
<script type="text/javascript" src="<%=BusiConstant.context%>/jqtable/jquery.cookie.js"></script>
<script type="text/javascript" src="<%=BusiConstant.shikemobilepath %>/common/js/http.js?ver=<%=BusiConstant.version%>"></script>

<header class="header  task-top">
  <i class="iconfont icon-Toright" style="color: #000;display: inline-block;float: left;margin-left: 0.2rem;" onclick="history.back(-1)"></i>登录
    <div class="righthot thot">
        <a class="icon-userCenter" href="<%=BusiConstant.shike_regist.getKey()%>">
            新用户注册
        </a>
    </div>
</header>
<div style="height: 2rem;"></div>
<div class="login">
    <img src="<%=BusiConstant.shikemobilepath %>/mine/login/icon.png" alt="Alternate Text">
    <div class="item">
        <i class="iconfont icon-phone"></i><input type="text" name="name" id="name" value="" placeholder="请输入手机号或用户名">
        <span id="namewarn" class="warn .right"></span>
    </div>
    <div class="item">
        <i class="iconfont icon-pwd"></i><input type="password" name="name" id="pwd" placeholder="请输入密码">
         <span id="pwdwarn" class="warn .right"></span>
    </div>
    <div class="btn submit-btn red">
        登录
    </div>
    <%--<div class="btn" style="display: block;" id="wxlogin" onclick="app.weixinlogin(); layer.open({ type: 2 });">
        <i class="iconfont icon-wx"></i>微信授权登录
    </div>
    <div class="btn" style="display: none;" id="weixinBtn">
        <i class="iconfont icon-wx"></i>微信浏览器登录
    </div>--%>
    <a href="<%=BusiConstant.shike_wjpwd.getKey()%>">忘记密码？</a>
</div>

<script>
    $(function () {
        if (globle.isWeixin()) {
            $("#weixinBtn").css("display", "block");
        } else {
            $("#wxlogin").css("display", "block");
        }

        var back= '';
        $(".submit-btn").on("click", function () {
            if ($("#pwd").val().length <= 0 || $("#name").val().length <= 0) {
                myAlert("用户名密码未填写");
                return false;
            }
            var name = $("#name").val();
            var pwd = $("#pwd").val();
            // var namefalg = /^(?=.*[A-Za-z_\u4E00-\u9FA5])[A-Za-z0-9_\u4E00-\u9FA5]{3,15}$/.test(name) || /^[1][3,4,5,6,7,8,9][0-9]{9}$/.test(name);
            // if (!namefalg) {
            //     $("#namewarn").removeClass(".right").html("用户名格式错误");
            //
            // } else {
            //     $("#namewarn").addClass(".right").html("");
            // }
            // var pwdfalg = /^[\w\W]{6,16}$/.test(pwd);
            // if (!pwdfalg) {
            //     $("#pwdwarn").removeClass(".right").html("密码格式错误");
            // } else {
            //     $("#pwdwarn").addClass(".right").html("");
            // }

            // if (namefalg && pwdfalg) {
            //     $.post("/UserAccount/MobileLoginSubmit", { mobile: name, password: pwd }, function (data) {
            //         if (!data.Result) {
            //             myAlert(data.Message);
            //         } else {
            //             if (back != '') {
            //                 location.href = back;
            //             } else {
            //                 location.href = "/";
            //             }
            //         }
            //     });
            // }

            // 登录
            login();
        });

        $("#pwd,#name").on("keydown", function() {
            if ($("#pwd").val().length > 0 && $("#name").val().length > 0) {
                $(".submit-btn").removeClass("gray").addClass("red");
            } else {
                $(".submit-btn").removeClass("red").addClass("gray");
            }
        });
        // $("#weixinBtn").click(function () {
        //     location.href = "/UserAccount/weixinlogininapp";
        // });


        $("#name").keydown(function (event) {
            if (event.keyCode == 13) {
                $(".submit-btn").click();
            }
        });
        $("#pwd").keydown(function (event) {
            if (event.keyCode == 13) {
                $(".submit-btn").click();
            }
        });


        function loginsucdo(data){
            var usersession = data.resultData.row;
            addcookie(usersession);
            if ("${type}" == 1) {
                window.location.href="<%=BusiConstant.shike_haohuo.getKey()%>";
            } else {
                history.go(-1);
            }
        }
        function login(){
            var data = {type:1,mobile:$("#name").val(),password:$("#pwd").val()};
            var url = "<%=BusiConstant.shangjia_login_do.getKey()%>";
            postdo(url, data, loginsucdo,null, null);
        }

        function zhuce(){
            window.location.href="<%=BusiConstant.shike_regist.getKey()%>";
        }
    });
</script>
        <div style="margin-bottom: 2rem;">
        </div>
        <jsp:include page="../common/footer.jsp" flush="true"/>
        <div style="display: none"><script src="<%=BusiConstant.shikemobilepath %>/mine/login/z_stat.php" language="JavaScript"></script><script src="<%=BusiConstant.shikemobilepath %>/mine/login/core.php" charset="utf-8" type="text/javascript"></script>
   
    <div id="loading" class="loading" style="display: none;">
    <div class="loadingContent">
        <img src="<%=BusiConstant.shikemobilepath %>/common/images/loading.gif">
    </div>
</div>
    <script type="text/javascript" src="<%=BusiConstant.shikemobilepath %>/common/js/jquery.form.js"></script>

    <script type="text/javascript" src="<%=BusiConstant.shikemobilepath %>/common/js/Validform_v5.3.2.js"></script>

    <script type="text/javascript" src="<%=BusiConstant.shikemobilepath %>/common/js/post.loading.js"></script>

    <script type="text/javascript" src="<%=BusiConstant.shikemobilepath %>/common/js/layer.m.js"></script>

    <script type="text/javascript" src="<%=BusiConstant.shikemobilepath %>/common/js/layerdialog.js"></script>

    <script type="text/javascript" src="<%=BusiConstant.shikemobilepath %>/common/js/jquery.cookie.js"></script>

    <script type="text/javascript" src="<%=BusiConstant.shikemobilepath %>/common/js/browser.js"></script>

    <script type="text/javascript" src="<%=BusiConstant.shikemobilepath %>/common/js/app.js"></script>

<%--
<div id="layui-m-layer0" class="layui-m-layer layui-m-layer0" index="0">
    <div class="layui-m-layershade"></div>
    <div class="layui-m-layermain">
        <div class="layui-m-layersection">
            <div class="layui-m-layerchild  layui-m-anim-scale">
                <div class="layui-m-layercont">用户名或密码不正确</div>
                <div class="layui-m-layerbtn"><span yes="" type="1">确定</span></div>
            </div>
        </div>
    </div>
</div>--%>
</body>
</html>