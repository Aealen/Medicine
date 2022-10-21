<%--
  Created by IntelliJ IDEA.
  User: Aealen
  Date: 10/19/2022
  Time: 9:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <title>Medicine|关于我们</title>
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

    <style>
        .main-header-pg{
            width: 100%;

        }
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
        .doc-list{
            background-color: #edfdfb;
            border-radius: 14px;
            width: 70%;
            margin-left: 15%;
            height: 400px;
            margin-top: 20px;
            box-shadow:    -19px 19px 74px #c9d7d5,
            19px -19px 74px #ffffff;
            align-items: center;
            position: relative;
        }
        .doc-list-left{
            width: 380px;
            height: 100%;
            position: absolute;
            left: 0;
            top: 0;
        }
        .doc-list-right{
            margin-left: 420px;
            margin-right: 5%;
        }
        .doc-list-right-h1{
            margin-top: 5%;
            font-size: 50px;
        }
        .doc-list-right-p{
            margin-top: 5%;
            font-size: 23px;
        }
        .doc-list img{
            /*float: left;*/
            margin-top: 5%;
            margin-left: 5%;
            height: 90%;
            width: 90%;
            border-radius: 12px;
        }
        .doc-list p{
            float: left;
        }
    </style>

</head>
<%--<body background="/img/hero-bg.png" style="background-repeat: no-repeat;background-size: cover">--%>

<body>
<%--<%--%>
<%--	response.sendRedirect(request.getContextPath()+"/pages/main.jsp");--%>
<%--%>--%>

<!-- header section strats -->
<header class="header_section" style="background-color: #6adcca; color: white">
    <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
            <a class="navbar-brand" href="index.jsp" style="color: white">
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
                        <a class="nav-link" href="../index.jsp" style="color: white">Home </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/pages/comment-page.jsp" style="color: white"> 留言板 </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pages/about.jsp" style="color: white"> 关于我们 <span class="sr-only">(current)</span></a>
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



<div style="min-height: 800px;margin-bottom: 100px">
<%--    <div class="main-header-pg">--%>
<%--        <img src="../img/hero-bg.png">--%>
        <div class="main-header-txt">
            <h1>关于我们</h1>
            <p>医者，施以仁术以救人，施以仁心以救魂<br>
        </div>
<%--    </div>--%>

    <div class="doc-list">
        <div class="doc-list-left">
            <img src="../img/zns.png">
        </div>
        <div class="doc-list-right">
            <p class="doc-list-right-h1">钟南山</p>
            <p class="doc-list-right-p">钟南山院士长期从事呼吸内科的医疗、教学、科研工作。重点开展哮喘，慢阻肺疾病，呼吸衰竭和呼吸系统常见疾病的规范化诊疗、疑难病、少见病和呼吸危重症监护与救治等方面的研究。并首次证实了隐匿型哮喘的存在。他所领导的研究所对慢性不明原因咳嗽诊断成功率达85%，重症监护室抢救成功率达91%。</p>
        </div>
    </div>
    <div class="doc-list">
        <div class="doc-list-left">
            <img src="../img/tyy.png">
        </div>
        <div class="doc-list-right">
            <p class="doc-list-right-h1">屠呦呦</p>
            <p class="doc-list-right-p">
                多年从事中药和西药结合研究，突出贡献是创制新型抗疟药青蒿素和双氢青蒿素。1972年成功提取分子式为C15H22O5的无色结晶体，命名为青蒿素。2011年9月，因发现青蒿素——一种用于治疗疟疾的药物，挽救了全球特别是发展中国家数百万人的生命获得拉斯克奖和葛兰素史克中国研发中心“生命科学杰出成就奖” 。2015年10月获得诺贝尔生理学或医学奖，理由是她发现了青蒿素，该药品可以有效降低疟疾患者的死亡率。她成为首获科学类诺贝尔奖的中国人。            </p>
        </div>
    </div>
    <div class="doc-list">
        <div class="doc-list-left">
            <img src="../img/llj.png">
        </div>
        <div class="doc-list-right">
            <p class="doc-list-right-h1">李兰娟</p>
            <p class="doc-list-right-p">
                李兰娟从事传染病临床、科研和教学工作40余年，擅长各类肝炎、感染性疾病、新发突发传染病诊治，尤其是肝衰竭、病毒性肝炎、肝病微生态研究。作为中国人工肝开拓者，创建独特有效的李氏人工肝支持系统治疗重型肝炎获重大突破。首次提出感染微生态学理论，从微生态角度来审视感染的发生、发展和结局，为感染防治提供了崭新的思路，还从基因的角度首次揭示肠道菌群与肝硬化的秘密        </div>
    </div>

</div>





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