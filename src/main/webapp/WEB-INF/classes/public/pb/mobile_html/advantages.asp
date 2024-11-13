<%
    cont = REQUEST("cont")
%>


<!DOCTYPE html>
<html lang="ko">
<head>

    <title>bluebrick</title>
    <meta charset="utf-8">
    <meta http-equiv="Expires" content="0">
    <meta http-equiv="imagetoolbar" content="no">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="user-scalable=no,initial-scale=1,maximum-scale=1,minimum-scale=1,width=device-width,target-densitydpi=high-dpi">
    <!-- <meta name="viewport" content="user-scalable=no,width=1080"> -->
    <link rel="stylesheet" href="../resources/css/common_m.css">
    <link rel="stylesheet" href="../../resources/css/default.css">
    <link rel="stylesheet" href="../../resources/css/jxslider-ver-x3.css">
    <link rel="stylesheet" href="../../resources/css/fonts.css">
    <link rel="stylesheet" href="../resources/css/layout_m.css">

    <script type="text/javascript" src="../../resources/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="../../resources/js/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="../../resources/js/jxslider-ver-x8.js"></script>
    <script type="text/javascript" src="../../resources/js/jquery.easing.js"></script>
    <script type="text/javascript" src="../../resources/js/jquery.dotdotdot.js"></script>
    <script type="text/javascript" src="../resources/js/iscroll.js"></script>
    <script type="text/javascript" src="../resources/js/default_m.js"></script>


</head>
<body>

