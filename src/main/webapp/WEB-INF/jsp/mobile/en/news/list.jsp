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
<%@ include file="/WEB-INF/jsp/common/head_m_eng.jsp"  %>
<body>


<div class="wrap">
    <%@ include file="/WEB-INF/jsp/common/header_m_eng.jsp"  %>

    <script>
        dep1 = 2;
        //link = "${param.link}";
    </script>

	<div class="inner_mc sub_top_mc scroll_top fn--p">
        <h3 class="title">NEWS</h3>
    </div>


    <div class="inner_mc news_mc">

        <div class="content_mc">
            <%-- <div class="bd_list_header_mc">
                <h2 class="title">News</h2>
                <div class="search">
                	<form name="search" method="get">
                		<input type="hidden" name="p" value="1">
                		<input type="hidden" name="lang" value="${param.lang }">
                		<input type="text" name="search" placeholder="키워드를 입력해 주세요" value="${param.search }">
	                    <a href="javascript:document.search.submit();"><span class="ic-sets ty3-1"></span></a>
                	</form>
                </div>
            </div> --%>

            <div class="news_list_mc">
                <ul id="listContainer">
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
	                            <h3 class="n_list_title"><%=bo.getSubject() %></h3>
	                            <span class="date"><%=bo.getInsertedDateFormatted() %></span>
                            	<p class="dotdot">
                            		<%=bo.contentForList()%>
                            	</p>
	                        </a>
	                    </li>
          			<%
                		}
                	%>
                </ul>
                <a href="javascript:loadMore();" class="more_btn btn-sets ty3-4 bef"> More</a>
            </div>


            <div id="listTemplate" style="display:none;">
            	<li>
            		<a href="<c:url value="/news/view/?num="/>&lang=${param.lang}&p=">
            			<img style="max-height:457px" src=""/>
            			<h3 class="n_list_title"></h3>
            			<span class="date"></span>
            			<p class="dotdot"></p>
            		</a>
				</li>
            </div>

        </div>
    </div>

    <script>
	var page = "${param.p}";
	if (page == ""){
		page = 1;
	}
	var lang = "${param.lang}";
	var context = "<c:url value="/"/>";
	var noMore = false;

	loadMore = function(){
		if (noMore){
			return false;
		}
		page = Number(page) + 1;
		$.get("<c:url value="/news/list/more"/>", {p:page, lang:lang}, function(data, status){
			console.log(data);
			if (data.boardContentList.length == 0){
				noMore = true;
				return false;
			}
			$.each(data.boardContentList, function(i,e){
				console.log(e);
				var li = $("#listTemplate>li").clone();
				li.find("a").attr("href", context + "news/view/?num=" + e.itemNumber + "&lang=" + lang + "&p=" + page);
				if (e.tumbnailPath == ""){
					li.find("img").attr("src", context + "public/img/no-image-available.png");
				}else{
					li.find("img").attr("src", context + "uploadFile/" + e.tumbnailPath);
				}
				li.find(".dotdot").text(e.contentForList);
				li.find("h3").text(e.subject);
				li.find(".date").text(e.insertedDateFormatted);

				$("#listContainer").append(li);

			});
		});

	}
    </script>

    <%@ include file="/WEB-INF/jsp/common/footer_m_eng.jsp"  %>

</div>



</body>
</html>