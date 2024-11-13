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
<%@ include file="/WEB-INF/jsp/common/head.jsp"  %>
<head>

<!--
<script type="text/javascript">
function popup1(){
console.log('width :',window.screen.width)
console.log('height :',window.screen.height)

var popupX = (window.screen.width / 2) - (640 /2) - 200;
var popupY = (window.screen.height / 2 ) - (720 / 2);

var wnd = window.open('','popup1','toolbar=0,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no,copyhistory=no,scrollbars=0,width=660,height=737,left='+popupX+',top='+popupY);
wnd.document.write("<html><body style='margine:0,padding:0'>");
wnd.document.write("<a href=javascript:window.open('https://bbric.com/event1/');window.close();>");
wnd.document.write("<img src='<c:url value="/public/imgs/bbric_pop.jpg"/>' border=0 style='margine:0 autos; padding:0' >");
wnd.document.write("</a>");
wnd.document.write("</body><html>");
}
</script>
-->

</head>

<!--
<body  onload="popup1();">
-->

<div class="wrap">
    <%@ include file="/WEB-INF/jsp/common/header.jsp"  %>


    <script>
    link = "${param.link}";
    </script>

	<div class="inner_mc main_visual_mc">
	    <div class="content_mc">
	        <div class="main_bg main_bg_1"><img src="<c:url value="/public/imgs/bg_1.jpg"/>" alt=""></div>
	        <div class="slogan_sp amt amt_1">
