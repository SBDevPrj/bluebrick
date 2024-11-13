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

            <!-- <h2 class="logo_sp"><img src="<c:url value="/public/imgs/m/com/logo2.png"/>" alt=""></h2> -->
            <button class="btn_top btn-sets ty1-4 aft"></button>

            <nav class="etc_mc">
                <ul>
                    <li><a href="https://www.sejongtelecom.net/en/pages/sejong/sejong" target="_blank">About us</a></li>
                    <li><a href="<c:url value="/privacy?lang=${param.lang }"/>">Privacy Policy</a></li>
                </ul>
            </nav>

            <div class="info_sp">
                <!-- 세종텔레콤 주식회사 ㅣ 고객센터 <a href="tell:1688-1000">1688-1000</a> (유료) , <a href="tell:080.889.1000">080.889.1000</a> (무료) <br>
                서울시 강동구 상일로 10길 36(상일동,세종빌딩) ㅣ 대표 : 김형진
 -->
                SEJONG Telecom Incorporated
                Customer Satisfaction Center <br> <a href="tell:1688-1000">1688-1000 (Caller-paid)</a> , <a href="tell:080.889.1000">080-889-1000 (toll free)</a> <br>
                #36 Sangil-ro 10-gil, Gangdong-gu, Seoul (Sangil-dong) <br> CEO : HJ Kim, KY Yoon
            </div>

            <div class="copyright_mc">COPYRIGHT ⓒ BlueBrick <br>and SEJONG Telecom Incorporated. <br> ALL RIGHTS RESERVED</div>

        </div>
    </footer>
