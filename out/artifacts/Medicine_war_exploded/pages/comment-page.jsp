<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <title>Medicine|留言板</title>
    <style>
        .main-header-pg img{
            width: 100%;
        }
        .main-header-txt{
            /*position: absolute;*/
            top: 10%;
            margin-left: 12%;
            color: #6adcca;
            /*border: 10px solid;*/
            width: 900px;
            height: 200px;
        }
        .main-header-txt h1{
            font-size: 65px;
        }
        .main-header-txt p{
            margin-top: 3%;
            font-size: 20px;
        }
        .cmt-list{
            background-color: #edfdfb;
            border-radius: 14px;
            width: 70%;
            margin-left: 15%;
            height: 100px;
            margin-top: 20px;
            box-shadow:    -19px 19px 74px #c9d7d5,
            19px -19px 74px #ffffff;
            align-items: center;
        }
        .cmt-submit{
            background-color: #edfdfb;
            border-radius: 14px;
            width: 70%;
            margin-left: 15%;
            height: 100px;
            margin-top: 20px;
            box-shadow:    -19px 19px 74px #c9d7d5,
            19px -19px 74px #ffffff;
            align-items: center;
        }
        input{
            border:1px solid #ccc;
            padding:7px 0px;
            border-radius:3px;
            padding-left:5px;
            -webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow:inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition:border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition:border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition:border-color ease-in-out .15s,box-shadow ease-in-out .15s
        }
        input:focus{
            border-color:#66afe9;
            outline:0;
            -webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
            box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
        }

    </style>


    <script type="text/javascript">
        function insertCmt(){
            var date=new Date();
            var cmt={
                context:document.getElementById('content').value,
                writer:document.getElementById('writer').value,
                email:document.getElementById('email').value,
                time:date.getFullYear()+'-'+date.getMonth()+'-'+date.getDate()+' '+date.getHours()+':'+date.getMinutes()+':'+date.getSeconds()
            }
            $('#newcmt').removeAttr('hidden')
            $('#newcmt-writer').text(cmt.writer)
            $('#newcmt-content').text(cmt.context)
            $('#newcmt-email').text(cmt.email)
            $('#newcmt-time').text(cmt.time)
        }




    </script>
    <script src="https://cdn.jsdelivr.net/npm/vue@2.6.14"></script>


    <script type="text/javascript" src="/js/db.js"></script>

    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css" />

    <!-- fonts style -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">

    <!--owl slider stylesheet -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

    <!-- font awesome style -->
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" />
    <!-- responsive style -->
    <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet" />

</head>
<%--<body background="/img/hero-bg.png" style="background-repeat: no-repeat;background-size: cover">--%>

<body style="background-color: #edfdfb" onload="connectToDB()">

<%--<%--%>
<%--	response.sendRedirect(request.getContextPath()+"/pages/main.jsp");--%>
<%--%>--%>
<div class="pho_area">

    <!-- header section strats -->
    <header class="header_section" style="background-color: #6adcca; color: white">
        <div class="container-fluid">
            <nav class="navbar navbar-expand-lg custom_nav-container ">
                <a class="navbar-brand" href="../index.jsp" style="color: white">
                    <h3>
                        Medicine
                    </h3>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse ml-auto" id="navbarSupportedContent">
                    <ul class="navbar-nav  ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="../index.jsp" style="color: white">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/pages/comment-page.jsp" style="color: white"> 留言板 </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.jsp" style="color: white"> 关于我们 </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/user/list" style="color: white"> 用户中心 </a>
                        </li>
                    </ul>

                </div>
            </nav>
        </div>
    </header>
    <!-- end header section -->

</div>

<div class="main-header-txt">
    <h1>留言板</h1>
    <p>说说你的想法......<br>
</div>

