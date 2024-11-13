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
<%@ include file="/WEB-INF/jsp/common/head_m_eng.jsp"  %>
<body>

<div class="wrap">
    <%@ include file="/WEB-INF/jsp/common/header_m_eng.jsp"  %>

    <script>
        dep1 = 3;
    </script>
	
    <div class="inner_mc sub_top_mc scroll_top fn--p">
        <h3 class="title">TECHNIQUE</h3>
    </div>
    <div class="inner_mc technical_mc">

        <section class="technic_sec1">
            <div class="content_mc">
            <!--  
                <div class="tech_title">
                    <span class="ic-sets ty1-6"></span><h3 style="font-size: calc(63/1080*100vw);padding: calc(15/1080*100vw) calc(40/1080*100vw);">Bluebrick core concepts</h3>
                </div>
            -->
                <div class="sub_title">
                    <span class="ic-sets ty3-1 aft">01</span><h4 style="width: 84%">Architecture of BlueBrick platform</h4>
                </div>
                <p>BlueBrick platform enables our customers to build and manage blockchain networks more easy and conveniently. Based on this, it is easy to verify various business pilots, such as public, financial distribution, document management and original proof.
                </p>
                <br>
                <img src="<c:url value="/public/imgs/m/technical/tech_img1_en.jpg"/>" alt="">
            </div>
        </section>
        <section class="technic_sec2">
            <div class="content_mc">
                <div class="sub_title">
                    <span class="ic-sets ty3-1 aft">02</span><h4 style="width: 85%;">Unlimited expandable and Service-oriented Private main-net </h4>
                </div>
                <p>Ethereum-based private mainnet, BlueBrick can be unlimited expansion and capable of decentralized processing through Multiple SideChain through the generation of a 
                sidechain for each service group. It is guaranteed high speed thanks to parallel processing of transactions by suitable for each service. So, it can be also applied 
                to financial sectors.</p>
                <img src="<c:url value="/public/imgs/m/technical/tech_img2_en.jpg"/>" alt="">
                
                <div class="sub_title">
                    <h4 style="margin-left: 60px; margin-top:15px; margin-left: 40px;">You don't need to process all services in one blockchain.</h4>
                </div>
                <p>BlueBrick makes to enable distributed processing of each different service through multi-sidechain. Moreover, it can be exchanged between inter and external data, coins, 
                tokens, and platforms. Its multi-sidechain is guaranteed quick processing speed thanks to parallel processing of transaction for each service group. 
                It is also minimized interruption from other service because it is operated in each different sidechain.</p>
                <img style="margin-top: 20px; margin-bottom: 20px;" src="<c:url value="/public/imgs/m/technical/tech_img3_en.jpg"/>" alt="">
            </div>
        </section>
        
        <section class="technic_sec1">
            <div class="content_mc">
                <div class="sub_title">
                    <span class="ic-sets ty3-1 aft">03</span><h4>Customized enterprise solution based on HyperLedger Fabric technology</h4>
                </div>
                <p>HyperLedger Fabric solution is provided a customizing package to install and utilize easily to company that are struggling to implement blockchain technology due to time and expenses at a reasonable cost in a short period of time. </p>
                <img style="margin-top: 20px; margin-bottom: 20px;" src="<c:url value="/public/imgs/m/technical/tech_img4_en.jpg"/>" alt="">
            </div>
        </section>
        
        <section class="technic_sec3">
            <div class="content_mc">
                <div class="sub_title">
                    <span class="ic-sets ty3-2 aft">04</span><h4>Reliability, Security and Trust guaranteed by carrier</h4>
                </div>
                <p style="color:#FFFFFF;">As a leading provider of technology, communications, information products and service in Korea for the past 30 years, we have provided customized services, considering the corporate environment in the priority of stable and security. We guarantee security, stability and reliability through the cutting edge equipment and facilities and professional experts who have know-how in network and server operation.</p>

				<!-- 
                <ul style="width: 90%;">
                    <li style="margin-right: calc(40/1080*100vw); width: calc(260/1080*100vw);">
                        <img src="<c:url value="/public/imgs/m/technical/idc_img1.jpg"/>">
                        <div class="s_title"> <span class="ic-sets ty3-3"></span><p style="padding: 0 calc(2/1080*100vw);">Yeoksam IDC</p><span class="ic-sets ty3-4"></span> </div>
                    </li>
                    <li style="margin-right: calc(40/1080*100vw); width: calc(260/1080*100vw);">
                        <img src="<c:url value="/public/imgs/m/technical/idc_img2.jpg"/>">
                        <div class="s_title"> <span class="ic-sets ty3-3"></span><p style="padding: 0 calc(2/1080*100vw);">Bundang IDC</p><span class="ic-sets ty3-4"></span> </div>
                    </li>
                    <li style="width: calc(260/1080*100vw);">
                        <img src="<c:url value="/public/imgs/m/technical/idc_img3.jpg"/>">
                        <div class="s_title"> <span class="ic-sets ty3-3"></span><p style="padding: 0 calc(2/1080*100vw);">Busan IDC</p><span class="ic-sets ty3-4"></span> </div>
                    </li>
                </ul>
				 -->
            </div>
        </section>
    </div>

    <%@ include file="/WEB-INF/jsp/common/footer_m_eng.jsp"  %>


</div>






</body>
</html>