<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="java.util.List" %>
<%@ page import="org.apache.commons.text.StringEscapeUtils" %>
<%@ page import="com.sejong.newbluebrick.model.BoardContent" %>
<%@ page import="org.springframework.data.domain.Page" %>

<%
	Page<BoardContent> pageContent  = (Page<BoardContent>)request.getAttribute("page");
%>

<!DOCTYPE html>
<html lang="ko">
<%@ include file="/WEB-INF/jsp/common/head_eng.jsp"  %>
<body>


<div class="wrap">
   <%@ include file="/WEB-INF/jsp/common/header_eng.jsp"  %>
    <script>
        dep1 = 2;
    </script>



    <div class="inner_mc notice_mc">

        <div class="content_mc">
            <div class="bd_list_header_mc">
                <h2 class="title">Notice</h2>
                <div class="search">
                	<form method="get">
                		<input type="hidden" name="p" value="1">
                		<input type="hidden" name="lang" value="${param.lang }">
                		<input type="text" name="search" placeholder="Enter keywords" value="${param.search }">
	                    <a href="javascript:document.search.submit();"><span class="ic-sets ty3-1"></span></a>
                	</form>
                </div>

            </div>


            <div class="notice_list_mc">
                <ul>
                	<%
	                	List<BoardContent> contents =  pageContent.getContent();
                		for (BoardContent bo :contents){
            		%>
	                    <li>
	                        <a href="<c:url value="/notice/view?num="/><%=bo.getItemNumber() %>&lang=${param.lang}&p=${param.p}">
	                        	<span class="title_s">Notice</span>
	                            <h3 class="n_list_title"><%=bo.getSubject() %></h3>
	                            <span class="date"><%=bo.getInsertedDateFormatted() %></span>
                            	<span class="ic-sets ty2-2"></span>
	                        </a>
	                    </li>
          			<%
                		}
                	%>
                </ul>
            </div>
            
            <c:out value="${pagination}" escapeXml="false" />

        </div>

    </div>


    <%@ include file="/WEB-INF/jsp/common/footer_eng.jsp"  %>
<%--     <%@ include file="/WEB-INF/jsp/common/youtube_pop.jsp"  %> --%>

</div>



</body>
</html>