<!-- 	            <p class="t_4 ani fn--p fw--600"> Blockchain 3.0 </p> -->
	            <!-- <p class="t_1 ani fn--p fw--600">
	            	Let <span class="flag">＇</span> s Build Up the
	            								The Start of a <br> New Journey
	            </p> -->
	            <p class="t_1 ani fn--p fw--600" style="font-size:51px; margin-left:-1px; font-style: normal;">
								Connected &
	            </p>

	            <!-- <p class="t_2 ani fn--p fw--600">New Eco-system</p> -->
	            <p class="t_2 ani fn--p fw--600" style="font-size:135px; margin-left:-10px;">BlueBrick</p>

	            <div class="t_3 ani">
	                <ul class="tab fn--p fw--500">
	                    <li class="on">Assemble</li>
	                    <li>Decentralization</li>
	                    <li>Ecosystem</li>
	                </ul>
	                <ul class="exp fn--n">
	                    <li class="on">브랜드 마크인 '브릭(Brick)'은 세종이 보유한 네트워크 운영 노하우 및 보안 기술 등을 함축시킨 견고한 형태로, 플랫폼의 응축된 가치와 가능성을 상징 합니다. </li>
	                    <li>그 가치들은 중심에서 확장되고 분산되어 디지털 자산의 유동화를 실현하며, 더 나아가 다양한 가능성을 발견하게 하는 서비스형 블록체인 플랫폼(BaaS) 을 구축합니다. </li>
	                    <li>블루브릭으로부터 발산된 가치들은 마치 벽돌을 쌓듯 여러 주체를 연결하고 확장 하여, 참여자들과 자유와 상생의 새로운 나눔 생태계를 구축해 나갑니다. </li>
	                </ul>
	            </div>
	        </div>
	    </div>
	</div>

	<div class="inner_mc main_introduce_mc">

	    <div class="content_mc">
	        <div class="main_bg main_bg_1"><img src="<c:url value="/public/imgs/bg_2.jpg"/>" alt=""></div>
	        <div class="slogan_sp amt amt_2">
	            <p class="t_1 ani fn--p fw--600">Introduce to BlueBrick</p>
	            <p class="t_2 ani fn--n fw--200" style="text-align:left;">
	                <!-- 세종의 뛰어난 네트워크 운영기술을 블록으로 함축시켜,  <br>
	                응축된 가치와 가능성을 펼쳐내는 <br>
	                블록체인 메인넷 & 디앱 서비스 입니다.<br>
	                블루브릭으로 발신된 가치들은 여러 주체를 연결하고, 확장하며, <br>
	                참여자들과 자유와 상생의 새로운 나눔생태계를 구축해냅니다.<br> -->


	                <strong>디지털자산의 유동화. 블루브릭(BlueBrick)과 함께 하는 가치 실현</strong>
	                <br><br>
					블루브릭(BlueBrick)은 지난 30년간 유·무선 통신 사업을 영위해 온 세종텔레콤이 주력하고 있는 블록체인 사업을 통칭하는 브랜드 네이밍이자 통합 플랫폼의 명칭입니다.
					<br><br>
					세종텔레콤은 블루브릭 인프라를 통해 부동산, 데이터, 유통 등 다양한 산업에 블록체인을 적용하여 새로운 가치를 창출하고 변화를 이끌어가고 있습니다.
					<br><br>
					특히, 부산 블록체인 규제자유특구에서 전개되는 사업들을 통해, 실물자산 기반의 디지털자산을 상호 거래할 수 있는 금융 생태계를 조성해 나가는 단초를 마련함과 동시에, 네트워크 기반의 비즈니스 가치 창출 및 신뢰 시스템을 구현하고 나눔과 상생의 경제 플랫폼으로 자리매김 하고 있습니다.
	            </p>
	        </div>

	        <div class="info_sp amt amt_3">
	            <ul class="view">
	            	<li class="on">
	                    <h3 class="num">01.</h3>
	                    <p class="title">브랜드 스토리</p>
	                    <br>블루브릭으로부터 탄생된 가치들은 확장 분산되어 디지털 자산의 유동화를 실현하고, 여러 주체들을 연결하고 무한 확장해 나갑니다.<br>
	                    <p class="logo" style="margin-top:20px"><img src="<c:url value="/public/imgs/introduce_logo.png"/>" alt=""></p>

	                    <div class="exp">
	                        <div class="l_sp">
	                            <h4>Blue</h4>
	                            <p>안정, 신뢰, 진심, 책임감 등을 표현 </p>
	                        </div>
	                        <span class="ic-sets ty1-3"></span>
	                        <div class="l_sp">
	                            <h4>Brick</h4>
	                            <p>블록체인의 기본 단위인 블록을 벽돌(Brick)로 표현</p>
	                        </div>
	                    </div>
	                    <button type="button" class="btn_close"></button>
	                </li>

	                <li>
	                    <h3 class="num">02.</h3>
	                    <p class="title">블루브릭 메인넷 </p>
	                    <p class="exp" style="text-align:left;">
	                        <!-- 세종텔레콤의 통신 인프라와 자체 개발한 메인넷을 기반으로 실제 <br>
	                        비즈니스에 적용할 수 있도록 확장 가능한 블록체인 플랫폼입니다. <br><br>
	                        다양한 분야에 접목하고 참여를 원하는 업체와 공동 비즈니스를 개척해 <br>
	                        나갈 수 있는 나눔과 상생의 경제 플랫폼이 되기를 추구합니다. -->
	                        
                        블루브릭 서비스 플랫폼은 현재 가장 활용도가 높은 이더리움 메인넷과 하이퍼레져 패브릭을 기반의 솔루션을 제공하며, 고객의 니즈에 맞춰 원하는 서비스를 선택할 수 있습니다.
                        <br><br>
						이더리움 기반의 메인넷은 멀티 사이드체인 구조로 설계되어 서비스 그룹별로 사이드체인의 무한 추가가 가능합니다. 또한 병렬화된 구조를 통하여 확장성, 호환성, 안정성, 속도에 있어서 차별화된 경쟁력을 보유하고 있습니다.
						<br><br> 
						하이퍼레져 패브릭 기반 프라이빗 솔루션은 엔터프라이즈, 미들웨어, 패브릭 툴, 모니터링 툴 등을 패키지 형태로 제공하여, 고객의 비즈니스에 활용할 수 있도록 도와줍니다.

	                    <button type="button" class="btn_close"></button>
	                </li>

	                <li>
	                    <h3 class="num">03.</h3>
	                    <p class="title">블루브릭의 가치</p>
	                    <p class="exp" style="text-align:left;">
	                        블루브릭은 최첨단 유무선 통신 인프라 기반 블록체인 네트워크와 대규모 데이터 기반의 가치 창출을 견인하는 블록체인 플랫폼을 제공하여 참여자 모두 혜택을 누리는 나눔공유경제 구축을 지향합니다.<br>
							<br>- Business Service : 다양한 블록체인 신규사업 발굴을 위해 블루브릭 생태계 참여 기업에 대한 투자, 컨설팅, 마케팅, 인프라 지원
							<br><br>- Government : 지자체, 정부기관과의 협업 및 과제 수행을 통한 블록체인 기술 및 사업화 검증
							<br><br>- Financial : 실물자산과 디지털(가상)자산을 상호 매매할 수 있는 블록체인 기반의 프로토콜 금융 생태계 조성


	                    </p>
	                    <button type="button" class="btn_close"></button>
	                </li>
	            </ul>

	            <ul class="lst" >
	            	<li class="ani">
	                    <h3 class="num">01.</h3>
	                    <p class="title">브랜드 스토리</p>
	                    <button type="button" class="ic-sets ty1-1 btn_plus"></button>
	                </li>
	                <li class="ani">
	                    <h3 class="num">02.</h3>
	                    <p class="title">블루브릭 메인넷</p>
	                    <button type="button" class="ic-sets ty1-1 btn_plus"></button>
	                </li>
	                <li class="ani">
	                    <h3 class="num">03.</h3>
	                    <p class="title">블루브릭의 가치</p>
	                    <button type="button" class="ic-sets ty1-1 btn_plus"></button>
	                </li>
	            </ul>
	        </div>
	    </div>

	</div>


	<div class="inner_mc main_advantages_mc">

	    <div class="main_ad_mc fn--n">

	        <div class="lst amt amt_3">
	            <ul>
	                <li class="ani">
	                    <div class="cont">
	                        <p class="ic"><img src="<c:url value="/public/imgs/ad_ic_1.png"/>" alt=""></p>
	                        <p class="txt fw--500">디지털자산거래</p>
	                        <button type="button" class="btn_more btn-sets ty1-4 aft fw--600">More</button>
	                    </div>
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
	                        <button type="button" class="btn_close ic-sets ty1-2"></button>
	                    </div>
	                </li>
	                <li class="ani">
	                    <div class="cont">
	                        <p class="ic"><img src="<c:url value="/public/imgs/ad_ic_2.png"/>" alt=""></p>
	                        <p class="txt fw--500">마이데이터</p>
	                        <button type="button" class="btn_more btn-sets ty1-4 aft fw--600">More</button>
	                    </div>
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
	                        <button type="button" class="btn_close ic-sets ty1-2"></button>
	                    </div>
	                </li>
	                <li class="ani">
	                    <div class="cont">
	                        <p class="ic"><img src="<c:url value="/public/imgs/ad_ic_3.png"/>" alt=""></p>
	                        <p class="txt fw--500">유통생산관리</p>
	                        <button type="button" class="btn_more btn-sets ty1-4 aft fw--600">More</button>
	                    </div>
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
	                        <button type="button" class="btn_close ic-sets ty1-2"></button>
	                    </div>
	                </li>
	                <li class="ani">
	                    <div class="cont">
	                        <p class="ic"><img src="<c:url value="/public/imgs/ad_ic_4.png" />" alt=""></p>
	                        <p class="txt fw--500">BaaS</p>
	                        <button type="button" class="btn_more btn-sets ty1-4 aft fw--600">More</button>
	                    </div>
	                    <div class="exp">
	                        <dl>

                                <dt>서비스형 블록체인(BaaS) 생태계 구축</dt>
                                <dd><p>기업 맞춤형 하이퍼레저 패브릭 패키지 제공</p></dd>
                                <dd><p>자체 기술을 보유하지 않아도 단기간, 합리적 비용으로 구축 가능</p></dd>
                                <dd><p>보안성, 자동화, 효율성 증대</p></dd>
                                
                            </dl>
	                        <button type="button" class="btn_close ic-sets ty1-2"></button>
	                    </div>
	                </li>
	                <li class="ani">
	                    <div class="cont">
	                        <p class="ic"><img src="<c:url value="/public/imgs/ad_ic_5.png" />" alt=""></p>
	                        <p class="txt fw--500">DeFi</p>
	                        <button type="button" class="btn_more btn-sets ty1-4 aft fw--600">More</button>
	                    </div>
	                    <div class="exp">
	                        <dl>
                                <dt>디파이(DeFi)에 특화된 자산거래 시스템 구축</dt>
                                <dd><p>스테이블 코인을 통한 각 비즈니스 간 거래 및 환전 시스템 구축</p></dd>
                                <dd><p>수신, 여신, 수탁, 대출 등 가상자산 기반 금융서비스 영역 확대</p></dd>
                                
                            </dl>
	                        <button type="button" class="btn_close ic-sets ty1-2"></button>
	                    </div>
	                </li>
	            </ul>
	        </div>

	        <!-- <div class="view">
	            <ul>
	                <li class="on">

	                    <div class="exp fn--n">
	                        <dl>
	                            <dt> 거래 수수료 무료정책 </dt>
	                            <dd> 신규 블록체인 비즈니스 적용에 유리 </dd>
	                        </dl>

	                        <dl>
	                            <dt>Web/App 지갑 및 블록체인 explorer 지원</dt>
	                            <dd>파트너사가 비즈니스에만 전념할 수 있게 통합된 Wallet 및 explorer 지원</dd>
	                        </dl>

	                        <dl>
	                            <dt>파트너사 기술지원</dt>
	                            <dd>비즈니스 DAPP 개발 기술 지원</dd>
	                            <dd>개발 편의를 위한 API 제공</dd>
	                        </dl>
	                    </div>
	                </li>
	            </ul>
	            <button type="button" class="btn_close ic-sets ty1-2"></button>
	        </div> -->
	    </div>

	    <div class="content_mc">
	        <ul class="other">
	            <li>
	                <div class="trans_bg"><img src="<c:url value="/public/imgs/wallet_bg.jpg"/>" alt="비브릭"></div>
			<div class="amt amt_4" style="cursor: pointer;" onclick="location.href='https://bbric.com/';">
                      	  <p class="ani"></p><p class="ani"></p><p class="ani"></p>
                      	  <p class="ani"></p><p class="ani"></p><p class="ani"></p>
                     	  <p class="ani"></p><p class="ani"></p><p class="ani"></p>
                  	</div>
