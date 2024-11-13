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
<%@ include file="/WEB-INF/jsp/common/head.jsp"  %>

<style>
       #n_list_title_line{
           overflow: hidden;
           text-overflow: ellipsis;
           display: -webkit-box;
           -webkit-line-clamp: 2; 
           -webkit-box-orient: vertical;
       } 
</style>


<body>



<div class="wrap">
    <%@ include file="/WEB-INF/jsp/common/header.jsp"  %>

    <script>
        dep1 = 2;
    </script>



    <div class="inner_mc news_mc">

        <div class="content_mc">
            <div class="bd_list_header_mc">
                <h2 class="title">News</h2>
                <div class="search">
                	<form name="search" method="get">
                		<input type="hidden" name="p" value="1">
                		<input type="hidden" name="lang" value="${param.lang }">
                		<input type="text" name="search" placeholder="키워드를 입력해 주세요" value="${param.search }">
	                    <a href="javascript:document.search.submit();"><span class="ic-sets ty3-1"></span></a>
                	</form>
                </div>

            </div>


            <div class="news_list_mc">
                <ul>
                	<%
	                	List<BoardContent> contents =  pageContent.getContent();
                		for (BoardContent bo :contents){
            		%>
	                    <li>
	                        <a href="<c:url value="/news/view?num="/><%=bo.getItemNumber() %>&lang=${param.lang}&p=${param.p}">
	                        	<% if (bo.getTumbnailPath() != null && !"".equals(bo.getTumbnailPath())){ %>
	                        		<img style="max-height:457px" src="<c:url value="/uploadFile/"/><%=bo.getTumbnailPath() %>"/>
	                        	<% }else{ %>
	                        		<img style="max-height:457px" src="<c:url value="/public/img/no-image-available.png"/>"/>
	                        	<% } %>
	                            <h3 class="n_list_title" id="n_list_title_line"><%=bo.getSubject() %></h3>
<%-- 	                            <span class="date"><%=bo.getInsertedDateFormatted() %></span> --%>
                            	<p class="dotdot" stype="top:66%">
                            		<%=bo.contentForList()%>
                            	</p>
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




    <%@ include file="/WEB-INF/jsp/common/footer.jsp"  %>
<%--     <%@ include file="/WEB-INF/jsp/common/youtube_pop.jsp"  %> --%>

</div>



</body>
</html>