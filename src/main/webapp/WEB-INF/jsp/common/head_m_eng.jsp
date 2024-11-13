<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="java.util.List" %>
<%@ page import="org.apache.commons.text.StringEscapeUtils" %>
<%@ page import="com.sejong.newbluebrick.model.BoardContent" %>
<%@ page import="org.springframework.data.domain.Page" %>

<head>
    <title>BlueBrick</title>
    <meta charset="utf-8">
    <meta http-equiv="Expires" content="0">
    <meta http-equiv="imagetoolbar" content="no">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="user-scalable=no,initial-scale=1,maximum-scale=1,minimum-scale=1,width=device-width,target-densitydpi=high-dpi">
    <!-- <meta name="viewport" content="user-scalable=no,width=1080"> -->
    <link rel="stylesheet" href="<c:url value="/public/css/common_m.css"/>">
    <link rel="stylesheet" href="<c:url value="/public/css/default.css"/>">
    <link rel="stylesheet" href="<c:url value="/public/css/jxslider-ver-x3.css"/>">
    <link rel="stylesheet" href="<c:url value="/public/css/fonts.css"/>">
    <link rel="stylesheet" href="<c:url value="/public/css/layout_m.css"/>">
<link rel="shortcut icon" href="<c:url value="/public/imgs/bluebrick1.ico" />" type="image/x-icon">
<link rel="icon" href="<c:url value="/public/imgs/bluebrick1.ico" />" type="image/x-icon">
    <script type="text/javascript" src="<c:url value="/public/js/jquery-1.9.1.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/public/js/jquery-migrate-1.2.1.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/public/js/jxslider-ver-x8.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/public/js/jquery.easing.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/public/js/jquery.dotdotdot.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/public/js/iscroll.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/public/js/default_m.js"/>"></script>
</head>