<div style="min-height: 800px">
    <div id="cmtls">
        <c:forEach items="${commentlist}" var="item">
            <div class="row cmt-list" style="margin-left: 15%">
                <span class="col-md-12">${item.content}</span>
                <span class="col-md-3">${item.writer}</span>
                <span class="col-md-6">${item.email}</span>
                <span class="col-md-2">${item.updateTime}</span>
            </div>
        </c:forEach>

        <c:forEach begin="0" step="1" end="10">
            <div class="row cmt-list" style="margin-left: 15%">
                <span class="col-md-12">测试评论测试评论测试评论测试评论测试评论测试评论测试评论测试评论</span>
                <span class="col-md-3">Aealen</span>
                <span class="col-md-6">fangmingxuan@aowu.tech</span>
                <span class="col-md-2">2022-10-14 14:54:32</span>
            </div>
        </c:forEach>

        <div id="newcmt" class="row cmt-list" style="margin-left: 15%" hidden="hidden">
            <span id="newcmt-content" class="col-md-12"></span>
            <span id="newcmt-writer" class="col-md-3"></span>
            <span id="newcmt-email" class="col-md-6"></span>
            <span id="newcmt-time" class="col-md-2"></span>
        </div>
    </div>
    <div class="cmt-submit">
<%--        <form class="row" action="${pageContext.request.contextPath}/comment/add" method="post" style="width: 80%;margin-left: 10%;">--%>
        <form class="row"  style="width: 80%;margin-left: 10%;">
            <input class="col-md-12" id="content" type="text" placeholder="输入留言内容..." name="content" style="margin-top: 10px">
            <input class="col-md-3" id="writer" type="text" placeholder="输入您的昵称..." name="writer">
            <input class="col-md-6" id="email" type="email" placeholder="输入您的邮箱" name="email">
            <%--            <input class="col-md-12" type="text" id="time" value="" name="time" hidden="hidden">--%>
            <button class="col-md-3" type="button" onclick="insertCmt()" value="确认" >确认</button>
        </form>
    </div>
</div>

<%--<form action="/comment/listjson" id="smt" name="smt"><button type="submit">111</button></form>--%>

<!-- footer section -->
<footer class="footer_section" style="background-color: #6adcca; color: white">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-lg-3 footer_col">
                <div class="footer_contact">
                    <h4>
                        联系我们
                    </h4>
                    <div class="contact_link_box">
                        <a href="">
							<span>
							  Location: xxxx市xxxx区xxx路xxx号
							</span>
                        </a><br>
                        <a href="">
							<span>
								  Call: +86 12345678900
							</span>
                        </a><br>
                        <a href="">
							<span>
							  Mail: xxx@xxx.com
							</span>
                        </a>
                    </div>
                </div>

            </div>
            <div class="col-md-6 col-lg-3 footer_col">
                <div class="footer_detail">
                    <h4>
                        关于我们
                    </h4>
                    <p>
                        在大灾面前，冲在第一线的除了我们最可爱的人，还有医务人员，他们在自己的岗位上默默的为灾民减轻痛苦。
                    </p>
                </div>
            </div>
            <div class="col-md-6 col-lg-2 mx-auto footer_col">
                <div class="footer_link_box">
                    <h4>
                        链接
                    </h4>
                    <div class="footer_links">
                        <a class="active" href="index.html">
                            Home
                        </a>
                        <a class="" href="pages/about.html">
                            About
                        </a>
                        <a class="" href="/pages/comment-page.jsp">
                            留言板
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 footer_col ">
                <h4>
                    订阅我们
                </h4>
                <form action="#">
                    <input type="email" placeholder="Enter email" />
                    <button type="submit">
                        订阅
                    </button>
                </form>
            </div>
        </div>
        <div class="footer-info">
            <p>
                &copy; <span id="displayYear"></span> All Rights Reserved By
                <a href="https://aowu.tech/">Aowu.tech</a>
            </p>
        </div>
    </div>
</footer>
<!-- footer section -->


<!-- jQery -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
<!-- popper js -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
</script>
<!-- bootstrap js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<!-- owl slider -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
</script>
<!-- custom js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script>
<!-- Google Map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap">
</script>
<!-- End Google Map -->



</body>
</html>