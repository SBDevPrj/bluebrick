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
    <!--
        <div class="movie_mc on">
            <div class="player">
                <iframe src="https://www.youtube.com/embed/Ww0wYbNDmws?rel=0&vq=hd720&controls=1&showinfo=1&autoplay=1&loop=1&wmode=transparent&playlist=Ww0wYbNDmws" frameborder="0"></iframe>
            </div>
        </div>
    -->

        <div class="content_mc">
            <div class="btn_gnb_open">
                <span></span>
                <span></span>
                <span></span>
            </div>
            <h1 class="logo_mc"><a href="<c:url value="/?lang=${param.lang }&"/>"><img src="<c:url value="/public/imgs/m/com/logo.png"/>" alt=""></a></h1>

            <nav class="gnb_mc fn--p fw--500">
                <div class="btn_gnb_close">
                    <span></span>
                    <span></span>
                </div>

                <div class="iscroll" id="iscroll">
                    <div class="icont">
                        <ul>
                            <li data-link="introduce"><h3 class="ht"><a href="<c:url value="/introduce/?lang=${param.lang }"/>">INTRODUCE</a></h3></li>
                            <li data-link="advantages"><h3 class="ht"><a href="<c:url value="/advantage/?lang=${param.lang }"/>">ADVANTAGES</a></h3></li>
                            <li data-link="news">
                                <h3 class="ht"><a href="<c:url value="/news/list?lang=${param.lang }&p=1"/>">NOW BLUEBRICK</a></h3>

                                <nav class="gnb_sub_mc fw--400">
                                    <ul>
                                        <li data-link="news"><a href="<c:url value="/news/list?lang=${param.lang }&p=1"/>">NEWS</a></li>
                                        <li data-link="notice"><a href="<c:url value="/notice/list?lang=${param.lang }&p=1"/>">NOTICE</a></li>
                                    </ul>
                                </nav>
                            </li>
                            <li data-link="technique">
                                <h3 class="ht"><a href="<c:url value="/technical/?lang=${param.lang }"/>">TECHNIQUE</a></h3>
                                <nav class="gnb_sub_mc fw--400">
                                    <ul>
                                        <li><a href="<c:url value="/technical?lang=${param.lang }"/>" data-link="technique">TECHNIQUE</a></li>
                                    </ul>
                                </nav>
                            </li>
                            <li>
                                <h3 class="ht">
                                <a href="https://www.youtube.com/channel/UCkJzOsQM9vzLjyAknWj6qxw" >
                                <span class="btn_youtube ic-sets ty1-5"></span> YouTube
                                </a>
                                </h3>
                            </li>
                            <li data-link="language">
                                <h3 class="ht"><a>LANGUAGE</a></h3>
                                <nav class="gnb_sub_mc fw--400">
                                    <ul>
                                        <li><a href="/newbluebrick/?lang=&">Kor</a></li>
                                        <li><a href="/newbluebrick/?lang=en&">Eng</a></li>
                                    </ul>
                                </nav>
                            </li>

                        </ul>
                    </div>
                </div>

            </nav>
        </div>
    </header>