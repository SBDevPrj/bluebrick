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
        dep1 = 1;
        cont = "${param.cont}";
    </script>

    <div class="inner_mc sub_top_mc scroll_top fn--p">
        <h3 class="title">INTRODUCE</h3>
    </div>

    <div class="inner_mc introduce_mc">

        <div class="content_mc content_1_mc">
            <h2 class="htitle">Introduce to <br>BlueBrick</h2>
            <div class="exp" style="text-align:left;">
                <!-- 세종의 뛰어난 네트워크 운영 기술을 블록으로 함축
                시켜, 응축된 가치와 가능성을 펼쳐내는 블록체인
                메인넷 & 디앱 서비스 입니다. <br><br>

                블루브릭으로 발신된 가치들은 여러 주체를 연결
                하고, 확장하며, 참여자들과 자유와 상생의 새로운
                나눔생태계를 구축해냅니다. -->
                
                <!-- 
                <strong>무한 확장 가능한 서비스형 블록체인
                메인넷 ‘블루브릭 (BlueBrick)’</strong><br><br>

                블루브릭 (BlueBrick) 은 28 여년간
                유 · 무선 통신 사업을 영위해 온 세종 텔레콤이 자체 개발한 이더리움 기반의
                서비스형 프라이빗 블록체인 메인넷
                (BaaS)입니다.<br><br>

                블루브릭은 멀티 사이드 체인 구조로
                설계되어 사이드 체인의 무한 확장과
                서비스 별 맞춤 지원, 인터 익스체인지
                체인을 통한 DEX 형태의 내 · 외부
                데이터 및 코인 (토큰) 교환 기능,
                금융권 수준의 보안 환경, 거래수수료
                무료 정책 등을 지원합니다.
                -->
                
                <strong>디지털자산의 유동화. 블루브릭(BlueBrick)과 함께 하는 가치 실현</strong>
                <br><br>
				블루브릭(BlueBrick)은 지난 30년간 유·무선 통신 사업을 영위해 온 세종텔레콤이 주력하고 있는 블록체인 사업을 통칭하는 브랜드 네이밍이자 통합 플랫폼의 명칭입니다.
                <br><br>
                세종텔레콤은 블루브릭 인프라를 통해 부동산, 데이터, 유통 등 다양한 산업에 블록체인을 적용하여 새로운 가치를 창출하고 변화를 이끌어가고 있습니다.
                <br><br>
                특히, 부산 블록체인 규제자유특구에서 전개되는 사업들을 통해, 실물자산 기반의 디지털자산을 상호 거래할 수 있는 금융 생태계를 조성해 나가는 단초를 마련함과 동시에, 네트워크 기반의 비즈니스 가치 창출 및 신뢰 시스템을 구현하고 나눔과 상생의 경제 플랫폼으로 자리매김 하고 있습니다.


            </div>

        </div>

        <div class="content_mc content_2_mc">
            <h3 class="num">01.</h3>
            <h4 class="stitle">브랜드 스토리</h4>
            <div class="exp" style="text-align:left;">
                블루브릭으로부터 탄생된 가치들은 확장 분산되어 디지털 자산의 유동화를 실현하고, 여러 주체들을 연결하고 무한 확장해 나갑니다.
            </div>
            <div class="logo"><img src="<c:url value="/public/imgs/m/introduce_logo.png"/>" alt=""></div>

            <div class="exp">

                <h5>Blue</h5>
                <p>안정, 신뢰, 진심, 책임감 등을 표현 </p>

                <span class="ic-sets ty1-2"></span>

                <h5>Brick</h5>
                <p>블록체인의 기본 단위인 블록을 벽돌(Brick)로 표현</p>

            </div>
        </div>

        <div class="content_mc content_3_mc">
            <h3 class="num">02.</h3>
            <h4 class="stitle">블루브릭 메인넷</h4>
            <div class="exp" style="text-align:left;">
                블루브릭 서비스 플랫폼은 현재 가장 활용도가 높은 이더리움 메인넷과 하이퍼레져 패브릭을 기반의 솔루션을 제공하며, 고객의 니즈에 맞춰 원하는 서비스를 선택할 수 있습니다.
                <br><br>
                이더리움 기반의 메인넷은 멀티 사이드체인 구조로 설계되어 서비스 그룹별로 사이드체인의 무한 추가가 가능합니다. 또한 병렬화된 구조를 통하여 확장성, 호환성, 안정성, 속도에 있어서 차별화된 경쟁력을 보유하고 있습니다.
                <br><br> 
                하이퍼레져 패브릭 기반 프라이빗 솔루션은 엔터프라이즈, 미들웨어, 패브릭 툴, 모니터링 툴 등을 패키지 형태로 제공하여, 고객의 비즈니스에 활용할 수 있도록 도와줍니다.
            </div>
        </div>

        <div class="content_mc content_4_mc">
            <h3 class="num">03.</h3>
            <h4 class="stitle">블루브릭의 가치 </h4>
            <div class="exp" style="text-align:left;">
            블루브릭은 최첨단 유무선 통신 인프라 기반 블록체인 네트워크와 대규모 데이터 기반의 가치 창출을 견인하는 블록체인 플랫폼을 제공하여 참여자 모두 혜택을 누리는 나눔공유경제 구축을 지향합니다.<br>
            <br>- Business Service : 다양한 블록체인 신규사업 발굴을 위해 블루브릭 생태계 참여 기업에 대한 투자, 컨설팅, 마케팅, 인프라 지원
            <br><br>- Government : 지자체, 정부기관과의 협업 및 과제 수행을 통한 블록체인 기술 및 사업화 검증
            <br><br>- Financial : 실물자산과 디지털(가상)자산을 상호 매매할 수 있는 블록체인 기반의 프로토콜 금융 생태계 조성
            </div>
        </div>

    </div>

    <%@ include file="/WEB-INF/jsp/common/footer_m.jsp"  %>


</div>






</body>
</html>