<div class="wrap">

    <header class="header_mc">
        <div class="movie_mc on">
            <div class="player">
                <iframe src="http://www.youtube.com/embed/3G6T-gNQ_2E?rel=0&vq=hd720&controls=1&showinfo=1&autoplay=1&loop=1&wmode=transparent&playlist=3G6T-gNQ_2E" frameborder="0"></iframe>
            </div>
        </div>

        <div class="content_mc">
            <div class="btn_gnb_open">
                <span></span>
                <span></span>
                <span></span>
            </div>
            <h1 class="logo_mc"><a href="../index.html"><img src="../resources/imgs/com/logo.png" alt=""></a></h1>

            <nav class="gnb_mc fn--p fw--500">
                <div class="btn_gnb_close">
                    <span></span>
                    <span></span>
                </div>

                <div class="iscroll" id="iscroll">
                    <div class="icont">
                        <ul>
                            <li data-link="introduce"><h3 class="ht"><a href="introduce.asp">INTRODUCE</a></h3></li>
                            <li data-link="advantages"><h3 class="ht"><a href="advantages.asp">ADVANTAGES</a></h3></li>
                            <li data-link="news">
                                <h3 class="ht"><a href="javascript:;">NOW BLUEBRICK</a></h3>

                                <nav class="gnb_sub_mc fw--400">
                                    <ul>
                                        <li data-link="news"><a href="news_list.html">NEWS</a></li>
                                        <li data-link="notice"><a href="notice_list.html">NOTICE</a></li>
                                    </ul>
                                </nav>
                            </li>
                            <li data-link="technique">
                                <h3 class="ht"><a href="" >TECHNIQUE</a></h3>
                                <nav class="gnb_sub_mc fw--400">
                                    <ul>
                                        <li><a href="technical.html" data-link="technique">TECHNIQUE</a></li>
                                    </ul>
                                </nav>
                            </li>
                            <li>
                                <h3 class="ht"><span class="btn_youtube ic-sets ty1-5"></span> YouTube</h3>
                            </li>
                        </ul>
                    </div>
                </div>

            </nav>
        </div>
    </header>

    <script>
        dep1 = 0;

        cont = "<%=cont%>";
    </script>

    <div class="inner_mc sub_top_mc scroll_top fn--p">
        <h3 class="title">ADVANTAGES</h3>
    </div>

    <div class="inner_mc advantages_mc">

        <div class="content_mc content_1_mc">
            <h2 class="htitle">SCALABILITY</h2>
            <div class="exp">
                <dl>
                    <dt>멀티 사이드 체인 구조</dt>
                    <dd><p>서비스 그룹별 사이드 체인 생성으로 무제한 확장 가능</p></dd>
                    <dd><p>구조적 분산화로 인한 트랜잭션 병렬 처리로 빠른 처리 속도 보장</p></dd>
                    <dd><p>그룹별 체인 분산으로 인한 타 서비스 트래픽 영향도 최소화</p></dd>
                </dl>
            </div>

        </div>

        <div class="content_mc content_2_mc">
            <h4 class="htitle">SPEED</h4>
            <div class="exp">
                <dl>
                    <dt>POA 합의 알고리즘 도입</dt>
                    <dd><p>가장 직관적인 합의 알고리즘(Proof of Authority) 채택으로 트랜잭션 처리 속도 향상</p></dd>
                    <dd><p>블록 생성 주기 3초로 트랜잭션 확정 속도 향상</p></dd>

                    <dt>최소 TPS 보장</dt>
                    <dd><p>최소 500TPS 이상 보장</p></dd>
                    <dd><p>대용량 TPS 필요 시 고사양 서버 적용된 추가 사이드 체인 구성으로 지원 가능</p></dd>
                </dl>

            </div>
        </div>

        <div class="content_mc content_3_mc">
            <h4 class="htitle">SECURITY / STABILITY</h4>
            <div class="exp">
                <dl>
                    <dt>보안성 증대</dt>
                    <dd><p>이더리움 기반의 블록체인으로 위 변조 불가능</p></dd>
                    <dd><p>차별화된 접근 권한의 허가형 네트워크</p></dd>
                    <dd><p>금융권 수준의 보안 시스템 네트워크 적용</p></dd>

                    <dt>안정성 향상</dt>
                    <dd><p>20G 네트워크 제공</p></dd>
                    <dd><p>자체 IDC(역삼/분당/부산)보유 및 20년 이상 운영 노하우 적용</p></dd>
                </dl>

            </div>
        </div>

        <div class="content_mc content_4_mc">
            <h4 class="htitle">ECONOMICAL</h4>

            <div class="exp">
                <dl>
                    <dt>거래수수료 무료 정책</dt>
                    <dd><p>신규 블록체인 비즈니스 적용에 유리</p></dd>

                    <dt>Web/App 지갑 및 블록체인 explorer 지원</dt>
                    <dd><p>파트너사가 비즈니스에만 전념할 수 있게 통합된 Wallet 및 explorer 지원</p></dd>

                    <dt>파트너사 기술지원</dt>
                    <dd><p>비즈니스 DAPP 개발 기술 지원</p></dd>
                    <dd><p>개발 편의를 위한 API 제공</p></dd>
                </dl>

            </div>
        </div>

        <div class="content_mc content_5_mc">
            <h4 class="htitle">COMPATIBILITY</h4>
            <div class="exp">
                <dl>
                    <dt>Inter Exchange</dt>
                    <dd><p>내부 토큰 간의 교환 기능 지원</p></dd>
                    <dd><p>향후 외부 블록체인 코인 및 토큰과의 교환 기능 지원(예정)</p></dd>
                </dl>

            </div>
        </div>

    </div>

    <footer class="footer_mc fn--n fw--200">
        <div class="content_mc">

            <!-- <h2 class="logo_sp"><img src="resources/imgs/com/logo2.png" alt=""></h2> -->
            <button class="btn_top btn-sets ty1-4 aft"></button>

            <nav class="etc_mc">
                <ul>
                    <li><a href="https://www.sejongtelecom.net/pages/sejong/sejong" target="_blank">회사소개</a></li>
                    <li><a href="privacy.html">개인정보취급방침</a></li>
                </ul>
            </nav>

            <div class="info_sp">
                세종텔레콤 주식회사 ㅣ 고객센터 <a href="tell:1688-1000">1688-1000</a> (유료) , <a href="tell:080.889.1000">080.889.1000</a> (무료) <br>
                서울시 강동구 상일로 10길 36(상일동,세종빌딩) ㅣ 대표 : 김형진
            </div>

            <div class="copyright_mc">Copyrightⓒ Bluebrick. All Rights Reserved.</div>

        </div>
    </footer>

</div>






</body>
</html>