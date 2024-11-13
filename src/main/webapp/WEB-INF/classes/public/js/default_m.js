var winH , scrollY , link , dep1;
var $header , $movie , $header_content , $scroll_top , scrollY2 , $btn_gnb_open , $gnb_sub , $myScroll , cont; //모바일 추가 변수

$(function()
{
    $header = $('.header_mc');
    $header_content = $('.header_mc .content_mc');

    $movie = $('.movie_mc');
    $scroll_top = $('.scroll_top');
    $btn_gnb_open = $('.header_mc .btn_gnb_open');
    $gnb_sub = $('.gnb_sub_mc');

    $('.footer_mc .btn_top').on('click', function(event)
    {
        $('html,body').stop().animate({'scrollTop': 0 }, 700, function()
        {

        });
    });

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
    //introduceInit();
    advantagesInit();
    popupInit();


    //console.log('link   '  ,    link ,"  , " ,  dep1 , "   , " , link =='' )
    //link       ,  2    ,  true
    //link    undefined   ,  1    ,  false
    //if( !dep1 || dep1 == undefined )
    if( link == '' || dep1 == undefined  )
    {
        showPOP ('popup_mc'); // 팝업 보이기
        $('.wrap').addClass('main');

        //$movie.removeClass('on'); // 메인에서 영상 보이지 않게 하려면
    }
    else
    {
        $movie.removeClass('on');
        $popup_mc.removeClass('on');
    }



    setTimeout(function()
    {
        //console.log( href.substr( href.lastIndexOf('/' ) ).indexOf('index')  )
        //if ( href.substr( href.lastIndexOf('/' ) ).indexOf('index') != -1 )
        // if( link )
        if( cont )
        {
            //index 파일이면 메인으로 간주하고 움직임을 준다.

            //mainMove( link ) ;
            mainMove( cont ) ;
            //gnbReset();
        }
        else
        {

            //gnbReset();
        }

    }, 400);




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

function loaded() {
  //myScroll = new iScroll('icontent');
  // myScroll = new IScroll('#iscroll',
  //   {
  //       scrollY: true

  //       // scrollbars: true,
  //       //  scrollX: false, scrollY: true,freeScroll: false,
  //       ,mouseWheelSpeed:1700
  //       // // mouseWheel: true,
  //       , click:true //아이폰에서 필수
  //       //,interactiveScrollbars: false
  //       ,bounce:false
  //       //bounceEasing: 'elastic',
  //       //bounceTime: 0
  //   });

  //myScroll = new IScroll('#iscroll');

  myScroll = new iScroll('iscroll');

}

document.addEventListener('DOMContentLoaded', function () { setTimeout(loaded, 200); }, false);

function gnbInit()
{

    //$('.gnb_sub_mc > ul > li')

    $('.gnb_mc .btn_gnb_close').on('click', function(event)
    {
        $(this).closest('.gnb_mc').removeClass('on');
        $btn_gnb_open.removeClass('on');

    });


    $btn_gnb_open.on('click', function(event)
    {
        event.preventDefault();

        var _this = $(this);
        $(this).addClass('on');

        setTimeout(function()
        {
            _this.nextAll('.gnb_mc').addClass('on');

        }  , 800);
    });

    $('.gnb_mc .iscroll .icont > ul > li').on('click', function(event)
    {
        console.log('111 ' , $(this).data('link') , 'undefined')
        if( $(this).data('link')  != undefined )
        //if ( $(this).index() != 4 )
        {

            var $sub = $(this).find('.gnb_sub_mc');

            //$(this).addClass('on').siblings().removeClass('on');

            if ( !$(this).hasClass('on') )
            {
                $(this).addClass('on').siblings().removeClass('on');

                if( $sub.size() != 0 )
                {
                    event.preventDefault();
                    $('.gnb_sub_mc').height(0);
                    //console.log('click   ' , $sub.data('height'),  $sub.attr('data-height') )
                    $sub.height(  $sub.attr('data-height') );
                }

            }
            else
            {

                $(this).removeClass('on');
                if( $sub.size() != 0 )
                {
                    event.preventDefault();
                    $('.gnb_sub_mc').height(0);
                    //console.log('click   ' , $sub.data('height'),  $sub.attr('data-height') )
                    //$sub.height(  $sub.attr('data-height') );
                }
            }

            setTimeout(function()
            {
                myScroll.refresh();
            }
            , 300);


        }
        else
        {

            //영상 나오는 부분
            $(this).closest('.gnb_mc').removeClass('on');
            $btn_gnb_open.removeClass('on');

            $scroll_top.css({'margin-top':  $header_content.innerHeight() });
            $movie.addClass('on');

            $('html,body').scrollTop(0);
            $(this).trigger('scroll');

        }

        //var link = $(this).find('.ht > a').data('link');
        //var link = $(this).data('link');
        //mainMove ( link );

    });

    $('.gnb_sub_mc > ul > li').on('click',function(event)
    {

        event.stopPropagation();
    });
}

function mainMove( link )
{
    /*
    $('.inner_mc').each(function(index, el)
    {
        //console.log( $(this).attr('class') , $(this).attr('class').indexOf( link ) );
        if( $(this).attr('class').indexOf( link ) != -1 && $(this).attr('class').indexOf( link ) != 0 )
        {
            $('html,body').stop().animate({scrollTop: $(this).offset().top-99 }, 700, function()
            {
            });
        }

    });
    */
            setTimeout(function()
            {
                $('html,body').stop().animate({scrollTop: $('.' + cont + '_mc' ).offset().top - $header_content.innerHeight() }, 500, function()
                {

                });
            }, 400 )



    // $('.inner_mc').each(function(index, el)
    // {
    //     //console.log( $(this).attr('class') , $(this).attr('class').indexOf( link ) );
    //     if( $(this).attr('class').indexOf( link ) != -1 && $(this).attr('class').indexOf( link ) != 0 )
    //     {
    //         $('html,body').stop().animate({scrollTop: $(this).offset().top-99 }, 700, function()
    //         {
    //         });
    //     }

    // });

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
        console.log('ddddd')
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

     var option =
      {
            nView : 3
            ,nSans : 20
            ,bAuto : true
            ,nAutoSpeed : 1000
      };

      if( $("#jx-slider-ad").size() > 0 )
      {
          new JXSLIDER( $("#jx-slider-ad") ,  option );
      }

    /*
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
    */

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

    setTimeout(function()
    {
        gnbInit();
    }, 1000)


    $(this).on('resize', on_resize );
    $(this).on('scroll', on_scroll );
    $(this).trigger('resize');
    $(this).trigger('scroll');
});

function on_resize(e)
{
    winH = $(this).height();

    //console.log('scroll  ' , scrollY , scrollY2)


    $gnb_sub.each(function(i, e)
    {
        //console.log('----  ' , i , $(this).innerHeight() , $(this).find('> ul > li').size() * $(this).find('> ul > li').outerHeight(true)   );
        var h = $(this).find('> ul > li').size() * $(this).find('> ul > li').outerHeight(true);
        $(this).attr('data-height' , h );

        if( $(this).parents('li').hasClass('on') )
        {
            $(this).css('height' , h );
            setTimeout(function()
            {
                myScroll.refresh();
            }
            , 220);

        }
    });


    if ( scrollY > scrollY2 )
    {
        //console.log('on_resize down2')
    }
    else
    {
        //console.log('on_resize up ' , $header_content.innerHeight());
    }

    if( $header.hasClass('on') )
    {
        //$scroll_top.css({'margin-top':  $header_content.innerHeight()  });
    }
    else
    {
        //$scroll_top.css({'margin-top':  0  });
    }


}//on_resize


//스크롤에 의한 메인 요소 나타나는 효과 적용
function on_scroll(e)
{

    scrollY2 = scrollY;
    scrollY = $(this).scrollTop();

    //console.log('scroll  ' , scrollY , $movie.innerHeight() )
    if( scrollY >=  $movie.innerHeight() )
    {

        if( !$header.hasClass('on') )
        {
            //console.log('1')
            $header.addClass('on');
            $scroll_top.css({'margin-top':  $header_content.innerHeight() });
        }

    }
    else
    {
        if( $header.hasClass('on') )
        {
            console.log('2')
            $header.removeClass('on');
            $scroll_top.css({'margin-top':  0 });
        }

    }


    if ( scrollY > scrollY2 )
    {


        if ( $movie.hasClass('on') )
        {
            //console.log('sroll up')
            //$movie.removeClass('on');
            //$movie.slideUp(400);
            //$movie.hide();
            //$scroll_top.css({'margin-top':  $header_content.innerHeight() });
        }
        //$movie.slideDown(200);
    }
    else
    {
        //console.log('sroll down ' , $header.innerHeight())

    }



    var $advantages_other = $('.main_advantages_mc .content_mc .other > li');
    $('.inner_mc').each(function(i, e)
    {

        if( i == 0 )
        {
            //console.log('-- ' , $(this).offset().top , scrollY+winH/1.5)
        }

        //if( $(this).offset().top <= scrollY+winH/1.5 && $(this).offset().top  + $(this).height() >  scrollY + ( winH / 2 ) )
        if( $(this).offset().top <= scrollY+winH/1.5  )
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

var $popup_mc;
function popupInit()
{
    $popup_mc = $('.popup_mc');
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

    // $('.gnb_mc .btn_youtube').on('click', function(event)
    // {
    //     $popup_mc.addClass('on');
    //     $('.popup_mc .inner_sp .player iframe').attr('src' , 'http://www.youtube.com/embed/3G6T-gNQ_2E?rel=0&vq=hd720&controls=1&showinfo=1&autoplay=1&loop=1&wmode=transparent&playlist=3G6T-gNQ_2E');
    // });

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