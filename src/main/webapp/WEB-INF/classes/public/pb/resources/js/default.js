var winH , scrollY , link , dep1 ;
$(function()
{
    if ( $('.dotdot').size() > 0 )
    {
        $('.dotdot').dotdotdot(
        {
          ellipsis: '...',//말줄임 뭘로 할지
          watch : false, //윈도우 창에따라서 업데이트 할건지, 윈도우가 리사이즈될 때 업데이트할 건지
          wrap : 'letter',//word(단어단위), letter(글 단위), children(자식단위) 자르기
        });
    }


    visualInit();
    introduceInit();
    advantagesInit();
    popupInit();

    showPOP ('popup_mc'); // 팝업 보이기
    //console.log('link   '  ,    link ,"  , " ,  dep1 , "   , " , link =='' )
    //if( !dep1 || dep1 == undefined )
    if( link == '' || dep1 == undefined  )
    {
        $('.wrap').addClass('main');
    }
    setTimeout(function()
    {
        //console.log( href.substr( href.lastIndexOf('/' ) ).indexOf('index')  )
        //if ( href.substr( href.lastIndexOf('/' ) ).indexOf('index') != -1 )
        if( link )
        {
            //index 파일이면 메인으로 간주하고 움직임을 준다.
            mainMove( link ) ;
            gnbReset();
        }
        else
        {
            gnbReset();
        }

    }, 400);

    gnbInit();
});

//메뉴 고정
function gnbReset()
{

    var $gnb = $('.gnb_mc > ul > li');
    $gnb.each(function(i, e)
    {

        if ( link != undefined )
        {
            if( link == $(this).data('link') )
            {
                $(this).addClass('on').siblings().removeClass('on');
            }
        }
        else
        {
            if( dep1 == i )
            {
                $(this).addClass('on').siblings().removeClass('on');
            }

        }

    });
}

function gnbInit()
{


    $('.main .gnb_mc > ul > li').on('click', function(event)
    {
        event.preventDefault();
        $(this).addClass('on').siblings().removeClass('on');
        //var link = $(this).find('.ht > a').data('link');
        var link = $(this).data('link');
        mainMove ( link );

    });

    $('.gnb_sub_mc > ul > li').on('click',function(event)
    {

        event.stopPropagation();
    });
}

function mainMove( link )
{

    $('.inner_mc').each(function(index, el)
    {
        //console.log( $(this).attr('class') , $(this).attr('class').indexOf( link ) );

        if( $(this).attr('class').indexOf( link ) != -1 && $(this).attr('class').indexOf( link ) != 0 )
        {
            $('html,body').stop().animate({scrollTop: $(this).offset().top-99 }, 700, function() {
                /* stuff to do after animation is complete */
            });
        }

    });

}

function visualInit()
{
    var $tab = $('.main_visual_mc .slogan_sp .t_3 .tab > li');
    var $exp = $('.main_visual_mc .slogan_sp .t_3 .exp > li');

    var nAdCurr = 0;
    var nAdTotal = $tab.size();

    setTimeout(function()
    {
        setInterval(function()
        {
            nAdCurr++;
            if( nAdCurr > nAdTotal-1 )
            {
                nAdCurr = 0;
            }
            $tab.eq(nAdCurr).addClass('on').siblings().removeClass('on');
            $exp.eq(nAdCurr).addClass('on').siblings().removeClass('on');
        },3000);
    } , 2000 );
}//visualInit

function introduceInit()
{
    var $introduce_lst = $('.main_introduce_mc .info_sp .lst');
    var $introduce_view = $('.main_introduce_mc .info_sp .view');
    $('.main_introduce_mc .info_sp .lst > li').on('click', function(event)
    {
        $introduce_view.addClass('on');
        $introduce_view.find('>li').eq( $(this).index() ).addClass('on').siblings().removeClass('on');
        $introduce_lst.addClass('on');
    });

    $('.main_introduce_mc .info_sp .view > li .btn_close').on('click', function(event)
    {
        $introduce_view.removeClass('on');
        $introduce_lst.removeClass('on');
    });

}//introduceInit

