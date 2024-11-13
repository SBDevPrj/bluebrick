<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="java.util.List" %>
<%@ page import="org.apache.commons.text.StringEscapeUtils" %>
<%@ page import="com.sejong.newbluebrick.model.BoardContent" %>
<%@ page import="org.springframework.data.domain.Page" %>


<header class="header_mc">
     <div class="content_mc">
         <h1 class="logo_mc"><a href="<c:url value="/?lang=${param.lang }&"/>"><img src="<c:url value="/public/imgs/com/logo.png"/>" alt=""></a></h1>

         <nav class="gnb_mc fn--p fw--500">
             <ul>
                 <li data-link="introduce"><h3 class="ht"><a href="<c:url value="/?lang=${param.lang }&link=introduce"/>">INTRODUCE</a></h3></li>
                 <li data-link="advantages"><h3 class="ht"><a href="<c:url value="/?lang=${param.lang }&link=advantage"/>">ADVANTAGES</a></h3></li>
                 <li data-link="news">
                     <h3 class="ht"><a href="<c:url value="/?lang=${param.lang }&link=news"/>">NOW BLUEBRICK</a></h3>

                     <nav class="gnb_sub_mc fw--500">
                         <ul>
                             <li data-link="news"><a href="<c:url value="/news/list?lang=${param.lang }&p=1"/>">NEWS</a></li>
                             <li data-link="notice"><a href="<c:url value="/notice/list?lang=${param.lang }&p=1"/>">NOTICE</a></li>
                         </ul>
                     </nav>
                 </li>
                 <li data-link="technique">
                     <h3 class="ht"><a href="<c:url value="/?lang=${param.lang }&link=technique"/>" >TECHNIQUE</a></h3>
                     <nav class="gnb_sub_mc fw--500">
                         <ul>
                             <li><a href="<c:url value="/technical?lang=${param.lang }&"/>" data-link="technique">TECHNIQUE</a></li>
                         </ul>
                     </nav>
                 </li>
             </ul>
<!--             <button type="button" class="btn_youtube ic-sets ty5-1"></button> -->
			<a href="https://www.youtube.com/channel/UCkJzOsQM9vzLjyAknWj6qxw" >
            <button type="button" class="btn_youtube ic-sets ty5-1"></button>
            </a>
             <div class="btn_language"><a href="/newbluebrick/?lang=&">KOR</a> / <a href="/newbluebrick/?lang=en&">ENG</a></div>


         </nav>
     </div>
 </header>