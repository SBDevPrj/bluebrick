<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<c:set var="path" value="${requestScope['javax.servlet.forward.servlet_path']}" /> 


<div class="sidebar" data-color="orange" data-image='<c:url value="/assets/img/full-screen-image-3.jpg" />'>
    <div class="logo">
        <a href="#" class="simple-text logo-mini">
            &nbsp;&nbsp;&nbsp;&nbsp;
        </a>
        <a href="#" class="simple-text logo-normal">
            관리자
        </a>
    </div>

    <div class="sidebar-wrapper">
        
        <ul class="nav">
            <li class="menu <c:if test="${fn:startsWith(path, '/admin/news')}">active</c:if>">
                <a href="<c:url value="/admin/news/list?p=1&v=PC_KOR#" />">
                    <i class="pe-7s-news-paper"></i>
                    <p class="menu-name">NEWS</p>
                </a>
            </li>
            <li class="menu <c:if test="${fn:startsWith(path, '/admin/notice')}">active</c:if>">
                <a href="<c:url value="/admin/notice/list?p=1&v=PC_KOR#" />">
                    <i class="pe-7s-speaker"></i>
                    <p class="menu-name">NOTICE</p>
                </a>
            </li>
            <li class="menu" style="display:none;">
                <a href="#">
                    <i class="pe-7s-alarm"></i>
                    <p class="menu-name">POPUP</p>
                </a>
            </li>
            <li class="menu" style="display:none;">
                <a href="#">
                    <i class="pe-7s-mail"></i>
                    <p class="menu-name">NEWSLETTER</p>
                </a>
            </li>
            
            <li class="menu">
                <a type="button" class="btn btn-danger btn-fill btn-wd" href="javascript:document.formLogout.submit();">LOGOUT</a>
            </li>
        </ul>
    </div>
</div>

<c:url value="/admin/logout" var="logoutUrl"/>
<form name="formLogout" action="${logoutUrl }" method="post">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>   
	