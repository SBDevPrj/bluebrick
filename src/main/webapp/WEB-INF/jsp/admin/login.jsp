<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta name="_csrf_header" content="${_csrf.headerName}"/>

<link rel="icon" type="image/png" href='<c:url value="/public/img/favicon.ico"/>'>
<!-- Bootstrap core CSS     -->
<link href='<c:url value="/public/assets/css/bootstrap.min.css"/>' rel="stylesheet" />

<!--  Light Bootstrap Dashboard core CSS    -->
<link href='<c:url value="/public/assets/css/light-bootstrap-dashboard.css?v=1.4.1"/>' rel="stylesheet"/>

<!--     Fonts and icons     -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
<link href='<c:url value="/public/assets/css/pe-icon-7-stroke.css"/>' rel="stylesheet" />
<link href='<c:url value="/public/css/magnific-popup.css"/>' rel="stylesheet" />
<link href='<c:url value="/public/css/admin.css"/>' rel="stylesheet" />


<!-- Light Bootstrap Dashboard Core javascript and methods -->
<script src='<c:url value="/public/assets/js/jquery.min.js" />' type="text/javascript"></script>
<script src='<c:url value="/public/assets/js/bootstrap.min.js" />' type="text/javascript"></script>
<script src='<c:url value="/public/assets/js/light-bootstrap-dashboard.js?v=1.4.1" />' ></script>


<title>New Blue Bricks</title>
</head>

<body>
        <%
                response.sendRedirect("https://bluebrick.io/newbluebrick/");
        %>
	<nav class="navbar navbar-transparent navbar-absolute">
	    <div class="container">
	        <div class="navbar-header">
	            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
	                <span class="sr-only"><!-- Toggle navigation --></span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	            </button>
	            <a class="navbar-brand" href="../dashboard.html"><!-- Light Bootstrap Dashboard PRO --></a>
	        </div>
	        <div class="collapse navbar-collapse">
	
	            <ul class="nav navbar-nav navbar-right">
	                <li>
	                   <a href="register.html">
	                        <!-- Register -->
	                    </a>
	                </li>
	            </ul>
	        </div>
	    </div>
	</nav>
	
	
	<div class="wrapper wrapper-full-page">
	    <div class="full-page login-page" data-color="orange" data-image="<c:url value="/public/assets/img/full-screen-image-1.jpg" />">
	
	    <!--   you can change the color of the filter page using: data-color="blue | azure | green | orange | red | purple" -->
	        <div class="content">
	            <div class="container">
	                <div class="row">
	                    <div class="col-md-4 col-sm-6 col-md-offset-4 col-sm-offset-3">
	                    	<c:url value="/admin/login" var="loginUrl"/>
	                        <form:form action="${loginUrl }" method="post">
	                        <!--   if you want to have the card without animation please remove the ".card-hidden" class   -->
	                            <div class="card">
	                                <div class="header text-center">LOGIN</div>
	                                <div class="content">
	                                	<c:if test="${param.error != null}">
											<p class="text-danger">
												${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message} 
											</p>
										</c:if>
										<c:if test="${param.logout != null}">
											<p class="text-primary">
												로그아웃 되었습니다.
											</p>
										</c:if>
	                                    <div class="form-group">
	                                        <label>ID</label>
	                                        <input name="username" type="text" placeholder="Enter ID" class="form-control">
	                                    </div>
	                                    <div class="form-group">
	                                        <label>Password</label>
	                                        <input name="password" type="password" placeholder="Password" class="form-control">
	                                    </div>
	                                </div>
	                                <div class="footer text-center">
	                                    <button type="submit" class="btn btn-fill btn-warning btn-wd">Login</button>
	                                </div>
	                            </div>
	                        </form:form>
	
	                    </div>
	                </div>
	            </div>
	        </div>
	
	    	<footer class="footer footer-transparent">
	            <div class="container">
	                <nav class="pull-left">
	                </nav>
	                <p class="copyright pull-right">
	                    <!-- &copy; <script>document.write(new Date().getFullYear())</script> <a href="http://www.creative-tim.com">Creative Tim</a>, made with love for a better web -->
	                </p>
	            </div>
	        </footer>
	
	    </div>
	</div>
</body>

<script type="text/javascript">
   /*  $().ready(function(){
       lbd.checkFullPageBackgroundImage();
       setTimeout(function(){
           $('.card').removeClass('card-hidden');
       }, 700)
   }); */
</script>


<% 
	String message = (String)request.getAttribute("message");
	if (message != null){ 
%>
	<script>
		window.onload = function() {
			alert("<%=message %>");
		};
	</script>
<% }%>
    
</html>

