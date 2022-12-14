<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="${pageContext.request.contextPath}/img/avatar5.png"
					class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info" style="padding-top: 0">
				<p>
					<security:authentication property="principal.username" />
				</p>
				<h5 style="color: #00a7d0"><%=session.getAttribute("userName")%></h5>
				<a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
			</div>
		</div>

		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">菜单</li>
			<li id="admin-index"><a
				href="${pageContext.request.contextPath}/pages/main.jsp"><i
					class="fa fa-dashboard"></i> <span>首页</span></a></li>

			<li class="treeview">
				<a href="#"> <i class="fa fa-cogs"></i>
					<span>系统管理</span>
					<span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
				<ul class="treeview-menu">
					<li>
						<a href="${pageContext.request.contextPath}/user/list">
							<i class="fa fa-circle-o"></i> 用户管理
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/comment/list">
							<i class="fa fa-circle-o"></i> 留言管理
						</a>
					</li>
				</ul>
			</li>

		</ul>
	</section>
	<!-- /.sidebar -->
</aside>