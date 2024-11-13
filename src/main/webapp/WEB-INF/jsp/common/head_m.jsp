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
    <title>블루브릭 | BlueBrick</title>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-132065217-2"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-132065217-2');

  <!-- Facebook Pixel Code -->
	!function(f,b,e,v,n,t,s)
	{
		if(f.fbq)return;n=f.fbq=function(){
			n.callMethod?n.callMethod.apply(n,arguments):n.queue.push(arguments)
		};

		if(!f._fbq)f._fbq=n;
		n.push=n;
		n.loaded=!0;
		n.version='2.0';

		n.queue=[];
		t=b.createElement(e);
		t.async=!0;

		t.src=v;
		s=b.getElementsByTagName(e)[0];

		s.parentNode.insertBefore(t,s)
	}(window,document,'script', 'https://connect.facebook.net/en_US/fbevents.js');

	fbq('init', '132986102262923');
	fbq('track', 'PageView');
</script>

<noscript>
	<img src="https://www.facebook.com/tr?id=132986102262923&ev=PageView&noscript=1" height="1" width="1" >
</noscript>
<!-- End Facebook Pixel Code -->

    <meta charset="utf-8">
    <meta http-equiv="Expires" content="0">
    <meta http-equiv="imagetoolbar" content="no">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="user-scalable=no,initial-scale=1,maximum-scale=1,minimum-scale=1,width=device-width,target-densitydpi=high-dpi">
    <!-- <meta name="viewport" content="user-scalable=no,width=1080"> -->

<meta name="keywords" content="블루브릭, 세종텔레콤, BlueBrick, bluebrick, BLUEBRICK, 블록체인, 메인넷, BaaS, baas, B-Brick, b-brick"> 
<meta name="description" content="DIGITAL TRANSFORMATION, 변화의 시작. 세종텔레콤 블록체인 플랫폼 블루브릭."> 
<meta name="ROBOTS" content="ALL"> 
<meta name="ROBOTS" content="INDEX,FOLLOW">

<meta property="og:type" content="website">
<meta property="og:title" content="BlueBrick">
<meta property="og:image" content="https://www.bluebrick.io/newbluebrick/public/imgs/com/newlogo.jpg">
<meta property="og:url" content="https://www.bluebrick.io/">
<meta property="og:description" content="DIGITAL TRANSFORMATION, 변화의 시작. 세종텔레콤 블록체인 플랫폼 블루브릭.">

<meta name="google-site-verification" content="c1CIFH2d6cBj-oQeIWOM0ztxb2MoSNlkavvelNrbP6s" />
<!-- <meta name="naver-site-verification" content="2eae7b4b7a215c48a8305039b9a248faa3193043" /> -->
<meta name="naver-site-verification" content="8c21a5d85875435d4f3118d3de3211fee73c7843" />

<link rel="canonical" href="https://www.bluebrick.io/">

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
