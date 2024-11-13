<%
    link = REQUEST("link")
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
    <link rel="stylesheet" href="resources/css/common.css">
    <link rel="stylesheet" href="resources/css/default.css">
    <link rel="stylesheet" href="resources/css/jxslider-ver-x3.css">
    <link rel="stylesheet" href="resources/css/fonts.css">
    <link rel="stylesheet" href="resources/css/layout.css">

    <script type="text/javascript" src="resources/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="resources/js/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="resources/js/jxslider-ver-x7.js"></script>
    <script type="text/javascript" src="resources/js/jquery.easing.js"></script>
    <script type="text/javascript" src="resources/js/default.js"></script>
    <script type="text/javascript" src="resources/js/jquery.dotdotdot.js"></script>



</head>
<body>

<div class="wrap">

    <header class="header_mc">
        <div class="content_mc">
            <h1 class="logo_mc"><a href="index.asp"><img src="resources/imgs/com/logo.png" alt=""></a></h1>

            <nav class="gnb_mc fn--p fw--500">
                <ul>
                    <li data-link="introduce"><h3 class="ht"><a href="">INTRODUCE</a></h3></li>
                    <li data-link="advantages"><h3 class="ht"><a href="">ADVANTAGES</a></h3></li>
                    <li data-link="news">
                        <h3 class="ht"><a href="javascript:;">NOW BLUEBRICK</a></h3>

                        <nav class="gnb_sub_mc fw--500">
                            <ul>
                                <li data-link="news"><a href="html/news_list.html">NEWS</a></li>
                                <li data-link="notice"><a href="html/notice_list.html">NOTICE</a></li>
                            </ul>
                        </nav>
                    </li>
                    <li data-link="technique">
                        <h3 class="ht"><a href="" >TECHNIQUE</a></h3>
                        <nav class="gnb_sub_mc fw--500">
                            <ul>
                                <li><a href="html/technical.html" data-link="technique">TECHNIQUE</a></li>
                            </ul>
                        </nav>

                    </li>
                </ul>
                <button type="button" class="btn_youtube ic-sets ty5-1"></button>
            </nav>
        </div>
    </header>

    <script>
        link = "<%=link%>";
    </script>

    <div class="inner_mc main_visual_mc">
        <div class="content_mc">
            <div class="main_bg main_bg_1"><img src="resources/imgs/bg_1.jpg" alt=""></div>
            <div class="slogan_sp amt amt_1">
                <p class="t_1 ani fn--p fw--600">Let's Build Up the</p>
                <p class="t_2 ani fn--p fw--600">New Eco-system</p>
                <div class="t_3 ani">
                    <ul class="tab fn--p fw--500">
                        <li class="on">Assemblie</li>
                        <li>Decentralization</li>
                        <li>Ecosystem</li>
                    </ul>
                    <ul class="exp fn--n">
                        <li class="on">블루브릭으로부터 발신된 가치 들은 여러 주체를 연결하고, <br> 확장하며, 궁극적으로 공유와 상생의 새로운 생태계를 만듭니다.</li>
                        <li>그 가치들은 중심에서 확장하고, 나아가 디지털 자산의 유동화를  <br>실현하며 다양한 가능성을 발견하게 만드는 플랫폼을 구축합니다.</li>
                        <li>블루브릭으로부터 발신된 가치 들은 여러 주체를 연결하고, <br>확장하며, 궁극적으로 공유와 상생의 새로운 생태계를만듭니다.</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="inner_mc main_introduce_mc">

        <div class="content_mc">
            <div class="main_bg main_bg_1"><img src="resources/imgs/bg_2.jpg" alt=""></div>
            <div class="slogan_sp amt amt_2">
                <p class="t_1 ani fn--p fw--600">Introduce to BlueBrick</p>
                <p class="t_2 ani fn--n fw--200">
                    세종의 뛰어난 네트워크 운영기술을 블록으로 함축시켜,  <br>
                    응축된 가치와 가능성을 펼쳐내는 <br>
                    블록체인 메인넷 & 디앱 서비스 입니다.<br>
                    블루브릭으로 발신된 가치들은 여러 주체를 연결하고, 확장하며, <br>
                    참여자들과 자유와 상생의 새로운 나눔생태계를 구축해냅니다.
                </p>
            </div>

            <div class="info_sp amt amt_3">
                <ul class="view">
                    <li class="on">
                        <h3 class="num">01.</h3>
                        <p class="title">블록체인 플랫폼의 특징</p>
                        <p class="exp">
                            세종텔레콤의 통신 인프라와 자체 개발한 메인넷을 기반으로 실제 <br>
                            비즈니스에 적용할 수 있도록 확장 가능한 블록체인 플랫폼입니다. <br><br>
                            다양한 분야에 접목하고 참여를 원하는 업체와 공동 비즈니스를 개척해 <br>
                            나갈 수 있는 나눔과 상생의 경제 플랫폼이 되기를 추구합니다.
                        </p>
                        <button type="button" class="btn_close"></button>
                    </li>

                    <li>
                        <h3 class="num">02.</h3>
                        <p class="title">블루브릭의 가치</p>
                        <p class="exp">
                            세종의 뛰어난 네트워크 운영기술에 대한 자신감과 책임감에 대한 <br>
                            표현이기도하며 세종텔레콤이 직접 연구∙개발한 우수한 블록체인 기술을<br>
                            블록으로 함축시켜 응축된 가치와 가능성을 펼쳐냅니다.<br><br>
                            각 블록별로 안정적이고 정확한 타임스탬프 기록 기술을 구현하며 마치<br>
                            블록을 쌓듯 여러 주체를 연결하고 확장하고(=신규 비즈니스 확장) 벽돌을<br>
                            안정감 있게 쌓아감으로써 플랫폼 이용고객의 자산가치를 높이는 기능과<br>
                            서비스 목표에 의미를 부여했습니다.궁극적으로는 세종텔레콤과 참여자가<br>
                            나누고 상생하는 새로운 경제 생태계를 만들어가게 됩니다.
                        </p>
                        <button type="button" class="btn_close"></button>
                    </li>

                    <li>
                        <h3 class="num">03.</h3>
                        <p class="title">블루브릭의 의미</p>
                        <p class="logo"><img src="resources/imgs/introduce_logo.png" alt=""></p>

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

                </ul>

                <ul class="lst">
                    <li class="ani">
                        <h3 class="num">01.</h3>
                        <p class="title">블록체인 플랫폼의 특징</p>
                        <button type="button" class="ic-sets ty1-1 btn_plus"></button>
                    </li>
                    <li class="ani">
                        <h3 class="num">02.</h3>
                        <p class="title">블루브릭의 가치</p>
                        <button type="button" class="ic-sets ty1-1 btn_plus"></button>
                    </li>
                    <li class="ani">
                        <h3 class="num">03.</h3>
                        <p class="title">블루브릭의 의미</p>
                        <button type="button" class="ic-sets ty1-1 btn_plus"></button>
                    </li>
                </ul>
            </div>
        </div>

    </div>


    <div class="inner_mc main_advantages_mc">

        <div class="main_ad_mc fn--p">

            <div class="lst amt amt_3">
                <ul>
                    <li class="ani">
                        <div class="cont">
                            <p class="ic"><img src="resources/imgs/ad_ic_1.png" alt=""></p>
                            <p class="txt fw--500">SCALABILTY</p>
                            <button type="button" class="btn_more btn-sets ty1-4 aft fw--600">More</button>
                        </div>
                        <div class="exp">
                            <dl>
                                <dt> 거래 수수료 무료정책 </dt>
                                <dd> 신규 블록체인 비즈니스 적용에 유리 </dd>
                            </dl>
                            <button type="button" class="btn_close ic-sets ty1-2"></button>
                        </div>
                    </li>
                    <li class="ani">
                        <div class="cont">
                            <p class="ic"><img src="resources/imgs/ad_ic_2.png" alt=""></p>
                            <p class="txt fw--500">SPEED</p>
                            <button type="button" class="btn_more btn-sets ty1-4 aft fw--600">More</button>
                        </div>
                        <div class="exp">
                            <dl>
                                <dt> 거래 수수료 무료정책 </dt>
                                <dd> 신규 블록체인 비즈니스 적용에 유리 </dd>
                            </dl>
                            <button type="button" class="btn_close ic-sets ty1-2"></button>
                        </div>
                    </li>
                    <li class="ani">
                        <div class="cont">
                            <p class="ic"><img src="resources/imgs/ad_ic_3.png" alt=""></p>
                            <p class="txt fw--500">SECURITY / STABILITY</p>
                            <button type="button" class="btn_more btn-sets ty1-4 aft fw--600">More</button>
                        </div>
                        <div class="exp">
                            <dl>
                                <dt> 거래 수수료 무료정책 </dt>
                                <dd> 신규 블록체인 비즈니스 적용에 유리 </dd>
                            </dl>
                            <button type="button" class="btn_close ic-sets ty1-2"></button>
                        </div>
                    </li>
                    <li class="ani">
                        <div class="cont">
                            <p class="ic"><img src="resources/imgs/ad_ic_4.png" alt=""></p>
                            <p class="txt fw--500">ECONMICAL</p>
                            <button type="button" class="btn_more btn-sets ty1-4 aft fw--600">More</button>
                        </div>
                        <div class="exp">
                            <dl>
                                <dt> 거래 수수료 무료정책 </dt>
                                <dd> 신규 블록체인 비즈니스 적용에 유리 </dd>
                            </dl>
                            <button type="button" class="btn_close ic-sets ty1-2"></button>
                        </div>
                    </li>
                    <li class="ani">
                        <div class="cont">
                            <p class="ic"><img src="resources/imgs/ad_ic_5.png" alt=""></p>
                            <p class="txt fw--500">COMPATIBILITY</p>
                            <button type="button" class="btn_more btn-sets ty1-4 aft fw--600">More</button>
                        </div>
                        <div class="exp">
                            <dl>
                                <dt>INTER EXCHANGE</dt>
                                <dd>내부 토큰 간의 교환 기능 지원</dd>
                                <dd>향후 외부 블록체인 코인 및 토큰과의 교환 기능 지원(예정)</dd>
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
                    <div class="trans_bg"><img src="resources/imgs/wallet_bg.jpg" alt=""></div>
                    <div class="amt amt_4">
                        <p class="ani"></p><p class="ani"></p><p class="ani"></p>
                        <p class="ani"></p><p class="ani"></p><p class="ani"></p>
                        <p class="ani"></p><p class="ani"></p><p class="ani"></p>
                    </div>

                   <a href="" class="btn fn--p">
                       <span class="t_1">Other business </span>
                       <span class="t_2 fw--500">BlueBrick <br>Wallet</span>
                       <span class="ic-sets"></span>
                   </a>
                </li>

                <li>
                    <div class="trans_bg"><img src="resources/imgs/scan_bg.jpg" alt=""></div>
                   <div class="amt amt_4">
                        <p class="ani"></p><p class="ani"></p><p class="ani"></p>
                        <p class="ani"></p><p class="ani"></p><p class="ani"></p>
                        <p class="ani"></p><p class="ani"></p><p class="ani"></p>
                   </div>

                   <a href="" class="btn fn--p">
                       <span class="t_1">Other business </span>
                       <span class="t_2 fw--500">BlueBrick <br>Scan</span>
                       <span class="ic-sets"></span>
                   </a>
                </li>

            </ul>
        </div>

    </div>


    <div class="inner_mc main_news_mc">

        <div class="content_mc">
            <div class="main_bg main_bg_2"><img src="resources/imgs/bg_4.png" alt=""></div>
            <div class="lst amt amt_3">
                <ul>
                    <li class="ani">
                        <a href="">
                            <span class="thumb"><img src="resources/imgs/news/thumb_1.jpg" alt=""></span>
                            <span class="sort">news </span>
                            <span class="title">세종텔레콤의 종합통신사 발돋움 </span>
                            <span class="ic-sets ty2-3"></span>
                        </a>
                    </li>
                    <li class="ani center">
                        <a href="">
                            <span class="thumb"><img src="resources/imgs/news/temp.png" alt=""></span>
                            <span class="sort">notice</span>
                            <span class="title">보안서비스 봇물 ‘SEcaaS’ 시대 막 올랐다</span>
                            <span class="ic-sets ty2-2"></span>
                        </a>
                    </li>
                    <li class="ani">
                        <a href="">
                            <span class="thumb"><img src="resources/imgs/news/thumb_2.jpg" alt=""></span>
                            <span class="sort">news </span>
                            <span class="title">세종텔레콤의 종합통신사 발돋움 </span>
                            <span class="ic-sets ty2-3"></span>

                        </a>
                    </li>
                </ul>
            </div>

        </div>

    </div>



    <div class="inner_mc main_technique_mc">
            <div class="content_mc">
                <div class="thumb"><img src="resources/imgs/thumb_4_1.jpg" alt=""></div>
                <div class="slogan_sp amt amt_2">
                    <p class="t_1 ani fn--p fw--600">BlueBrick <br> Technology</p>
                    <p class="t_2 ani fn--n fw--200">

                        BlueBrick은 무한 확장이 가능한 서비스 별 맞춤형 'Private <br>
                        BlockChain'입니다.  BlueBrick은 서비스 별 멀티체인을 통해 분산<br>
                        처리가 가능하며 Inter Exchange Chain을 통해  분산처리 된 정보를<br>
                        서로 교환할 수 있습니다. 서비스 중심의 블록체인인 BlueBrick은<br>
                        구조적 분산화로 트랜잭션이 병렬 처리되어 빠른 속도를 보장하며 서비스<br>
                        특성에 맞는 블록체인 구성에 효과적입니다. 블록 생성주기는 1초로써<br>
                        대용량 TPS가 필요한 파트너사의 니즈에 모든 맞춤형 지원이 가능하고 <br>
                        역삼, 분당, 부산 등 자체 보유한 IDC를 바탕으로 광대역 내/외부 네트워크<br>
                        및 Network APT, Layer 7 Switch 등 최첨단 보안 설비로 금융권 수준의<br>
                        보안 인프라를 지원하여 블록체인의 보안 및 안정성을 보장합니다.

                    </p>

                    <a href="#" class="ani btn_arrow ic-sets ty2-4"></a>
                </div>
            </div>
    </div>

    <div class="inner_mc main_token_mc">
        <div class="content_mc">
            <div class="thumb"><img src="resources/imgs/thumb_4_2.jpg" alt=""></div>
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
    </div>

    <footer class="footer_mc fn--n fw--200">
        <div class="content_mc">

            <h2 class="logo_sp"><img src="resources/imgs/com/logo2.png" alt=""></h2>
            <nav class="etc_mc">
                <ul>
                    <li><a href="">회사소개</a></li>
                    <li><a href="html/privacy.html">개인정보취급방침</a></li>
                </ul>
            </nav>

            <div class="info_sp">
                세종텔레콤 주식회사 ㅣ 고객센터 <a href="tell:1688-1000">1688-1000</a> ㅣ 서울시 강동구 상일로 10길 36(상일동,세종빌딩) ㅣ 대표 : 김형진 ㅣ 사업자번호 : 128-21-0729777
            </div>

            <div class="copyright_mc">Copyrightⓒ Bluebrick. All Rights Reserved.</div>

        </div>
    </footer>

    <div class="popup_mc on" id="popup_mc">

        <div class="inner_sp">
            <button type="button" class="btn_close ic-sets ty5-3"></button>
            <div class="player">
                <iframe src="http://www.youtube.com/embed/3G6T-gNQ_2E?rel=0&vq=hd720&controls=1&showinfo=1&autoplay=1&loop=1&wmode=transparent&playlist=3G6T-gNQ_2E" frameborder="0"></iframe>
            </div>
            <div class="chk fn--n">
                <label><input type="checkbox" name="" value="" ><span class="ico"></span>오늘 하루 이창을 열지 않기</label>
            </div>
        </div>

    </div>



</div>






</body>
</html>