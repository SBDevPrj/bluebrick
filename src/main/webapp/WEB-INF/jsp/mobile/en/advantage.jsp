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
        dep1 = 0;

        cont = "${param.cont}";
    </script>


    <div class="inner_mc sub_top_mc scroll_top fn--p">
        <h3 class="title">ADVANTAGES</h3>
    </div>

    <div class="inner_mc advantages_mc">

        <div class="content_mc content_1_mc">
            <h2 class="htitle">Digital Asset Trading</h2>
            <div class="exp">
                <dl>
                    <!-- <dt>Multi-side chain structure</dt>
                    <dd><p>Infinite side chain additions per service group</p></dd>
                    <dd><p>Increased processing speed via specified structures</p></dd>
                    <dd><p>Minimal interruption from other services by dividing chains by service group. </p></dd> -->

                    <!-- <dt>Multiple SideChain Structure</dt>
                    <dd><p>Unlimited expansion through the generation of a SideChain for each service group</p></dd>
                    <dd><p>Guaranteed quick processing speed thanks to parallel processing of transaction</p></dd>
                    <dd><p>Minimized interruption from other service due to dividing chains by each service group</p></dd> -->
                    
                    <!-- <dt>Redistribution of wealth in fairly by tokenizing asset</dt>
                    <dd><p>Real estate, ship finance, aircraft leasing, expensive artwork, etc</p></dd>
                    <dd><p>P2P trading with tokenized asset</p></dd>
                    <dt>Real estate Collective investment</dt>
                    <dd><p>Creating public offering funds to invest into real estates, Offering experience of easy investment to everyone</p></dd>
					<dd><p>Issuing digital certificates of entitlements, ensuring reliability</p></dd>
					<dd><p>Fast and active multilateral  transaction, reducing remittance fee</p></dd>
					<dd><p>The economic function by activating real-estate public offering funds</p></dd> -->

                    <dt>Reorganization of fair wealth by tokenizing assets</dt>
	            <dd><p>Real estate, ships, aircraft, expensive artworks, etc.</p></dd>
	            <dd><p>Free transactions between individuals through tokenization of assets</p></dd>
	            <dt>Real estate collective investment and revenue allocation services</dt>
	            <dd><p>Creating a public offering fund to invest in real estate items, easy and convenient investment experience for many</p></dd>
	            <dd><p>Real estate fund beneficiary certificates trading is possible through the blockchain-based platform</p></dd>
	            <dd><p>Matching beneficiary certificates with blockchain-based digital certificates</p></dd>
	            <dd><p>Fast, active multilateral transactions, reduced commission fees</p></dd>
	            <dd><p>Invigorating real estate public offering funds for the proper functioning of an economy</p></dd>
		</dl>
            </div>

        </div>

        <div class="content_mc content_2_mc">
            <h4 class="htitle">MyData</h4>
            <div class="exp">
                <dl>
                    <!-- <dt>Introduction of Proof of Authority consensus algorithm</dt>
                    <dd><p>Transaction processing speed increased by using the most direct agreement algorithm - Proof of authority</p></dd>
                    <dd><p>Increased transaction confirmation speed due to a block generation cycle of 1 second</p></dd> -->
                    <!-- <dt>Implementation of PoA Consensus Algorithm</dt>
                    <dd><p>Improve transaction processing speed through PoA</p></dd>
                    <dd><p>Block generation cycle of 1 sec</p></dd>

                    <dt>Minimum TPS is guaranteed</dt>
                    <dd><p>Guaranteed Minimum 1,000 TPS ( if needed, 10,000 TPS is possible )</p></dd>
                    <dd><p>Can be added SideChan with high spec of servers if high volume of TPS is needed</p></dd> -->
                    <dt>Medical MyData Platform</dt>
                    <dd><p>Efficient management of Medical data(Electronic prescription, issuing proof application forms, one-stop insurance claim, etc)</p></dd>
					<dd><p>Contributing to medical industry development by providing 'My Medical/Health data' to college, pharmaceutical company, labs, etc</p></dd>
					<dd><p>Providing a variety of rewards such as digital voucher compensation</p></dd>

                    <dt>SER: Smart Education Record</dt>
                    <dd><p>Tracking history and certificate of academic information and recovery missing data</p></dd>
					<dd><p>Securing data reliability and offering education history verification effectively (diploma/certificate/transcript, etc)</p></dd>
					<dd><p>Applying non-formal education and empowerment education program as well as regular academic curriculum</p></dd>
                </dl>

            </div>
        </div>

        <div class="content_mc content_3_mc">
            <h4 class="htitle">Supply Chain</h4>
            <div class="exp">
                <dl>
                    <!-- <dt>Increased Security</dt>
                    <dd><p>Ethereum-based and so impossible to fabricate/copy the data</p></dd>
                    <dd><p>Permissioned networks with differentiated accessibility</p></dd>
                    <dd>
                        <p>Security system at an equivalent level of financial sector</p>
                        <ol>
                            <li>- Network Duplex</li>
                            <li>- Network APT solution</li>
                            <li>- Layer 7 Switch, etc</li>
                        </ol>
                    </dd>

                    <dt>Increased Stability</dt>
                    <dd><p>Data centers located in Seoul/Yeoksam, Bundang/Dongcheon, and Busan/Centum</p></dd>
                    <dd><p>Network operation knowhow & professional manpower</p></dd> -->
                    <dt>Agricultural, Fisheries and Foods production and circulation service</dt>
                    <dd><p>Real-time tracking and monitoring in supply chain management</p></dd>
					<dd><p>Data authentication & integrity verification to prevent fraud</p></dd>
					<dd><p>Smart direct transaction between producers and consumers</p></dd>

                    <dt>Veterinary Records Management</dt>
                    <dd><p>Veterinary records and life management to establish a good culture of companion animal</p></dd>
                    <dd><p>Connecting total care services (health, medical, food, etc)</p></dd>
                    
                </dl>

            </div>
        </div>

        <div class="content_mc content_4_mc">
            <h4 class="htitle">BaaS</h4>

            <div class="exp">
                <dl>
                    <!-- <dt>No transaction fees</dt>
                    <dd><p>Reduces financial burden for new blockchain business owners</p></dd>

                    <dt>Real-time scan and web/App wallet information available</dt>
                    <dd><p>Integrated wallet and scan site allow partners to focus on their services </p></dd>

                    <dt>Technical support for business partners</dt>
                    <dd><p>Provides API for development and technical support for business dAPP development</p></dd>
                    <dd><p>Provides hybrid computing environment</p></dd> -->
                    
                    <dt>BaaS platform & BlueBrick ecosystem</dt>
                    <dd><p>Offering customized enterprise solution based on HyperLedger Fabric </p></dd>
					<dd><p>Implementing Blockchain technology in a short period, at a reasonable costs, without own technology</p></dd>
					<dd><p>Increasing security, automation and efficiency</p></dd>
                </dl>

            </div>
        </div>

        <div class="content_mc content_5_mc">
            <h4 class="htitle">DeFi</h4>
            <div class="exp">
                <dl>
                    <!-- <dt>Inter-Exchange Chain &amp; Open Platform</dt>
                    <dd>
                        <p>Inter-Exchange Chain</p>
                        <ol>
                            <li>- Exchange support for in/external data and coin/token </li>
                            <li>- Exchange support for external blockchain coin and tokens (scheduled) </li>
                        </ol>
                    </dd>
                    <dd>
                        <p>Open Platform</p>
                        <ol>
                            <li>- Synchronized to partner’s service main-net </li>
                            <li>- Aimed at standardization (i.e. Middleware, etc)</li>
                        </ol>
                    </dd> -->
                    
                    <dt>Defi Trading Platform for crypto-asset</dt>
                    <dd><p>Establishing B2B transaction to exchange stable coin</p></dd>
					<dd><p>Expanding financing service of digital assets (transfer, credit, custody, loan, etc)</p></dd>
                                
                </dl>

            </div>
        </div>

    </div>


    <%@ include file="/WEB-INF/jsp/common/footer_m_eng.jsp"  %>

</div>



</body>
</html>
