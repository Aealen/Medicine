<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 页面头部 -->
<script>
	function deLog(){
		sessionStorage.clear();

		location.replace("${pageContext.request.contextPath}/pages/login.jsp");
	}
</script>
<header class="main-header">
	<!-- Logo -->
	<a href="../index.jsp" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
		<span class="logo-mini"><b>Medicine</b></span> <!-- logo for regular state and mobile devices -->
		<span class="logo-lg"><b>Medicine</b>后台管理</span>
	</a>
	<!-- Header Navbar: style can be found in header.less -->
	<nav class="navbar navbar-static-top">
		<!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
			role="button"> <span class="sr-only">Toggle navigation</span>
		</a>

		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">

				<li class="dropdown user user-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <img
						src="${pageContext.request.contextPath}/img/avatar5.png"
						class="user-image" alt="User Image"> <span class="hidden-xs">
							<security:authentication property="principal.username" />
					</span>

				</a>
					<ul class="dropdown-menu">
						<!-- User image -->
						<li class="user-header"><img
							src="${pageContext.request.contextPath}/img/avatar5.png"
							class="img-circle" alt="User Image"></li>


						<h3 style="text-align: center">你好啊! <text style="color: #00a7d0"><%=session.getAttribute("userName")%></text></h3>

						<!-- Menu Footer-->
						<li class="user-footer">
							<div class="pull-left">
								<a href=${pageContext.request.contextPath}/pages/changepwd.jsp class="btn btn-default btn-flat">修改密码</a>
							</div>
							<div class="pull-right">
								<a onclick="deLog()"
									class="btn btn-default btn-flat">注销</a>
							</div>
<%--							<div class="pull-right">
								<a href="${pageContext.request.contextPath}/pages/login.jsp"
									class="btn btn-default btn-flat">注销</a>
							</div>--%>
						</li>
					</ul></li>

			</ul>
		</div>
	</nav>
</header>
<!-- 页面头部 /-->