function advantagesInit()
{
    $('.main_ad_mc .lst > ul > li').on('click', function(event)
    {
        $(this).addClass('on').siblings().removeClass('on');
        $(this).closest('ul').addClass('on');
    });

    $('.main_ad_mc .lst > ul > li .exp .btn_close').on('click', function(event)
    {
        event.stopPropagation();
        $(this).closest('.ani').removeClass('on');
        $(this).closest('ul').removeClass('on');
    });

    /*
    var $view = $('.main_ad_mc .view');
    var $view_ul = $('.main_ad_mc .view > ul');
    var $view_li = $('.main_ad_mc .view > ul > li');
    var $view_li = $('.main_ad_mc .view > ul > li');
    var $view_close = $('.main_ad_mc .view .btn_close');

    $('.main_ad_mc .lst > ul > li').on('click', function(event)
    {
        $view.addClass('on');
        $view_li.eq($(this).index()).addClass('on').siblings().removeClass('on');

        setTimeout(function()
        {
            $view_ul.addClass('on');
            $view_close.addClass('on');
        }, 600);
    });

    $view_close.on('click', function(event)
    {
        $view.removeClass('on');
        $view_ul.removeClass('on');
        $view_close.removeClass('on');
    });
    */

}


$(window).load(function()
{
    $(this).on('resize', on_resize );
    $(this).on('scroll', on_scroll );
    $(this).trigger('resize');
    $(this).trigger('scroll');
});

function on_resize(e)
{
    winH = $(this).height();
}//on_resize

//스크롤에 의한 메인 요소 나타나는 효과 적용
function on_scroll(e)
{
    scrollY = $(this).scrollTop();

    var $advantages_other = $('.main_advantages_mc .content_mc .other > li');
    $('.inner_mc').each(function(i, e)
    {

        if( $(this).offset().top <= scrollY+winH/1.5 && $(this).offset().top  + $(this).height() >  scrollY + ( winH / 2 ) )
        {
            $(this).find('.amt').addClass('action');

            ///console.log(  $advantages_other.find('.amt').hasClass('action') )

            if ( $advantages_other.size() > 0 )
            {
                $advantages_other.each(function(index, el)
                {
                    if( !$(this).find('.btn').hasClass('on') &&  $(this).find('.amt').hasClass('action') )
                    {
                        var _this = $(this);
                        setTimeout(function()
                        {
                            _this.find('.btn').addClass('on');
                        } , 2000);
                    }
                });
            }
        }
        else
        {
            //$(this).find('.amt').removeClass('action');
        }

        if( $(this).offset().top <= scrollY+winH/1.5 && $(this).offset().top  + $(this).height() >  scrollY  )
        {

            $(this).find('.main_bg').addClass('action');
        }
        else
        {
            //$(this).find('.bg').removeClass('action');
        }
    });
}//on_scroll

function popupInit()
{
    var $popup_mc = $('.popup_mc');
    $('.popup_mc .inner_sp .btn_close').on('click', function(event)
    {
        if ( $('.popup_mc .inner_sp .chk label input').is(':checked') )
        {
            setCookie('popup_mc' , 'done' , 1);
            showPOP ('popup_mc');
        }
        else
        {
            $popup_mc.removeClass('on');
            $('.popup_mc .inner_sp .player iframe').attr('src' , '');

        }
    });

    $('.gnb_mc .btn_youtube').on('click', function(event)
    {
        $popup_mc.addClass('on');
        $('.popup_mc .inner_sp .player iframe').attr('src' , 'http://www.youtube.com/embed/3G6T-gNQ_2E?rel=0&vq=hd720&controls=1&showinfo=1&autoplay=1&loop=1&wmode=transparent&playlist=3G6T-gNQ_2E');
    });

}

//팝업 보이기
function showPOP(div)
{

    var cookiedata = document.cookie;

    if (cookiedata.indexOf(div+"=done") < 0 )
    {
        //document.getElementById(div).style.visibility = "visible";
        //console.log('ssss')
        $('#'+div).addClass('on');
    }
    else
    {
        //document.getElementById(div).style.visibility = "hidden";
        //console.log('bbb')
        $('#'+div).removeClass('on');
        $('#'+div).find('.inner_sp .player iframe').attr('src' , '');
    }
}//showPOP

//쿠키 설정
function setCookie(cname, cvalue, exdays)
{
    //console.log('setCookie ' , cname, cvalue, exdays)
    var todayDate = new Date();
    todayDate.setDate( todayDate.getDate() + exdays );
    document.cookie = cname + "=" + escape( cvalue ) + "; path=/; expires=" + todayDate.toUTCString() + ";"
}//setCookie

function delCookie(cname)
{
    //console.log('delCookie ' , cname)
    document.cookie = cname + "=; path=/";
}//delCookie