<%@page import="com.kensure.shike.baobei.model.SKWord"%>
<%@page import="com.kensure.shike.baobei.model.SKBaobeiTP"%>
<%@page import="com.kensure.shike.baobei.model.SKBaobei"%>
<%@page import="java.util.List"%>
<%@page import="com.kensure.shike.constant.BusiConstant"%>
<%@ page import="com.kensure.shike.user.model.SKUser" %>
<%@ page import="com.kensure.shike.zhang.model.SKUserYue" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String context = BusiConstant.shikemobilepath;
%>
<!DOCTYPE html>
<html lang="zh" style="font-size: 30px;"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>账户余额</title>
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
    
<link rel="stylesheet" type="text/css" href="<%=BusiConstant.shikemobilepath %>/mine/yue/index.css">

<link rel="stylesheet" type="text/css" href="<%=BusiConstant.shikemobilepath %>/common/css/mytryout.css">

<link rel="stylesheet" type="text/css" href="<%=BusiConstant.shikemobilepath %>/common/css/account.css">

<script>
    function drawApply() {
        
        if ('${yue.yue}' == '' || parseInt(${yue.yue}) == 0) {
            myAlert("余额为0，不可提现!");
        } else {
            location.href = '<%=BusiConstant.shike_tixian.getKey() %>';
        }
    }
</script>
<style>
    .zangh{height: 6.82rem; overflow: hidden; background: #ff474e; font-size: 0.65rem; color: #fff;box-sizing: border-box;padding:1rem 0.6rem 1.9rem;}
    .zangh div{ margin-top: 1.2rem; font-size: 1.4rem;}
    .zangh div em{font-size: 0.7rem;}
    .tx-list{ color: #000; padding: 0 0.6rem ; background-color: #fff;border-bottom: 1px solid #dbdbdb;height: 2.1rem;line-height: 2.1rem;}
        .tx-list i.icon-Toleft {
            float: right;
        }
    .tx-list a{color: #000;}
    .tx-list a .icon-tixian{display: inline-block; width: 1rem; color: #f49a01;font-size: 0.6rem;}
        .tx-list a .icon-mingxi {
            display: inline-block;
            color: #ff474e;
            font-size: 0.8rem;
            width: 1rem;
        }
</style>
<header class="header acct-top"><i class="arrows" onclick="location.href = &#39;<%=BusiConstant.shike_mine.getKey() %>&#39;"></i>账户余额</header>
<div style="height: 2rem;"></div>
<div class="zangh">
    可用余额
    <div>
        <em>¥ </em>${empty yue ? "0.00" : yue.yue}
    </div>
</div>
<div class="tx-list" onclick="drawApply()">
    <a href="javascript:void(0);">
        <i class="iconfont icon-tixian"></i>提现 <i class="iconfont icon-Toleft"></i>
    </a>
    
</div>
<div class="tx-list" onclick="location.href = &#39;<%=BusiConstant.shike_mingxi.getKey() %>&#39;;">
    <a href="<%=BusiConstant.shike_mingxi.getKey() %>"> <i class="iconfont icon-mingxi"></i>明细 <i class="iconfont icon-Toleft"></i></a>
</div>
        <div style="height:2.15rem;">
        </div>
        <jsp:include page="../common/footer.jsp" flush="true"/>
<div style="display: none">
    <script src="<%=BusiConstant.shikemobilepath %>/common/z_stat.php" language="JavaScript"></script>
    <script src="<%=BusiConstant.shikemobilepath %>/common/core.php" charset="utf-8" type="text/javascript"></script>

<div id="loading" class="loading">
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


</body></html>