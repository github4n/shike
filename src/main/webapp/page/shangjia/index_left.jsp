<%@page import="com.kensure.shike.constant.BusiConstant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String context = BusiConstant.shangjiapath;
	String name = BusiConstant.name;
%>


<div class="shangjia_left clearfix hdn-left"
	style="border-right: 1px solid #e7e8eb; height: 100%; padding-bottom: 10000px; margin-bottom: -10000px;">
	<div style="width: 100%; display: block; margin: 0 auto;">
		<div class="left_bott">
			<ul>
				<li style="cursor: pointer; margin: 22px 0 10px 0; height: 42px;"
					class="left_titi"><a href="<%=BusiConstant.shangjia_manageradd.getKey() %>" target="_blank" class="invite-btn">发布活动</a></li>

				<li id="4" class="left_titi"><strong><i
						class="iconfont icon-liwuhuodong"></i>活动管理<i
						class="iconfont icon-Toboottom il5 ft_up_down"></i></strong></li>
				<li parentid="4"><a
					href="<%=BusiConstant.shangjia_huodonglist.getKey() %>"
					id="openWindows31" target="_self">淘宝活动</a></li>
				<li class="line"></li>

				<li class="left_titi "><strong><i
						class="iconfont icon-zhanghuxinxi"></i>账户信息</strong> <i
					class="iconfont icon-Toleft il5 ft_up_down"
					style="color: rgb(102, 102, 102);"></i></li>
				<li><a href="<%=BusiConstant.shangjia_dianpulist.getKey()%>" id="openWindows18" target="_self">店铺管理</a></li>
				<li><a href="<%=BusiConstant.shangjia_tixian.getKey()%>" id="openWindows6" >提现/账户明细</a>
				</li>
				<li><a href="<%=BusiConstant.shangjia_gaimi.getKey()%>" id="openWindows8" target="_blank">账户安全</a></li>
				<li><a href="<%=BusiConstant.shangjia_chongzhi.getKey()%>" id="openWindows17" target="_self">账户充值</a></li>
				<li class="line"></li>


			
				

			</ul>
		</div>
	</div>
	<!--left-->
</div>

