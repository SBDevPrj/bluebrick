<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="com.sejong.newbluebrick.model.BoardContent" %>
<%@ page import="java.util.List" %>
<%@ page import="org.springframework.util.StringUtils" %>
<%@ page import="org.apache.commons.text.StringEscapeUtils" %>


<% 
	String[] version  = new String[] {"PC_KOR", "PC_ENG", "MO_KOR", "MO_ENG"}; 
	List<BoardContent> boardContent  = (List<BoardContent>)request.getAttribute("boardContent");
%>

<!DOCTYPE html>
<html>
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




<title>New Blue Bricks</title>
</head>
<body>
	<div class="wrapper">
		
		<!-- SIDE BAR START -->
        <%@ include file="/WEB-INF/jsp/admin/common/sidebar.jsp"  %>
        <!-- SIDE BAR END -->
		
		
		
		<div class="main-panel"> 
			<div class="main-content">
			    <div class="container-fluid">
					<h2>NOTICE</h2>
					<!-- MAIN CONTENT START -->
					
			        <form:form name="submitForm" method="post" class="form-horizontal">
			        	<input name="num" type="hidden" value="<%=request.getParameter("num") %>">
						<%  
			        	for (String v : version){ 
			        		for (BoardContent bc : boardContent) { 
			        			if(v.equals(bc.getVersion())){
			        	%>
							<div class="card">
							    <div class="content">
						            <div class="form-group">
						                <label class="col-md-2 control-label">TITLE (<%=v %>)</label>
						                <div class="col-md-10">
						                    <input name="subject" type="text" disabled placeholder="title" class="form-control" value="<%=bc.getSubject() %>">
						                </div>
						            </div>
						            <div class="form-group">
						                <label class="col-md-2 control-label">Thumbnail IMG</label>
						                <div class="col-md-10">
						                	<div class="pull-left" style="width:126px;margin-right:10px;">
						                		<% 
						                			String thumbnailPath = bc.getTumbnailPath(); 
						                			if (StringUtils.isEmpty(thumbnailPath)){
						                		%>
							                		<a class="imageViewer" id="imageViewer_<%=v %>" href="<c:url value="/public/img/no-image-available.png"/>">
								                		<img class="thumbnailView" id="imageView_<%=v %>" src="<c:url value="/public/img/no-image-available.png"/>">
													</a>
						                		<%
						                			}else{
						                		%>
							                		<a class="imageViewer" id="imageViewer_<%=v %>" href="<c:url value="/uploadFile/"/><%=thumbnailPath %>">
								                		<img class="thumbnailView" id="imageView_<%=v %>" src="<c:url value="/uploadFile/"/><%=thumbnailPath %>">
													</a>
						                		<%
						                			}
						                		%>
					                		</div>
						                </div>
						            </div>
							    </div>
							</div>
							<div class="card">
							    <div class="content">
				            		<%=StringEscapeUtils.unescapeEcmaScript(bc.getContent()) %>
				            	</div>
				            </div>
			        	<%
			        			}
			        		}
			        	} 
			        	%>
			        </form:form>
					
					
					<!-- MAIN CONTENT END  -->
			    </div>
			</div>
		</div>
	</div>
	

<script src='<c:url value="/public/assets/js/jquery.min.js" />' type="text/javascript"></script>

<script src='<c:url value="/public/js/jquery.magnific-popup.js" />' type="text/javascript"></script>
<!-- 이미지 뷰어 관련 jquery.magnific-popup.js  -->
<script type="text/javascript">
$('.imageViewer').magnificPopup({
	type: 'image',
	closeOnContentClick: true,
	mainClass: 'mfp-img-mobile',
	image: {
		verticalFit: true
	}
});
</script>

</body>
</html>