<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="java.util.List" %>
<%@ page import="org.apache.commons.text.StringEscapeUtils" %>
<%@ page import="com.sejong.newbluebrick.model.BoardContent" %>
<%@ page import="org.springframework.data.domain.Page" %>

<!DOCTYPE html>
<html lang="ko">
<%@ include file="/WEB-INF/jsp/common/head.jsp"  %>
<body>


<div class="wrap">

    <%@ include file="/WEB-INF/jsp/common/header.jsp"  %>

    <div class="inner_mc sub_top_mc">
        <div class="content_mc">
            <h2 class="title fn--p">Advantage</h2>
        </div>
    </div>

    <div class="inner_mc privacy_mc ">
        <div class="content_mc">


        </div>
    </div>


    <%@ include file="/WEB-INF/jsp/common/footer.jsp"  %>
<%--     <%@ include file="/WEB-INF/jsp/common/youtube_pop.jsp"  %> --%>

</div>



</body>
</html>