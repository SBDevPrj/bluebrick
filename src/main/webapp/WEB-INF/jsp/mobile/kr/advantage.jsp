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
        dep1 = 0;

        cont = "${param.cont}";
    </script>


    <div class="inner_mc sub_top_mc scroll_top fn--p">
        <h3 class="title">ADVANTAGES</h3>
    </div>

    <div class="inner_mc advantages_mc">

        <div class="content_mc content_1_mc">
            <h2 class="htitle">디지털자산거래</h2>
            <div class="exp">
                <dl>
                    <dt>자산의 토큰화로 공정한 부(富)의 재편</dt>
                    <dd><p>부동산, 선박, 항공기, 고가 미술품 등</p></dd>
                    <dd><p>자산의 토큰화를 통해 개인간 자유롭게 거래</p></dd>

                    <dt>부동산 집합투자 및 수익배분 서비스</dt>
                    <dd><p>부동산 물건에 투자하는 공모형 펀드 조성, 다수에게 쉽고 간편한 투자경험</p></dd>
                    <dd><p>블록체인 기반 플랫폼을 통해 부동산 펀드 수익증권 거래 가능</p></dd>
                    <dd><p>수익증권은 블록체인 기반 디지털 증서로 매칭</p></dd>
                    <dd><p>빠르고 활발한 다자간 거래, 수수료 절감</p></dd>
                    <dd><p>부동산 공모 펀드 활성화를 통한 경제적 순기능</p></dd>

                </dl>
            </div>

        </div>

        <div class="content_mc content_2_mc">
            <h4 class="htitle">마이데이터</h4>
            <div class="exp">
                <dl>
                    <dt>의료 마이데이터 서비스</dt>
                    <dd><p>의료데이터의 효율적 관리(전자처방전, 제증명발급, 보험 원스톱청구 등)</p></dd>
                    <dd><p>데이터 수요처(대학, 제약사, 연구소 등)에 제공해 미래의학 기술 개발 및 산업 발전에 기여</p></dd>
                    <dd><p>디지털바우처 보상 등 다양한 리워딩 제공</p></dd>

                    <dt>스마트 학사정보관리 시스템(SER)</dt>
                    <dd><p>학사정보 이력 추적 및 손실 데이터 복구  </p></dd>
                    <dd><p>데이터 신뢰성 확보 및 교육 이력 검증 업무 효율성 제공(졸업/성적/수료증명서 등)</p></dd>
                    <dd><p>대학 뿐 아니라, 비정규 교육과정, 기업 인재 관리 프로그램에도 적용</p></dd>
                </dl>

            </div>
        </div>

        <div class="content_mc content_3_mc">
            <h4 class="htitle">유통생산관리</h4>
            <div class="exp">
                <dl>
                    <dt>농·수·축산물 생산, 유통 서비스</dt>
                    <dd><p>생산-유통-거래 과정의 실시간 추적 모니터링</p></dd>
                    <dd><p>데이터 진본성 검증, 사기 피해 축소</p></dd>
                    <dd><p>생산자와 소비자 간의 스마트 직거래 연계</p></dd>


                    <dt>반려동물 정보 관리 서비스</dt>
                    <dd><p>반려동물 시장 정보 관리, 생애관리를 통한 건강한 반려문화 정착</p></dd>
                    <dd><p>헬스, 의료, 푸드 등 전반적인 케어서비스 연계</p></dd>
                </dl>

            </div>
        </div>

        <div class="content_mc content_4_mc">
            <h4 class="htitle">BaaS</h4>

            <div class="exp">
                <dl>

                    <dt>서비스형 블록체인(BaaS) 생태계 구축</dt>
                    <dd><p>기업 맞춤형 하이퍼레저 패브릭 패키지 제공</p></dd>
                    <dd><p>자체 기술을 보유하지 않아도 단기간, 합리적 비용으로 구축 가능</p></dd>
                    <dd><p>보안성, 자동화, 효율성 증대</p></dd>


                </dl>

            </div>
        </div>

        <div class="content_mc content_5_mc">
            <h4 class="htitle">DeFi</h4>
            <div class="exp">
                <dl>
                    <dt>디파이(DeFi)에 특화된 자산거래 시스템 구축</dt>
                    <dd><p>스테이블 코인을 통한 각 비즈니스 간 거래 및 환전 시스템 구축</p></dd>
                    <dd><p>수신, 여신, 수탁, 대출 등 가상자산 기반 금융서비스 영역 확대</p></dd>

                </dl>

            </div>
        </div>

    </div>


    <%@ include file="/WEB-INF/jsp/common/footer_m.jsp"  %>

</div>



</body>
</html>