<!--
	               <a href="https://www.bluebrick.io/wallet/intro" target="_blank" class="btn fn--p">
	                   <span class="t_1">Other business </span>
	                   <span class="t_2 fw--500">BlueBrick <br>Wallet</span>
	                   <span class="ic-sets"></span>
	               </a>
-->
	            </li>

	            <li>
	               <div class="trans_bg"><img src="<c:url value="/public/imgs/scan_bg.jpg" />" alt="비헬씨"></div>
	               <div class="amt amt_4" style="cursor: pointer;" onclick="location.href='https://www.bhealthy.co.kr/';">     
			    <p class="ani"></p><p class="ani"></p><p class="ani"></p>
	                    <p class="ani"></p><p class="ani"></p><p class="ani"></p>
	                    <p class="ani"></p><p class="ani"></p><p class="ani"></p>
	               </div>
<!--
	               <a href="https://scan.bluebrick.io/scanweb/main" target="_blank" class="btn fn--p">
	                   <span class="t_1">Other business </span>
	                   <span class="t_2 fw--500">BlueBrick <br>Scan</span>
	                   <span class="ic-sets"></span>
	               </a>
-->
	            </li>

	        </ul>
	    </div>

	</div>


	<div class="inner_mc main_news_mc">

	    <div class="content_mc">
	        <div class="main_bg main_bg_2"><img src="<c:url value="/public/imgs/bg_4.png" />" alt=""></div>
	        <div class="lst amt amt_3">
	            <ul>

	              <li class="ani center">
	                    <a href="<c:url value="/notice/view/?lang=${param.lang}&num=${mainNoticeFirst.itemNumber }"/>">
	                        <span class="thumb"><img src="<c:url value="/public/imgs/news/temp.png" />" alt=""></span>
	                        <span class="sort">notice</span>
	                        <span class="title">${mainNoticeFirst.subject }</span>
	                        <span class="ic-sets ty2-2"></span>
	                    </a>
	                </li>
					
	                <li class="ani">
	                    <a href="<c:url value="/news/view/?lang=${param.lang}&num=${mainNewsFirst.itemNumber }"/>">
	                    	<!-- <c:if test="${empty mainNewsFirst.tumbnailPath}">
	                    		<span class="thumb"><img src="<c:url value="/public/imgs/news/temp.png" />" alt=""></span>
	                    	</c:if>
	                    	<c:if test="${not empty mainNewsFirst.tumbnailPath}">
	                    		<span class="thumb"><img src="<c:url value="/uploadFile/${mainNewsFirst.tumbnailPath }" />" alt=""></span>
	                    	</c:if> -->
	                        
	                        <span class="thumb"><img src="<c:url value="/public/imgs/news/news1.jpg" />" alt=""></span>
	                        <span class="sort">news </span>
	                        <span class="title">${mainNewsFirst.subject } </span>
	                        <span class="ic-sets ty2-3"></span>
	                    </a>
	                </li>
	                
	                <li class="ani">
	                    <a href="<c:url value="/news/view/?lang=${param.lang}&num=${mainNewsSecond.itemNumber }"/>">
	                        <!--<c:if test="${empty mainNewsSecond.tumbnailPath}">
	                    		<span class="thumb"><img src="<c:url value="/public/imgs/news/temp.png" />" alt=""></span>
	                    	</c:if>
	                    	<c:if test="${not empty mainNewsSecond.tumbnailPath}">
	                    		<span class="thumb"><img src="<c:url value="/uploadFile/${mainNewsSecond.tumbnailPath }" />" alt=""></span>
	                    	</c:if> -->
	                    	<span class="thumb"><img src="<c:url value="/public/imgs/news/news2.jpg" />" alt=""></span>
	                        <span class="sort">news </span>
	                        <span class="title">${mainNewsSecond.subject }</span>
	                        <span class="ic-sets ty2-3"></span>

	                    </a>
	                </li>
	            </ul>
	        </div>

	    </div>

	</div>



	<div class="inner_mc main_technique_mc">
	        <div class="content_mc">
	            <div class="thumb"><img src="<c:url value="/public/imgs/thumb_4_1.jpg" />" alt=""></div>
	            <div class="slogan_sp amt amt_2" style="width:42%;">
	                <p class="t_1 ani fn--p fw--600">BlueBrick Technology</p>
	                <p class="t_2 ani fn--n fw--200" style="margin-top: 20px;">
	                    <!-- BlueBrick은 무한 확장이 가능한 서비스 별 맞춤형 'Private <br>
                      BlockChain'입니다.  BlueBrick은 서비스 별 멀티체인을 통해 분산<br>
                      처리가 가능하며 Inter Exchange Chain을 통해  분산처리 된 정보를<br>
                      서로 교환할 수 있습니다. 서비스 중심의 블록체인인 BlueBrick은<br>
                      구조적 분산화로 트랜잭션이 병렬 처리되어 빠른 속도를 보장하며 서비스<br>
                      특성에 맞는 블록체인 구성에 효과적입니다. 블록 생성주기는 1초로써<br>
                      대용량 TPS가 필요한 파트너사의 니즈에 모든 맞춤형 지원이 가능하고 <br>
                      역삼, 분당, 부산 등 자체 보유한 IDC를 바탕으로 광대역 내/외부 네트워크<br>
                      및 Network APT, Layer 7 Switch 등 최첨단 보안 설비로 금융권 수준의<br>
                      보안 인프라를 지원하여 블록체인의 보안 및 안정성을 보장합니다. -->
                      <strong><font size="5"> Co-Creation for Connectivity Ecosystem </font></strong>
                      <br><br>
                       
                      블루브릭 플랫폼은 이더리움과 하이퍼레저 패브릭 등 주요 오픈소스 툴을 기반으로 구현되어 기업용 솔루션 개발, 운영, 거버넌스에 필요한 인프라를 제공합니다. 이를 위해 금융과 산업별 프로세스 혁신, 규제개혁 분야에 블루브릭을 적용한 플랫폼 및 디앱 개발 및 검토가 진행되고 있습니다.<br><br>

                      블루브릭은 실용화를 위한 블록체인 플랫폼을 지향합니다. 블록체인 도입에 어려움을 겪고 있는 단기간 내 합리적인 비용으로 쉽고 편리하게 기존 비즈니스에 블록체인 기술을 적용할 수 있으며, 공공, 금융, 유통, 문서관리, 문서 원본 증명 등 다양한 비즈니스 프로젝트 검증이 용이합니다. 우리는 다양한 영역에 블록체인을 적용하고 고객, 참여자 모두와 함께 새로운 가치를 창출하고 변화를 이끌어가려고 합니다.
                    <!-- 
                      <strong> Co-Creation for Connectivity Ecosystem</strong>
                      <br><br>
                      블루브릭은 최첨단 유무선 통신 인프라 기반 블록체인 네트워크와 대규모 데이터 기반 가치 창출을 견인하는 블록체인 플랫폼을 제공하여 참여자 모두 혜택을 누리는 나눔공유경제 구축을 지향합니다.
					  <br><br>
					  Business Service : 다양한 블록체인 신규사업 발굴을 위해 블루브릭 생태계 참여 기업에 대한 투자, 컨설팅, 마케팅, 인프라 지원
					  <br><br>
					  Government : 지자체, 정부기관과의 협업 및 과제수행을 통한 블록체인 기술 및 사업화 검증
					  <br><br>
					  Financial : Defi에 특화된 디지털자산거래 플랫폼 구축을 통한 블록체인 기반 금융상품 활성화
					  -->
	                </p>
