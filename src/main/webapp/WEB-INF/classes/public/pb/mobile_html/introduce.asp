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
    <script type="text/javascript" src="../resources/js/iscroll.5.2.js"></script>
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
        dep1 = 1;
        cont = "<%=cont%>";
    </script>

    <div class="inner_mc sub_top_mc scroll_top fn--p">
        <h3 class="title">INTRODUCE</h3>
    </div>

    <div class="inner_mc introduce_mc">

        <div class="content_mc content_1_mc">
            <h2 class="htitle">Introduce to <br>BlueBrick</h2>
            <div class="exp">
                세종의 뛰어난 네트워크 운영 기술을 블록으로 함축
                시켜, 응축된 가치와 가능성을 펼쳐내는 블록체인
                메인넷 & 디앱 서비스 입니다. <br><br>

                블루브릭으로 발신된 가치들은 여러 주체를 연결
                하고, 확장하며, 참여자들과 자유와 상생의 새로운
                나눔생태계를 구축해냅니다.
            </div>

        </div>

        <div class="content_mc content_2_mc">
            <h3 class="num">01.</h3>
            <h4 class="stitle">블록체인 플랫폼의 특징</h4>
            <div class="exp">
                세종텔레콤의 통신 인프라와 자체 개발한 메인넷을
                기반으로 실제 비즈니스에 적용할 수 있도록 확장
                가능한 블록 체인 플랫폼입니다.

                다양한 분야에 접목하고 참여를 원하는 업체와 공동
                비즈니스를 개척해 나갈 수 있는 나눔과 상생의 경제
                플랫폼이 되기를 추구합니다.
            </div>
        </div>

        <div class="content_mc content_3_mc">
            <h3 class="num">02.</h3>
            <h4 class="stitle">블루브릭의 가치</h4>
            <div class="exp">
                세종의 뛰어난 네트워크 운영기술에 대한 자신감과
                책임감에 대한 표현이기도하며 세종텔레콤이 직접
                연구∙개발한 우수한 블록체인 기술을 블록으로 함축
                시켜 응축된 가치와 가능성을 펼쳐냅니다.

                각 블록별로 안정적이고 정확한 타임스탬프 기록
                기술을 구현하며 마치 블록을 쌓듯 여러 주체를 연결
                하고 확장하고(=신규 비즈니스 확장) 벽돌을 안정감
                있게 쌓아감으로써 플랫폼 이용고객의 자산가치를
                높이는 기능과 서비스 목표에 의미를 부여했습니다.

                궁극적으로는 세종텔레콤과 참여자가 나누고 상생
                하는 새로운 경제 생태계를 만들어가게 됩니다.
            </div>
        </div>

        <div class="content_mc content_4_mc">
            <h3 class="num">03.</h3>
            <h4 class="stitle">블루브릭의 의미</h4>
            <div class="logo"><img src="../resources/imgs/introduce_logo.png" alt=""></div>

            <div class="exp">

                <h5>Blue</h5>
                <p>안정, 신뢰, 진심, 책임감 등을 표현 </p>

                <span class="ic-sets ty1-2"></span>

                <h5>Brick</h5>
                <p>블록체인의 기본 단위인 블록을 벽돌(Brick)로 표현</p>

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