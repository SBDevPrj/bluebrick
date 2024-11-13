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
<%@ include file="/WEB-INF/jsp/common/head_eng.jsp"  %>
<body>


<div class="wrap">

    <%@ include file="/WEB-INF/jsp/common/header_eng.jsp"  %>

    <script>
        dep1 = 3;
    </script>


    <div class="inner_mc technical_mc">

        <section class="technic_sec1">
            <div class="content_mc">
                <h2>Technique <span>Technical Information</span></h2>
                <!-- 
                <div class="tech_title">
                    <span class="ic-sets ty6-1"></span><h3>Bluebrick core concepts</h3>
                </div>
                 -->
                <div class="sub_title">
                    <span class="ic-sets ty6-3 aft">01</span><h4>Architecture of BlueBrick platform</h4>
                </div>
                <p>BlueBrick platform enables our customers to build and manage blockchain networks more easy and conveniently. Based on this, it is easy to verify various business pilots, such as public, financial distribution, document management and original proof.</p>
                <br>
                <img src="<c:url value="/public/imgs/technical/tech_img1_en.jpg"/>" alt="">
            </div>
        </section>
        <section class="technic_sec2">
            <div class="content_mc">
                <div class="sub_title">
                    <span class="ic-sets ty6-3 aft">02</span><h4>Unlimited expandable and Service-oriented Private main-net </h4>
                </div>
                <p>Ethereum-based private mainnet, BlueBrick can be unlimited expansion and capable of decentralized processing through Multiple SideChain through the generation 
                of a sidechain for each service group. It is guaranteed high speed thanks to parallel processing of transactions by suitable for each service. 
                So, it can be also applied to financial sectors. </p>
                <img src="<c:url value="/public/imgs/technical/tech_img2_en.jpg"/>" alt="">
                
                <!-- -->
                <div class="sub_title" style="margin-top: 50px;">
                    <span class="ic-sets ty6-5 aft"></span><h4 style="margin-left: 60px; margin-top:15px;">You don't need to process all services in one blockchain.</h4>
                </div>
                <p>BlueBrick makes to enable distributed processing of each different service through multi-sidechain. Moreover, it can be exchanged between inter and external data, 
                coins, tokens, and platforms. Its multi-sidechain is guaranteed quick processing speed thanks to parallel processing of transaction for each service group. 
                It is also minimized interruption from other service because it is operated in each different sidechain.</p>
                <img src="<c:url value="/public/imgs/technical/tech_img3_en.jpg"/>" alt="">
            </div>
        </section>
        
        <section class="technic_sec1">
            <div class="content_mc">
                <div class="sub_title">
                    <span class="ic-sets ty6-3 aft">03</span><h4>Customized enterprise solution based on HyperLedger Fabric technology</h4>
                </div>
                <p>HyperLedger Fabric solution is provided a customizing package to install and utilize easily to company that are struggling to implement blockchain technology due to time and expenses at a reasonable cost in a short period of time.
                    <br><br>
                    </p>
                <img src="<c:url value="/public/imgs/technical/tech_img4_en.jpg"/>" alt="">
                <br><br>
            </div>
        </section>
        
        <section class="technic_sec3">
            <div class="content_mc">
                <!-- <div class="l_sp"> -->
                    <div class="sub_title">
                        <span class="ic-sets ty6-4 aft">04</span><h4>Reliability, Security and Trust guaranteed by carrier</h4>
                    </div>
                    <p style="color:#FFFFFF;">As a leading provider of technology, communications, information products and service in Korea for the past 30 years, we have provided customized services, considering the corporate environment in the priority of stable and security. We guarantee security, stability and reliability through the cutting edge equipment and facilities and professional experts who have know-how in network and server operation.</p>
                </div>
                <!-- 
                <div class="r_sp">
                    <ul>
                        <li>
                            <img src="<c:url value="/public/imgs/technical/idc_img1.jpg"/>">
                            <div class="s_title"> <span class="ic-sets ty6-5"></span><p>Yeoksam IDC</p><span class="ic-sets ty6-6"></span> </div>
                        </li>
                        <li>
                            <img src="<c:url value="/public/imgs/technical/idc_img2.jpg"/>">
                            <div class="s_title"> <span class="ic-sets ty6-5"></span><p>Bundang IDC</p><span class="ic-sets ty6-6"></span> </div>
                        </li>
                        <li>
                            <img src="<c:url value="/public/imgs/technical/idc_img3.jpg"/>">
                            <div class="s_title"> <span class="ic-sets ty6-5"></span><p>Busan IDC</p><span class="ic-sets ty6-6"></span> </div>
                        </li>
                    </ul>
                </div>
                 -->
            <!-- </div> -->
        </section>
    </div>


    <%@ include file="/WEB-INF/jsp/common/footer_eng.jsp"  %>
<%--     <%@ include file="/WEB-INF/jsp/common/youtube_pop.jsp"  %> --%>

</div>



</body>
</html>