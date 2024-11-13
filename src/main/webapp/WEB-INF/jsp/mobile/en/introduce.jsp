<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="java.util.List"%>
<%@ page import="org.apache.commons.text.StringEscapeUtils"%>
<%@ page import="com.sejong.newbluebrick.model.BoardContent"%>
<%@ page import="org.springframework.data.domain.Page"%>


<!DOCTYPE html>
<html lang="ko">
<%@ include file="/WEB-INF/jsp/common/head_m_eng.jsp"%>
<body>

	<div class="wrap">
		<%@ include file="/WEB-INF/jsp/common/header_m_eng.jsp"%>

		<script>
			dep1 = 1;
			cont = "${param.cont}";
		</script>

		<div class="inner_mc sub_top_mc scroll_top fn--p">
			<h3 class="title">INTRODUCE</h3>
		</div>

		<div class="inner_mc introduce_mc">

			<div class="content_mc content_1_mc">
				<h2 class="htitle">
					Introduce to <br>BlueBrick
				</h2>
				<div class="exp" style="text-align:left;">
					<!-- 세종의 뛰어난 네트워크 운영 기술을 블록으로 함축
                시켜, 응축된 가치와 가능성을 펼쳐내는 블록체인
                메인넷 & 디앱 서비스 입니다. <br><br>

                블루브릭으로 발신된 가치들은 여러 주체를 연결
                하고, 확장하며, 참여자들과 자유와 상생의 새로운
                나눔생태계를 구축해냅니다. -->

					<!-- <strong>BlueBrick is a service-type blockchain main net with infinite possibilities for expansion.</strong><br><br> -->
					<strong>Liquidation of Digital Asset. Value realization
						with BlueBrick</strong><br> <br>
					<!--  BlueBrick is an Ethereum-based blockchain main net (BaaS, Backend-as-a-Service) developed by SEJONG Telecom, a leader in wired and wireless communication with 28 years of experience. <br><br>

                            BlueBrick is a multi-side chain structure, enabling indefinite expansion of the side chain with customized support for different services, exchange of internal and external coins (tokens) and DEX-format data through interexchange chains, security at the level of the finance industry, and free transaction fees. -->
					BlueBrick is the name of the brand and integrated platform of the
					blockchain business by SEJONG Telecom, which has been operating the
					telecommunication business for the past 30 years, is focusing on.
					Our BlueBrick technology is aimed to create diverse values and
					infinite possibility of potentials and is applying into diverse
					industries, such as real estates, data, and supply chain.
					Especially, we are implementing to the ultimate goal of co-economic
					platform to make a value creation and trust as well as we will
					prepare the foundation of financial ecosystem to create a digital
					assets can be traded through the Special Regulatory Free Zone in
					BUSAN.

				</div>

			</div>

			<div class="content_mc content_2_mc">
				<h3 class="num">01.</h3>
				<h4 class="stitle">Brand Story</h4>

				<br>The values created by BlueBrick are extended and
				distributed, enabling the liquidity of digital assets, connecting
				and expanding indefinitely.<br>
				<p class="logo" style="margin-top: 20px">
					<img src="<c:url value="/public/imgs/introduce_logo.png"/>" alt="">
				</p>

				<div class="exp">

					<!-- Bluebrick is a BaaS-type main net, whose multi-side chain design offers competitive advantages in its expandability, speed, security, stability, economic efficiency, and compatibility. <br><br>
                BlueBrick’s multi-side chain structure can expand infinitely by being able to add parallel side chains; it also provides individualized support for the needs of its participants and partners.<br><br>
                Bluebrick aspires to become an economic platform based on shared values and the ability to coexist, while also building and pioneering businesses based on the same system. -->

					<!-- BlueBrick is in the form of BaaS main-net, whose Multi-SideChain structure offers competitive advantages in its scalability, speed, stability, security, smart economy, and compatibility.<br><br>
                Its Multi-SideChain structure can unlimitedly expand through the generation of paralleling SideChain for each service group. It also provides individualized support for the needs of its participants and partners.<br><br>
                BlueBrick seeks to become an eco-platform based on co-created values and co-existence, pioneering collaborative business agreements with partners who want to connect with or participate in diverse industries. -->
					<div class="l_sp">
						<h4>Blue</h4>
						<p style="text-align: left;">Blue is an expression of
							stability, reliability, sincerity, and responsibility.</p>
					</div>
					<span class="ic-sets ty1-2"></span>
					<div class="l_sp">
						<h4>Brick</h4>
						<p style="text-align: left;">Brick is a symbol of a block,
							which is the basic unit of blockchain.</p>
					</div>

				</div>
			</div>

			<div class="content_mc content_3_mc">
				<h3 class="num">02.</h3>
				<h4 class="stitle">BlueBrick technology</h4>
				<div class="exp" style="text-align:left;">
					<!-- Bluebrick is an expression of Sejong’s pride and accountability with its advanced technology. BlueBrick is also realizing the concentrated value and potential of SEJONG Telecom’s own blockchain technology. <br><br>
Each block has stable and precise time-stamp technology, and can expand and connect to other blocks just like building blocks, symbolizing the function and goal of service, which is to increase the value of client assets. Ultimately, SEJONG Telecom and its participants will create a new economic ecosystem that will be shared where everyone will benefit from its prosperity. -->
					<!-- BlueBrick is an expression of SEJONG’s confidence and
					responsibility with our advanced technology. it also achieves the
					condensed values and possibility. <br> <br> Each block
					implements stable and precise timestamp technology. Then, it
					connects, expands, and building blocks just like building ‘bricks.’
					<br> <br> The primary goal of this main-net is to
					increase the value of our customers’ asset and create digital asset
					value chain. Ultimately, SEJONG Telecom, partners, and participants
					will co-create a new eco-system that will be shared where everyone
					will benefit from its prosperity. -->
					BlueBrick platform is offered the current most utilized solution, Ethereum and HyperLedger Fabric, and allows to choose the services customer want to implement. <br><br>
                    Ethereum-based platform is unlimited expandable and service-oriented private mainnet, capable of decentralized processing through multiple sidechain for each service. It offers differentiated competitiveness in scalability, compatibility, speed, and reliability, thanks to parallel processing of transaction by structural decentralization. <br><br>
                    HyperLedger Fabric solution is provided by package, including enterprise, middle wares, fabric tool and monitoring tools that helps customer to leverage into business.
					

				</div>
			</div>

			<div class="content_mc content_4_mc">
				<h3 class="num">03.</h3>
				<h4 class="stitle">Core value</h4>
			
				<div class="exp" style="text-align:left;">

					 With SEJONG’s blockchain business and the cutting-edge network technology, “BlueBrick” is aimed to create diverse values and infinite possibility of potential and to build a sharing economy with all participants. <br><br>
                        - Business Service : To discover and commercialize new biz model, we are doing investment, consulting, marketing and infrastructure supports for our partners to let in BlueBrick eco-system. <br><br>
                        - Government : We are also verifying and commercializing blockchain technology and tasks through collaborating with local governments and sovereign entity.<br><br>
                        - Financial : We are creating the Blockchain-based protocol finance ecosystem that allows the inter-exchange of real & digital(crypto) assets.


				</div>
			</div>

		</div>

		<%@ include file="/WEB-INF/jsp/common/footer_m_eng.jsp"%>


	</div>






</body>
</html>