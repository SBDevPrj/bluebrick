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
<%@ include file="/WEB-INF/jsp/common/head_m.jsp"  %>
<body>

<div class="wrap">
    <%@ include file="/WEB-INF/jsp/common/header_m.jsp"  %>

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
                    <span class="ic-sets ty1-6"></span><h3>BlueBrick <span>핵심 컨셉</span></h3>
                </div>
                -->
                <div class="sub_title">
                    <span class="ic-sets ty3-1 aft">01</span><h4>블루브릭 플랫폼 아키텍처</h4>
                </div>
                <p>블루브릭을 통해 한 쉽고 편리한 블록체인 네트워크 구축과 관리가 가능합니다. 이를 기반으로 공공, 금융, 유통, 문서관리, 문서 원본 증명 등 다양한 비즈니스 파일럿 프로젝트 검증이 용이합니다.</p>
                <img style="margin-top: 20px; margin-bottom: 20px;" src="<c:url value="/public/imgs/m/technical/tech_img1_kr.jpg" />" alt="">
            </div>
        </section>
        <section class="technic_sec2">
            <div class="content_mc">
                <div class="sub_title">
                    <span class="ic-sets ty3-1 aft">02</span><h4>무한 확장 가능한 BaaS형(Blockchain as a Service) 프라이빗 블록체인 메인넷</h4>
                </div>
                <p>이더리움 기반의 프라이빗 메인넷 블루브릭은 기존 금융 비즈니스 영역과 금융 영역을 융합할 수 있고, 트랜젝션 처리에 있어 속도 등의 기술적 한계를 극복할 수 있는 무한 확장 가능한 멀티사이드 체인을 활용합니다.
                </p>
                <img style="margin-top: 20px; margin-bottom: 20px;" src="<c:url value="/public/imgs/m/technical/tech_img2_kr.jpg" />" alt="">

                <!-- -->
                <div class="sub_title">
                    <h4 style="margin-left: 60px; margin-top:15px; margin-left: 40px;">하나의 블록체인에서 모든 서비스를 처리할 필요는 없습니다.</h4>
                </div>
                <p>블루브릭은 서비스별 멀티체인을 통해 분산처리를 가능하게 하고 Inter Exchange Chain을 통해 분산처리 된 정보를 서로 교환할 수 있게 합니다. 이러한 서비스 중심의 블록체인은 구조적 분산화로 인해 트랜잭션이 병렬처리 되어 빠른 속도를 보장하고,  서비스 특성에 맞는 블록체인 구성에 효과적입니다. 또한, 외부 침입 및 내부 서비스 문제 등으로 하나의 체인에 문제가 발생하여도 별도의 네트워크로 구성된 다른 체인에는 영향을 주지 않습니다.</p>
                <img style="margin-top: 20px; margin-bottom: 20px;" src="<c:url value="/public/imgs/m/technical/tech_img3_kr.jpg"/>" alt="">
            </div>
        </section>
        <section class="technic_sec1">
            <div class="content_mc">
                <div class="sub_title">
                    <span class="ic-sets ty3-1 aft">03</span><h4>하이퍼레저 패브릭 기반의 기업 맞춤형 솔루션 제공</h4>
                </div>
                <p>블록체인 도입에 어려움을 겪고 있는 기업에게 맞춤형 설치 및 활용 가능한 서비스를 제공해, 단기간 내 합리적인 비용으로 누구나 쉽게 기존 비즈니스에 블록체인 기술 적용이 가능합니다.
                    </p>
                <img style="margin-top: 20px; margin-bottom: 20px;" src="<c:url value="/public/imgs/m/technical/tech_img4_kr.jpg"/>" alt="">
            </div>
        </section>
        <section class="technic_sec3">
            <div class="content_mc">
                <div class="sub_title" style="margin-top: 15px;">
                    <span class="ic-sets ty3-1 aft">04</span><h4>중견 기간 통신사가 보장하는 네트워크 안정성, 보안, 신뢰</h4>
                </div>
                <p style="color:#FFFFFF;">당사는 지난 30여년간 한국 네트워크 시장을 이끌어온 기간통신사업자로서, 안정적인 트래픽, 보안 등을 우선으로 기업환경을 고려한 맞춤형 서비스를 제공해왔습니다. 최첨단 네트워크 장비 및 보안 설비로 금융권 수준의 인프라를 지원하며, 지난 20년간 네트워크/서버 운영 노하우를 바탕으로 전문가들의 관리를 통해 보안, 안정성을 보장합니다.
                </p>
            </div>
        </section>
    </div>

    <%@ include file="/WEB-INF/jsp/common/footer_m.jsp"  %>


</div>






</body>
</html>