<!--
 /newbluebrick/technical?lang=&
 /newbluebrick/technical?lang=&link=technique
/newbluebrick/?lang=&link=technique
 -->
	                <a href="<c:url value="/technical?lang=${param.lang }&"/>" class="ani btn_arrow ic-sets ty2-4"></a>
	            </div>
	        </div>
	</div>

	<!-- <div class="inner_mc main_token_mc">
	    <div class="content_mc">
	        <div class="thumb"><img src="<c:url value="/public/imgs/thumb_4_2.jpg"/>" alt=""></div>
	        <div class="slogan_sp amt amt_2">
	            <p class="t_1 ani fn--p fw--600">BlueBrick<br>Token Policy</p>
	            <p class="t_2 ani fn--n fw--200">
	                BlueBrick 토큰정책 관련 내용을 표기하는 부분입니다. BlueB<br>
	                rick 토큰정책 관련 내용을 표기하는 부분입니다. BlueBrick 토<br>
	                큰정책 관련 내용을 표기하는 부분입니다. BlueBrick 토큰정책 <br>
	                관련 내용을 표기하는 부분입니다.
	            </p>
	            <a href="#" class="ani btn_arrow ic-sets ty2-2"></a>
	        </div>
	    </div>
	</div> -->

    <%@ include file="/WEB-INF/jsp/common/footer.jsp"  %>
<%--     <%@ include file="/WEB-INF/jsp/common/youtube_pop.jsp"  %> --%>


</div>



</body>
</html>
