<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<% String[] version  = new String[] {"PC_KOR", "PC_ENG", "MO_KOR", "MO_ENG"}; %>

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
                    <div>
                    	<h2>NOTICE</h2>
                    </div>
                    <div class="pull-right" style="margin-top: -57px;">
                    	<a type="button" href="?p=${param.p}&v=PC_KOR" class="btn btn-wd <c:if test="${param.v eq 'PC_KOR'}">btn-primary btn-fill</c:if>">PC(KOR)</a>
                    	<a type="button" href="?p=${param.p}&v=PC_ENG" class="btn btn-wd <c:if test="${param.v eq 'PC_ENG'}">btn-primary btn-fill</c:if>">PC(ENG)</a>
                    	<a type="button" href="?p=${param.p}&v=MO_KOR" class="btn btn-wd <c:if test="${param.v eq 'MO_KOR'}">btn-primary btn-fill</c:if>">Mobile(KOR)</a>
                    	<a type="button" href="?p=${param.p}&v=MO_ENG" class="btn btn-wd <c:if test="${param.v eq 'MO_ENG'}">btn-primary btn-fill</c:if>">Mobile(ENG)</a>
                    </div>
                    
                    <!-- MAIN CONTENT START -->
                    <div class="card">
                        <div class="content">
                        	<table class="table">
                        		<tr>
	                        		<th class="col-xs-1">NO</th>
                        			<th class="col-xs-1">VERSION</th>
                        			<th class="col-xs-8">TITLE</th>
                        			<th class="col-xs-2">DATE</th>
                        		</tr>
							<c:forEach items="${page.content}" var="bo" varStatus="status">
								<tr>
									<td>
										<a href="<c:url value="/admin/notice/update?num=${bo.itemNumber}#${bo.version}" />">
										${bo.itemNumber}
										</a>
									</td>
									<td>
									${bo.version}
									</td>
									<td>
										<a class="black" href="<c:url value="/admin/notice/update?num=${bo.itemNumber}#${bo.version}" />">
											${bo.subject}
											<c:if test="${bo.subject eq ''}">[제목없음]</c:if>
										</a>
									</td>
									<td>
									<fmt:formatDate value="${bo.insertedDate}" pattern="yyyy.MM.dd"/>
									</td>
								</tr>
							</c:forEach>
							</table>
                        </div>
                    </div>
                    
                    <div style="text-align:center;">
 	                   <c:out value="${pagination}" escapeXml="false" />
                    </div>
                    
                    <div class="pull-right">
                        <a type="button" href="<c:url value="/admin/notice/write#" />" class="btn btn-primary btn-fill btn-wd">WRITE</a>
                    </div>
                    
                    <!-- MAIN CONTENT END  -->
                </div>
            </div>
        </div>
    </div>

<script src='<c:url value="/public/assets/js/jquery.min.js" />' type="text/javascript"></script>
<script src='<c:url value="/public/js/jquery.magnific-popup.js" />' type="text/javascript"></script>
<script src='<c:url value="/public/assets/js/sweetalert.min.js" />'></script>
<script type="text/javascript">
$(function(){
	<% 
	/* Server RedirectAttributes 출력 */
	String message = (String)request.getAttribute("message");
	if (message != null){ 
	%>
		swal("<%=message %> ");
	<% }%>
})
</script>

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