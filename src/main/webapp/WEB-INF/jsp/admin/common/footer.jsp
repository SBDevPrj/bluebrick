<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="java.util.List" %>
<%@ page import="org.apache.commons.text.StringEscapeUtils" %>
<%@ page import="com.sejong.newbluebrick.model.BoardContent" %>
<%@ page import="org.springframework.data.domain.Page" %>


 <footer class="footer_mc fn--n fw--200">
     <div class="content_mc">

         <h2 class="logo_sp"><img src="<c:url value="/public/imgs/com/logo2.png"/>" alt=""></h2>
         <nav class="etc_mc">
             <ul>
                 <!-- <li><a href="<c:url value="/introduce?lang=${param.lang }"/>">회사소개</a></li> -->

                 <li><a href="https://www.sejongtelecom.net/ " target="_blank">회사소개</a></li>
                 <li><a href="<c:url value="/privacy?lang=${param.lang }"/>">개인정보취급방침</a></li>
             </ul>
         </nav>

         <div class="info_sp">
             세종텔레콤 주식회사 ㅣ 고객센터 <a href="tell:1688-1000">1688-1000</a> ㅣ 서울시 강동구 상일로 10길 36(상일동,세종빌딩) ㅣ 대표 : 김형진 ㅣ 사업자번호 : 128-21-0729777
         </div>

         <div class="copyright_mc">Copyrightⓒ Bluebrick. All Rights Reserved.</div>

     </div>
 </footer>