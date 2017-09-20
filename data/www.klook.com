<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <script>
        //first register on error, so if the onerror not registerd, the error 
        //before the register is also cpatured
        var _window_error_list = [];
        window.onerror = function (){
            _window_error_list.push(Array.prototype.slice.call(arguments))
        }
        //page start time
        var _window_page_start = Date.now();
    
        function _addListener(obj, eventName, listener) {
            if( obj.addEventListener ) {
                obj.addEventListener( eventName, listener, false );
            } else {
                obj.attachEvent("on" + eventName, listener);
            }
        }
    
        _addListener(document,"DOMContentLoaded",function(){
            //console.log("DOM fully loaded and parsed");
            window._window_dom_loaded = Date.now();
        });
    
        _addListener(window,"load",function(){
            //console.log("page fully loaded and parsed");
            window._window_window_loaded = Date.now();
        });
    </script>

    <title> Klook - Activities, Tours, Attractions and Things To Do </title>

        <meta name="description" content="Discover and book amazing travel experiences with Klook">

        <meta name="keywords" content="Asia Tours, Cheap tickets, things to do, Universal Studios Singapore, Hong Kong Disneyland">

        <meta name="author" content="Klook Travel"/>
        <link class="dynamic_favicon" rel="shortcut icon" href="//cdn.klook.com/s_v098cf2db20/dist_web/desktop/imgs/favicon.png" type="image/x-icon"/>
        <meta name="baidu-site-verification" content="Ty9XLxZolV" />
        
        <meta http-equiv="content-language" content="en">
        <link rel="canonical" href="https://www.klook.com/" >
            <link rel="alternate" href="https://www.klook.com" hreflang="en">
            <link rel="alternate" href="https://www.klook.com/zh-TW/" hreflang="zh-TW">
            <link rel="alternate" href="https://www.klook.com/zh-CN/" hreflang="zh-CN">
            <link rel="alternate" href="https://www.klook.com/ko/" hreflang="ko">
            <link rel="alternate" href="https://www.klook.com/th/" hreflang="th">
            <link rel="alternate" href="https://www.klook.com/vi/" hreflang="vi">
        <script type="application/ld+json">
            {
              "@context" : "http://schema.org",
              "@type" : "WebSite",
              "name" : "Klook.com",
              "alternateName" : "Klook Travel",
              "url" : "https://www.klook.com"
            }
        </script>
        
        <meta property="fb:pages" content="1437638383172374" />
        
            <script>
                    var dataLayer = [{"Currency":"CNY","Gender":"","IPLocationCity":"","IPLocationCountry":"CN","Language":"en_US","PageType":"HomePage"}];
            </script>
            <!-- this is klook gtm for whole website -->
            <noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-NC2F2B"
            height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
            <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
            new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
            j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
            '//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
            })(window,document,'script','dataLayer','GTM-NC2F2B');</script>
            <!-- End Google Tag Manager -->
        
            <!--暂时保留上面-->
            <!-- Google Tag Manager -->
            <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5NWTPH"
                              height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
            <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
                new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
                j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
                'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
            })(window,document,'script','dataLayer','GTM-5NWTPH');</script>
            <!-- End Google Tag Manager -->
        
        
            <script type="text/javascript">
                window.smartlook||(function(d) {
                var o=smartlook=function(){ o.api.push(arguments)},h=d.getElementsByTagName('head')[0];
                var c=d.createElement('script');o.api=new Array();c.async=true;c.type='text/javascript';
                c.charset='utf-8';c.src='//rec.smartlook.com/recorder.js';h.appendChild(c);
                })(document);
                smartlook('init', 'a02d72ff9b813e6dc62390ede06f48c33475fda1');
            </script>
        
            <script src="https://cdn.optimizely.com/js/6249440273.js" async></script>
        
            <!--VWO Smart Code-->
            <!-- Start Visual Website Optimizer Asynchronous Code -->
            <script type='text/javascript'>
                var _vwo_code=(function(){
                    var account_id=250214,
                        settings_tolerance=2000,
                        library_tolerance=2500,
                        use_existing_jquery=false,
                        /* DO NOT EDIT BELOW THIS LINE */
                        f=false,d=document;return{use_existing_jquery:function(){return use_existing_jquery;},library_tolerance:function(){return library_tolerance;},finish:function(){if(!f){f=true;var a=d.getElementById('_vis_opt_path_hides');if(a)a.parentNode.removeChild(a);}},finished:function(){return f;},load:function(a){var b=d.createElement('script');b.src=a;b.type='text/javascript';b.innerText;b.onerror=function(){_vwo_code.finish();};d.getElementsByTagName('head')[0].appendChild(b);},init:function(){settings_timer=setTimeout('_vwo_code.finish()',settings_tolerance);var a=d.createElement('style'),b='body{opacity:0 !important;filter:alpha(opacity=0) !important;background:none !important;}',h=d.getElementsByTagName('head')[0];a.setAttribute('id','_vis_opt_path_hides');a.setAttribute('type','text/css');if(a.styleSheet)a.styleSheet.cssText=b;else a.appendChild(d.createTextNode(b));h.appendChild(a);this.load('//dev.visualwebsiteoptimizer.com/j.php?a='+account_id+'&u='+encodeURIComponent(d.URL)+'&r='+Math.random());return settings_timer;}};}());_vwo_settings_timer=_vwo_code.init();
            </script>
            <!-- End Visual Website Optimizer Asynchronous Code -->
        
            <!--VWO + Mixpanel Integration Code-->
            <script type="text/javascript">
                var _vis_opt_queue = window._vis_opt_queue || [], _vis_counter = 0, mixpanel = window.mixpanel || [];
                _vis_opt_queue.push(function() {
                    try {
                        if(!_vis_counter) {
                            var _vis_data = {},_vis_combination,_vis_id,_vis_l=0;
                            for(;_vis_l<_vwo_exp_ids.length;_vis_l++) {
                                _vis_id = _vwo_exp_ids[_vis_l];
                                if(_vwo_exp[_vis_id].ready) {
                                    _vis_combination = _vis_opt_readCookie('_vis_opt_exp_'+_vis_id+'_combi');
                                    if(typeof(_vwo_exp[_vis_id].combination_chosen) != "undefined")
                                        _vis_combination = _vwo_exp[_vis_id].combination_chosen;
                                    if(typeof(_vwo_exp[_vis_id].comb_n[_vis_combination]) != "undefined") {
                                        _vis_data['VWO-Test-ID-'+_vis_id] = _vwo_exp[_vis_id].comb_n[_vis_combination];
                                        _vis_counter++;
                                    }
                                }
                            }
                            // Use the _vis_data object created above to fetch the data,
                            // key of the object is the Test ID and the value is Variation Name
                            if(_vis_counter) {
                                mixpanel.push(['register_once', _vis_data]);
                                mixpanel.track("VWO", _vis_data);
                            }
                        }
                    }
                    catch(err) {};
                });
            </script>
        
        
        <!-- start Mixpanel -->
        <script type="text/javascript">(function(e,a){if(!a.__SV){var b=window;try{var c,l,i,j=b.location,g=j.hash;c=function(a,b){return(l=a.match(RegExp(b+"=([^&]*)")))?l[1]:null};g&&c(g,"state")&&(i=JSON.parse(decodeURIComponent(c(g,"state"))),"mpeditor"===i.action&&(b.sessionStorage.setItem("_mpcehash",g),history.replaceState(i.desiredHash||"",e.title,j.pathname+j.search)))}catch(m){}var k,h;window.mixpanel=a;a._i=[];a.init=function(b,c,f){function e(b,a){var c=a.split(".");2==c.length&&(b=b[c[0]],a=c[1]);b[a]=function(){b.push([a].concat(Array.prototype.slice.call(arguments,
                0)))}}var d=a;"undefined"!==typeof f?d=a[f]=[]:f="mixpanel";d.people=d.people||[];d.toString=function(b){var a="mixpanel";"mixpanel"!==f&&(a+="."+f);b||(a+=" (stub)");return a};d.people.toString=function(){return d.toString(1)+".people (stub)"};k="disable time_event track track_pageview track_links track_forms register register_once alias unregister identify name_tag set_config reset people.set people.set_once people.increment people.append people.union people.track_charge people.clear_charges people.delete_user".split(" ");
            for(h=0;h<k.length;h++)e(d,k[h]);a._i.push([b,c,f])};a.__SV=1.2;b=e.createElement("script");b.type="text/javascript";b.async=!0;b.src="undefined"!==typeof MIXPANEL_CUSTOM_LIB_URL?MIXPANEL_CUSTOM_LIB_URL:"file:"===e.location.protocol&&"//cdn.mxpnl.com/libs/mixpanel-2-latest.min.js".match(/^\/\//)?"https://cdn.mxpnl.com/libs/mixpanel-2-latest.min.js":"//cdn.mxpnl.com/libs/mixpanel-2-latest.min.js";c=e.getElementsByTagName("script")[0];c.parentNode.insertBefore(b,c)}})(document,window.mixpanel||[]);
        
        mixpanel.init("c2ca8b423fd75a10792debf44cd6b51a");
        </script>
        <!-- end Mixpanel -->

    <meta name="twitter:app:name:iphone" content="Klook - Attractions &amp; Activities" />
    <meta name="twitter:app:id:iphone" content="961850126"/>
    <meta name="twitter:app:url:iphone" content="klook://" />
    <meta property="og:title" content="Yours to Explore - Klook Travel"/>
    <meta property="og:description" content="Discover and book amazing things to do at exclusive prices."/>
    <meta property="og:image" content="https://res.klook.com/image/upload/v1492078787/banner/twr2us6zzugcl4cfejcj.jpg"/>

    <link rel="stylesheet" href="//cdn.klook.com/s_v0057ac3b13/dist_web/desktop/css/pages/index.css" type="text/css">
    <style>.ask-klook-button{display:none;}</style>

  </head>

  <body  class="lang_en " >
            <!--[if lte IE 8]>
            <div class='stopIE t_mid'>
                <div class='t_v_mid_box'>
                    <div class='t_v_mid'>
                        <img src='../../../s/dist_web/desktop/imgs/ie.png' />
                        <p class='t22'><b>Your browser dose not support Klook website</b></p>
                        <p class='t16 t_gray'>Please upgrade to Internet Explorer 9 for a better browsing experience. </p>
                        <p class='t16 t_gray'> (Alternatively, we’d recommend using Chrome, Firefox or Safari.)</p>
                    </div>
                </div>
            </div>
            <![endif]-->
            <article class="g_row0 m_dl_tips t0 f_hidden m_bg_gray">
            	<div class="g_main">
            		<div class="t_v_mid_box">
            			<div class="t_v_mid t0"><i class="i_logo_88"></i></div>
            		 	<div class="t_v_mid desc">
                            <p class="t24">Download Klook’s Award Winning App</p>
                            <p class="t16 t_gray md_em_small">Enjoy ¥8.4 off your first Mobile App booking using promo code ‘mobile10’</p>
            			</div>
            			<div class="t_v_mid t0 download_box">
                            <a href=https://itunes.apple.com/app/klook/id961850126?mt=8 class="i_ios_dl_en"></a><br>
                            <a href=https://play.google.com/store/apps/details?id=com.klook&amp;hl=en class="i_and_dl_en"></a>
            			</div>
            			<div class="t_v_mid t0">
            				<i class="i_qr108"></i>
            			</div>
            			<div class="t_v_mid t0">
            				<a><i class="j_dl_close t12 klook-icon-close t_gray"></i></a>
            			</div>
            		</div>
            	</div>
            </article>
            <header class="m_header g_row0">
                <a href="/" class="g_v_mid" data-track-event="Others|Logo Clicked">
            
                    <svg style="height:24px;width:144px;" version="1.1" id="klook-logo" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 126 21" style="enable-background:new 0 0 126 21;" xml:space="preserve">
            <style type="text/css">
                .logo-en-fill{fill:#FF5722;}
            </style>
            <g id="logo-en">
                <path class="logo-en-fill" d="M54.1,0C54,0,54,0,54.1,0c-3.8,0-7,1.9-8.8,4.8C43.4,1.9,40.1,0,36.4,0c0,0-0.1,0-0.1,0
                    c-5.8,0-10.5,4.8-10.4,10.6c0,5.8,4.7,10.4,10.5,10.4c0,0,0.1,0,0.1,0c3.7,0,6.9-1.9,8.8-4.8c1.9,2.9,5.1,4.8,8.8,4.8
                    c0,0,0.1,0,0.1,0c5.8,0,10.5-4.8,10.4-10.6C64.5,4.7,59.8,0,54.1,0z M36.4,17.7L36.4,17.7c-2,0-3.8-0.7-5.1-2.1
                    c-1.4-1.3-2.1-3.1-2.1-5c0-1.9,0.7-3.7,2.1-5.1c1.3-1.4,3.1-2.1,5.1-2.1h0.1l0,0l0,0c1.9,0,3.7,0.7,5.1,2.1c1.4,1.3,2.1,3.1,2.1,5
                    C43.6,14.4,40.4,17.7,36.4,17.7z M54.1,17.7L54.1,17.7c-2,0-3.8-0.7-5.1-2.1c-1.4-1.3-2.1-3.1-2.1-5c0-1.9,0.7-3.7,2.1-5.1
                    c1.3-1.4,3.1-2.1,5.1-2.1H54l0,0l0,0c1.9,0,3.7,0.7,5.1,2.1c1.4,1.3,2.1,3.1,2.1,5C61.3,14.4,58.1,17.7,54.1,17.7z"/>
                <path class="logo-en-fill" d="M0,0v21c1.8,0,3.3-1.5,3.3-3.3V3.3C3.3,1.5,1.8,0,0,0z"/>
                <path class="logo-en-fill" d="M25.4,17.7h-4.1V3.3c0-1.8-1.5-3.3-3.3-3.3l0,0v21h3.3h0h7.4l0,0C28.7,19.2,27.3,17.7,25.4,17.7z"/>
                <path class="logo-en-fill" d="M65.9,0L65.9,0v21l0,0c1.8,0,3.3-1.5,3.3-3.3V3.3C69.2,1.5,67.7,0,65.9,0z"/>
                <path class="logo-en-fill" d="M80.2,16.3l-5.8-5.8l5.8-5.8c1.3-1.3,1.3-3.4,0-4.7L69.7,10.5L80.2,21l0,0C81.5,19.7,81.5,17.6,80.2,16.3z"/>
                <path class="logo-en-fill" d="M8.5,10.5l5.8-5.8c1.3-1.3,1.3-3.4,0-4.7L3.9,10.5L14.4,21l0,0c1.3-1.3,1.3-3.4,0-4.7L8.5,10.5z"/>
            </g>
            </svg>
            
            
                </a>
            
            		<div class="g_ib explor g_abs" >
            
                        <a id="h-explor" class="g_ib" >  Explore by city  <i class="klook-icon-down t12 g_scale07" ></i> </a>
                        <div class="city_block m_radius_box m_bg_white f_hidden" data-role="destination-search-box">
            
                                <div class="t_mid search_box g_rel ">
                                    <input class="t16 j_destination_search" type="text" placeholder="Search Destinations">
                                    <i class="klook-icon-search t_gray g_v_c_mid t24"></i>
                                    <i class="klook-icon-clear g_v_mid t24"></i>
                                    <i class="klook-icon-close g_v_mid"></i>
                                </div>
                                <div class="j_city_country ">
                                    <div class="left g_ib">
                                        <div class="list t_v_mid_box cur" data-role="eat">
                                            <div class="t_v_mid">
                                                <div class="top"><b>Hot Destinations</b></div>
                                            </div>
                                            <i class="triangle_right g_v_mid f_hidden"></i>
                                        </div>
                                
                                        <div class="list t_v_mid_box
                                        " data-role="eat">
                                            <div class="t_v_mid">
                                                <div class="top"><b>East Asia</b></div>
                                
                                                <div class="bottom">
                                                    <span>Hong Kong</span>
                                                    <span>Tokyo</span>
                                                </div>
                                
                                            </div>
                                            <i class="triangle_right g_v_mid f_hidden"></i>
                                        </div>
                                        <div class="list t_v_mid_box
                                        " data-role="eat">
                                            <div class="t_v_mid">
                                                <div class="top"><b>South East Asia</b></div>
                                
                                                <div class="bottom">
                                                    <span>Singapore</span>
                                                    <span>Bangkok</span>
                                                </div>
                                
                                            </div>
                                            <i class="triangle_right g_v_mid f_hidden"></i>
                                        </div>
                                        <div class="list t_v_mid_box
                                        " data-role="eat">
                                            <div class="t_v_mid">
                                                <div class="top"><b>South Asia / Middle East</b></div>
                                
                                                <div class="bottom">
                                                    <span>Kathmandu</span>
                                                    <span>Dubai</span>
                                                </div>
                                
                                            </div>
                                            <i class="triangle_right g_v_mid f_hidden"></i>
                                        </div>
                                        <div class="list t_v_mid_box
                                        " data-role="eat">
                                            <div class="t_v_mid">
                                                <div class="top"><b>Oceania</b></div>
                                
                                                <div class="bottom">
                                                    <span>Sydney</span>
                                                    <span>Melbourne</span>
                                                </div>
                                
                                            </div>
                                            <i class="triangle_right g_v_mid f_hidden"></i>
                                        </div>
                                        <div class="list t_v_mid_box
                                        " data-role="eat">
                                            <div class="t_v_mid">
                                                <div class="top"><b>Europe</b></div>
                                
                                                <div class="bottom">
                                                    <span>London</span>
                                                    <span>Paris</span>
                                                </div>
                                
                                            </div>
                                            <i class="triangle_right g_v_mid f_hidden"></i>
                                        </div>
                                        <div class="list t_v_mid_box
                                        " data-role="eat">
                                            <div class="t_v_mid">
                                                <div class="top"><b>North America</b></div>
                                
                                                <div class="bottom">
                                                    <span>New York</span>
                                                    <span>Los Angeles</span>
                                                </div>
                                
                                            </div>
                                            <i class="triangle_right g_v_mid f_hidden"></i>
                                        </div>
                                    </div>
                                    
                                    <div class="right g_ib g_right t14" >
                                        <div data-role="cate" >
                                            <div class="list">
                                                <a href="/city/2-hong-kong/" data-role="hot-destination"  data-url-seo="hong-kong" data-id="2" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/hpo1r2xegkvdjcv3vs5a.jpg')">
                                                    <p class="t14 t_white">Hong Kong</p>
                                                </a>
                                                <a href="/city/3-macau/" data-role="hot-destination"  data-url-seo="macau" data-id="3" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/xjzh3znuztrnti6totg2.jpg')">
                                                    <p class="t14 t_white">Macau</p>
                                                </a>
                                                <a href="/city/6-singapore/" data-role="hot-destination"  data-url-seo="singapore" data-id="6" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/5b2de96e-新加坡.jpg')">
                                                    <p class="t14 t_white">Singapore</p>
                                                </a>
                                                <a href="/city/13-seoul/" data-role="hot-destination"  data-url-seo="seoul" data-id="13" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/svrtxfvvoxrrdjktkqdf.jpg')">
                                                    <p class="t14 t_white">Seoul</p>
                                                </a>
                                                <a href="/city/28-tokyo/" data-role="hot-destination"  data-url-seo="tokyo" data-id="28" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/ognxgwoh9cafuibsa0us.jpg')">
                                                    <p class="t14 t_white">Tokyo</p>
                                                </a>
                                                <a href="/city/29-osaka/" data-role="hot-destination"  data-url-seo="osaka" data-id="29" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/ro6bhttlitggvra1432c.jpg')">
                                                    <p class="t14 t_white">Osaka</p>
                                                </a>
                                                <a href="/city/100-jr-pass/" data-role="hot-destination"  data-url-seo="jr-pass" data-id="100" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/dn18rhtdlfbrnh6lwhgj.jpg')">
                                                    <p class="t14 t_white">JR Pass</p>
                                                </a>
                                                <a href="/city/15-okinawa/" data-role="hot-destination"  data-url-seo="okinawa" data-id="15" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/w9imx4qoeq8zqlgux4e2.jpg')">
                                                    <p class="t14 t_white">Okinawa</p>
                                                </a>
                                                <a href="/city/19-taipei/" data-role="hot-destination"  data-url-seo="taipei" data-id="19" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/pbcr5e8oz2f0ahvm3pg1.jpg')">
                                                    <p class="t14 t_white">Taipei</p>
                                                </a>
                                                <a href="/city/4-bangkok/" data-role="hot-destination"  data-url-seo="bangkok" data-id="4" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/mvzjo5rfef0j2cnvjdpk.jpg')">
                                                    <p class="t14 t_white">Bangkok</p>
                                                </a>
                                                <a href="/city/7-phuket/" data-role="hot-destination"  data-url-seo="phuket" data-id="7" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/f4ivknrbqp5jxg0oprqy.jpg')">
                                                    <p class="t14 t_white">Phuket</p>
                                                </a>
                                                <a href="/city/8-bali/" data-role="hot-destination"  data-url-seo="bali" data-id="8" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/ug5fnuiouhqstkbru0eo.jpg')">
                                                    <p class="t14 t_white">Bali</p>
                                                </a>
                                                <a href="/city/106-london/" data-role="hot-destination"  data-url-seo="london" data-id="106" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/mnoeedijftbflusxds3n.jpg')">
                                                    <p class="t14 t_white">London</p>
                                                </a>
                                                <a href="/city/107-paris/" data-role="hot-destination"  data-url-seo="paris" data-id="107" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/mve6cc8szjc4wy1ll953.jpg')">
                                                    <p class="t14 t_white">Paris</p>
                                                </a>
                                                <a href="/city/93-new-york/" data-role="hot-destination"  data-url-seo="new-york" data-id="93" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/m0mtaxwk6imjxosqbpcz.jpg')">
                                                    <p class="t14 t_white">New York</p>
                                                </a>
                                                <a href="/city/114-iceland/" data-role="hot-destination"  data-url-seo="iceland" data-id="114" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/0ba4d3a9-shutterstock_536321737app.jpg')">
                                                    <p class="t14 t_white">Reykjavik</p>
                                                </a>
                                            </div>
                                        </div>
                                
                                        <div data-role="cate"
                                             class="f_hidden"
                                            >
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>HK &amp; MACAU</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/2/" data-role="top-destination" data-url-seo="hong-kong" data-id="2">Hong Kong</a>
                                                    <a href="/city/3/" data-role="top-destination" data-url-seo="macau" data-id="3">Macau</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>TAIWAN</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/19/" data-role="top-destination" data-url-seo="taipei" data-id="19">Taipei</a>
                                                    <a href="/city/42/" data-role="top-destination" data-url-seo="yilan" data-id="42">Yilan</a>
                                                    <a href="/city/20/" data-role="top-destination" data-url-seo="hualien" data-id="20">Hualien</a>
                                                    <a href="/city/47/" data-role="top-destination" data-url-seo="taitung" data-id="47">Taitung</a>
                                                    <a href="/city/25/" data-role="top-destination" data-url-seo="taichung" data-id="25">Taichung</a>
                                                    <a href="/city/22/" data-role="top-destination" data-url-seo="kaohsiung" data-id="22">Kaohsiung</a>
                                                    <a href="/city/23/" data-role="top-destination" data-url-seo="kenting" data-id="23">Kenting</a>
                                                    <a href="/city/43/" data-role="top-destination" data-url-seo="penghu" data-id="43">Penghu</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>JAPAN</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/100/" data-role="top-destination" data-url-seo="jr-pass" data-id="100">JR Pass</a>
                                                    <a href="/city/28/" data-role="top-destination" data-url-seo="tokyo" data-id="28">Tokyo</a>
                                                    <a href="/city/29/" data-role="top-destination" data-url-seo="osaka" data-id="29">Osaka</a>
                                                    <a href="/city/30/" data-role="top-destination" data-url-seo="kyoto" data-id="30">Kyoto</a>
                                                    <a href="/city/32/" data-role="top-destination" data-url-seo="hokkaido" data-id="32">Hokkaido</a>
                                                    <a href="/city/15/" data-role="top-destination" data-url-seo="okinawa" data-id="15">Okinawa</a>
                                                    <a href="/city/71/" data-role="top-destination" data-url-seo="nagoya" data-id="71">Nagoya</a>
                                                    <a href="/city/36/" data-role="top-destination" data-url-seo="fukuoka---kumamoto" data-id="36">Fukuoka &amp; Kumamoto</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>SOUTH KOREA</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/13/" data-role="top-destination" data-url-seo="seoul" data-id="13">Seoul</a>
                                                    <a href="/city/18/" data-role="top-destination" data-url-seo="jeju" data-id="18">Jeju</a>
                                                    <a href="/city/46/" data-role="top-destination" data-url-seo="busan" data-id="46">Busan</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>MAINLAND CHINA</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/105/" data-role="top-destination" data-url-seo="shenzhen-guangzhou" data-id="105">Shenzhen &amp; Guangzhou</a>
                                                    <a href="/city/57/" data-role="top-destination" data-url-seo="beijing" data-id="57">Beijing</a>
                                                    <a href="/city/59/" data-role="top-destination" data-url-seo="shanghai" data-id="59">Shanghai</a>
                                                    <a href="/city/61/" data-role="top-destination" data-url-seo="chengdu" data-id="61">Chengdu</a>
                                                    <a href="/city/62/" data-role="top-destination" data-url-seo="guilin" data-id="62">Guilin</a>
                                                </div>
                                
                                            </div>
                                        </div>
                                        <div data-role="cate"
                                             class="f_hidden"
                                            >
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>SINGAPORE</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/6/" data-role="top-destination" data-url-seo="singapore" data-id="6">Singapore</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>THAILAND</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/4/" data-role="top-destination" data-url-seo="bangkok" data-id="4">Bangkok</a>
                                                    <a href="/city/17/" data-role="top-destination" data-url-seo="pattaya" data-id="17">Pattaya</a>
                                                    <a href="/city/5/" data-role="top-destination" data-url-seo="chiang-mai" data-id="5">Chiang Mai</a>
                                                    <a href="/city/7/" data-role="top-destination" data-url-seo="phuket" data-id="7">Phuket</a>
                                                    <a href="/city/16/" data-role="top-destination" data-url-seo="koh-samui" data-id="16">Koh Samui</a>
                                                    <a href="/city/63/" data-role="top-destination" data-url-seo="krabi" data-id="63">Krabi</a>
                                                    <a href="/city/125/" data-role="top-destination" data-url-seo="hua-hin" data-id="125">Hua Hin</a>
                                                    <a href="/city/143/" data-role="top-destination" data-url-seo="koh-chang" data-id="143">Koh Chang and Nearby Islands</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>MALAYSIA</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/49/" data-role="top-destination" data-url-seo="kuala-lumpur" data-id="49">Kuala Lumpur</a>
                                                    <a href="/city/65/" data-role="top-destination" data-url-seo="penang" data-id="65">Penang</a>
                                                    <a href="/city/66/" data-role="top-destination" data-url-seo="sabah" data-id="66">Sabah</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>INDONESIA</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/8/" data-role="top-destination" data-url-seo="bali" data-id="8">Bali</a>
                                                    <a href="/city/77/" data-role="top-destination" data-url-seo="lombok" data-id="77">Lombok</a>
                                                    <a href="/city/113/" data-role="top-destination" data-url-seo="bintan" data-id="113">Bintan</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>PHILIPPINES</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/96/" data-role="top-destination" data-url-seo="manila" data-id="96">Manila</a>
                                                    <a href="/city/40/" data-role="top-destination" data-url-seo="boracay" data-id="40">Boracay</a>
                                                    <a href="/city/97/" data-role="top-destination" data-url-seo="cebu" data-id="97">Cebu</a>
                                                    <a href="/city/121/" data-role="top-destination" data-url-seo="palawan" data-id="121">Palawan</a>
                                                    <a href="/city/144/" data-role="top-destination" data-url-seo="bohol" data-id="144">Bohol</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>VIETNAM</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/33/" data-role="top-destination" data-url-seo="ho-chi-minh-city" data-id="33">Ho Chi Minh City</a>
                                                    <a href="/city/34/" data-role="top-destination" data-url-seo="hanoi---halong-bay" data-id="34">Hanoi &amp; Halong Bay</a>
                                                    <a href="/city/35/" data-role="top-destination" data-url-seo="hue" data-id="35">Hue</a>
                                                    <a href="/city/75/" data-role="top-destination" data-url-seo="hoi-an" data-id="75">Hoi An</a>
                                                    <a href="/city/74/" data-role="top-destination" data-url-seo="da-nang" data-id="74">Da Nang</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>CAMBODIA</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/10/" data-role="top-destination" data-url-seo="siem-reap" data-id="10">Siem Reap</a>
                                                    <a href="/city/44/" data-role="top-destination" data-url-seo="phnom-penh" data-id="44">Phnom Penh</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>MYANMAR</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/48/" data-role="top-destination" data-url-seo="yangon" data-id="48">Yangon</a>
                                                    <a href="/city/99/" data-role="top-destination" data-url-seo="bagan" data-id="99">Bagan</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>LAOS</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/120/" data-role="top-destination" data-url-seo="luang-prabang" data-id="120">Luang Prabang</a>
                                                </div>
                                
                                            </div>
                                        </div>
                                        <div data-role="cate"
                                             class="f_hidden"
                                            >
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>NEPAL</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/9/" data-role="top-destination" data-url-seo="kathmandu" data-id="9">Kathmandu</a>
                                                    <a href="/city/12/" data-role="top-destination" data-url-seo="pokhara" data-id="12">Pokhara</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>BHUTAN</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/64/" data-role="top-destination" data-url-seo="thimphu" data-id="64">Thimphu</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>INDIA</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/132/" data-role="top-destination" data-url-seo="mumbai" data-id="132">Mumbai</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>UAE</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/78/" data-role="top-destination" data-url-seo="dubai" data-id="78">Dubai</a>
                                                    <a href="/city/131/" data-role="top-destination" data-url-seo="abu-dhabi" data-id="131">Abu Dhabi</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>AFRICA</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/14/" data-role="top-destination" data-url-seo="mauritius" data-id="14">Mauritius</a>
                                                </div>
                                
                                            </div>
                                        </div>
                                        <div data-role="cate"
                                             class="f_hidden"
                                            >
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>AUSTRALIA</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/68/" data-role="top-destination" data-url-seo="sydney" data-id="68">Sydney</a>
                                                    <a href="/city/69/" data-role="top-destination" data-url-seo="melbourne" data-id="69">Melbourne</a>
                                                    <a href="/city/73/" data-role="top-destination" data-url-seo="cairns" data-id="73">Cairns</a>
                                                    <a href="/city/70/" data-role="top-destination" data-url-seo="brisbane" data-id="70">Brisbane </a>
                                                    <a href="/city/88/" data-role="top-destination" data-url-seo="perth" data-id="88">Perth</a>
                                                    <a href="/city/72/" data-role="top-destination" data-url-seo="gold-coast" data-id="72">Gold Coast</a>
                                                    <a href="/city/79/" data-role="top-destination" data-url-seo="hobart-tasmania" data-id="79">Hobart &amp; Tasmania</a>
                                                    <a href="/city/94/" data-role="top-destination" data-url-seo="uluru---alice-springs" data-id="94">Uluru &amp; Alice Springs</a>
                                                    <a href="/city/89/" data-role="top-destination" data-url-seo="adelaide" data-id="89">Adelaide</a>
                                                    <a href="/city/133/" data-role="top-destination" data-url-seo="fraser-island" data-id="133">Fraser Island</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>NEW ZEALAND</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/82/" data-role="top-destination" data-url-seo="christchurch" data-id="82">Christchurch</a>
                                                    <a href="/city/83/" data-role="top-destination" data-url-seo="queenstown" data-id="83">Queenstown</a>
                                                    <a href="/city/80/" data-role="top-destination" data-url-seo="auckland" data-id="80">Auckland</a>
                                                    <a href="/city/81/" data-role="top-destination" data-url-seo="rotorua" data-id="81">Rotorua</a>
                                                    <a href="/city/85/" data-role="top-destination" data-url-seo="wellington" data-id="85">Wellington</a>
                                                    <a href="/city/86/" data-role="top-destination" data-url-seo="marlborough" data-id="86">Marlborough</a>
                                                    <a href="/city/87/" data-role="top-destination" data-url-seo="nelson" data-id="87">Nelson</a>
                                                </div>
                                
                                            </div>
                                        </div>
                                        <div data-role="cate"
                                             class="f_hidden"
                                            >
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>UNITED KINGDOM</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/106/" data-role="top-destination" data-url-seo="london" data-id="106">London</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>FRANCE</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/107/" data-role="top-destination" data-url-seo="paris" data-id="107">Paris</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>NETHERLANDS</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/90/" data-role="top-destination" data-url-seo="amsterdam" data-id="90">Amsterdam</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>ITALY</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/92/" data-role="top-destination" data-url-seo="rome" data-id="92">Rome</a>
                                                    <a href="/city/116/" data-role="top-destination" data-url-seo="milan" data-id="116">Milan</a>
                                                    <a href="/city/115/" data-role="top-destination" data-url-seo="florence" data-id="115">Florence</a>
                                                    <a href="/city/117/" data-role="top-destination" data-url-seo="venice" data-id="117">Venice</a>
                                                    <a href="/city/126/" data-role="top-destination" data-url-seo="naples" data-id="126">Naples</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>GERMANY</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/118/" data-role="top-destination" data-url-seo="munich" data-id="118">Munich</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>SWITZERLAND</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/138/" data-role="top-destination" data-url-seo="zurich" data-id="138">Zurich</a>
                                                    <a href="/city/139/" data-role="top-destination" data-url-seo="lucerne" data-id="139">Lucerne</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>SPAIN</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/109/" data-role="top-destination" data-url-seo="madrid" data-id="109">Madrid</a>
                                                    <a href="/city/108/" data-role="top-destination" data-url-seo="barcelona" data-id="108">Barcelona</a>
                                                    <a href="/city/122/" data-role="top-destination" data-url-seo="seville" data-id="122">Seville</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>AUSTRIA</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/91/" data-role="top-destination" data-url-seo="vienna" data-id="91">Vienna</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>FINLAND</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/119/" data-role="top-destination" data-url-seo="helsinki" data-id="119">Helsinki</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>ICELAND</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/114/" data-role="top-destination" data-url-seo="iceland" data-id="114">Reykjavik</a>
                                                    <a href="/city/127/" data-role="top-destination" data-url-seo="north-coast" data-id="127">North Iceland</a>
                                                </div>
                                
                                            </div>
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>GREECE</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/154/" data-role="top-destination" data-url-seo="athens" data-id="154">Athens</a>
                                                </div>
                                
                                            </div>
                                        </div>
                                        <div data-role="cate"
                                             class="f_hidden"
                                            >
                                            <div class="list">
                                                <div class="_left g_ib g_left"><b>USA</b></div>
                                
                                                <div class="_right g_ib">
                                                    <a href="/city/93/" data-role="top-destination" data-url-seo="new-york" data-id="93">New York</a>
                                                    <a href="/city/124/" data-role="top-destination" data-url-seo="los-angeles" data-id="124">Los Angeles</a>
                                                    <a href="/city/123/" data-role="top-destination" data-url-seo="orlando" data-id="123">Orlando</a>
                                                    <a href="/city/129/" data-role="top-destination" data-url-seo="san-francisco" data-id="129">San Francisco</a>
                                                    <a href="/city/104/" data-role="top-destination" data-url-seo="attraction-pass" data-id="104">Attraction Pass</a>
                                                    <a href="/city/136/" data-role="top-destination" data-url-seo="las-vegas" data-id="136">Las Vegas</a>
                                                </div>
                                
                                            </div>
                                        </div>
                                
                                    </div>
                                
                                </div>
                                
                                <div class="result t16 g_rel f_hidden j_result ">
                                    <div class="f_hidden j_has_result">
                                        <p class="t_gray search_title">Search Result</p>
                                        <div class="res_list"></div>
                                    </div>
                                    <div class="no_result g_v_c_mid t16 t_mid f_hidden j_no_result">
                                        <p class="t_gray">Sorry, no results were found</p>
                                        <a href="javascript:;" class="m_radius_box m_border_gray more g_ib j_reset t14">Explore More Destinations</a>
                                    </div>
                                </div>
            
                        </div>
            
            
                        <!-- 只在城市页面出现 -->
            		</div>
            
            
                <nav class="g_right nav_right" >
                    <ul>
                        <li id="j_currency" class="g_rel">
                            <a>CNY</a><i class="klook-icon-down nav_arrow_down g_rel g_ib"></i>
                            <div class="m_radius_block m_bg_white t_black g_abs currency_box g_c_mid f_hidden" data-gatag="Main Page|Currencies">
                                <i class="m_triangle_up g_c_mid">
                                    <i class="m_triangle_up"></i>
                                </i>
                                <ul class="suggested-currencies">
                                    <div class="currency-title t_gray m_bg_white">Suggested Currencies</div>
                                    <li><a class="f_h_main" data-value="HKD" href="javascript:;">HKD | HK$</a></li>
                                    <li><a class="f_h_main" data-value="SGD" href="javascript:;">SGD | S$</a></li>
                                    <li><a class="f_h_main" data-value="USD" href="javascript:;">USD | US$</a></li>
                                    <li><a class="f_h_main" data-value="TWD" href="javascript:;">TWD | NT$</a></li>
                                    <li><a class="f_h_main" data-value="CNY" href="javascript:;">CNY | ¥</a></li>
                                </ul>
                                <ul class="other-currencies">
                                    <div class="currency-title t_gray m_bg_white">Other Currencies</div>
                                    <li><a class="f_h_main" data-value="AED" href="javascript:;">AED | AED</a></li>
                                    <li><a class="f_h_main" data-value="AUD" href="javascript:;">AUD | AUD</a></li>
                                    <li><a class="f_h_main" data-value="PHP" href="javascript:;">PHP | ₱</a></li>
                                    <li><a class="f_h_main" data-value="ISK" href="javascript:;">ISK | kr</a></li>
                                    <li><a class="f_h_main" data-value="DKK" href="javascript:;">DKK | kr</a></li>
                                    <li><a class="f_h_main" data-value="RUB" href="javascript:;">RUB | ₽</a></li>
                                    <li><a class="f_h_main" data-value="KRW" href="javascript:;">KRW | ₩</a></li>
                                    <li><a class="f_h_main" data-value="LAK" href="javascript:;">LAK | ₭</a></li>
                                    <li><a class="f_h_main" data-value="MYR" href="javascript:;">MYR | RM</a></li>
                                    <li><a class="f_h_main" data-value="NOK" href="javascript:;">NOK | kr</a></li>
                                    <li><a class="f_h_main" data-value="EUR" href="javascript:;">EUR | €</a></li>
                                    <li><a class="f_h_main" data-value="JPY" href="javascript:;">JPY | ¥</a></li>
                                    <li><a class="f_h_main" data-value="SEK" href="javascript:;">SEK | kr</a></li>
                                    <li><a class="f_h_main" data-value="CHF" href="javascript:;">CHF | CHF</a></li>
                                    <li><a class="f_h_main" data-value="THB" href="javascript:;">THB | ฿</a></li>
                                    <li><a class="f_h_main" data-value="TRY" href="javascript:;">TRY | YTL</a></li>
                                    <li><a class="f_h_main" data-value="NZD" href="javascript:;">NZD | NZ$</a></li>
                                    <li><a class="f_h_main" data-value="INR" href="javascript:;">INR | ₹</a></li>
                                    <li><a class="f_h_main" data-value="GBP" href="javascript:;">GBP | £</a></li>
                                    <li><a class="f_h_main" data-value="IDR" href="javascript:;">IDR | Rp</a></li>
                                    <li><a class="f_h_main" data-value="VND" href="javascript:;">VND | ₫</a></li>
                                </ul>
                            </div>
                        </li>
                        <li><a id="navDownload" data-track-event="Download App|Download App Button Clicked on Header" data-gatag="Main Page|Download APP">Download App</a></li>
                        <li class="j_faq"><a target="_blank" href="/faq" data-track-event="Help Center|Help Button Clicked on Header" data-gatag="Main Page|Help Center">Help</a></li>
                        <li class="g_rel">
                            <a href="/shoppingcart" id="nShoppingCart" data-track-event="Shopping Cart|Header Cart Button Clicked" data-gatag="Main Page|Shopping Cart">Cart<i class="klook-icon-shopping-cart g_right t22"> <div class="shopping_cart_num m_circle_box m_bg_main t12 t_white g_abs g_ib t_mid  f_hidden j_shoppingcart_count"></div></i>
            					<div class="s_list g_rel f_hidden j_shoppingcart_list">
            	            		<ul class="g_abs m_radius_block m_bg_white">
                                        <i class="m_triangle_up g_c_mid">
                                            <i class="m_triangle_up"></i>
                                        </i>
                                        <li style="background-color:white;height:200px;"></li>
            		            	</ul>
                                    <script class="tpl_nav_shopping_loading"  type="text/template">
                                        <i class="m_triangle_up g_c_mid">
                                            <i class="m_triangle_up"></i>
                                        </i>
                                        <li style="background-color:white;height:200px;"></li>
                                    </script>
                                    <script class="tpl_nav_shopping_content" type="text/x-template">
                                        <i class="m_triangle_up g_c_mid">
                <i class="m_triangle_up"></i>
            </i>
            <li class="t12 t_black">Recently Added</li>
            {{#items}}
            <li>
            <div class="g_ib g_left">
                <img src="{{set_image_size activity_image_url 68 50}}" alt="" style="width:68px;height:50px;">
            </div>
            <div class="g_ib">
                <p class="t_black t_nowrap">{{activity_name}}</p>
                <p class="t12 t_gray t_nowrap">{{package_name}}</p>
                <p class="t12 t_main">{{@root._currency_symbo}} {{formatPriceThousands ticket_sell_price}}</p>
            </div>
            </li>
            {{/items}}
            <li><button class="m_btn_main g_row1 j_nav_shopcart">Go to Shopping Cart</button></li>
            
                                    </script>
                                    <!-- 购物车为空 -->
                                    <script class="tpl_nav_shopping_empty" type="text/x-tempate">
                                        <i class="m_triangle_up g_c_mid">
                                            <i class="m_triangle_up"></i>
                                        </i>
                                        <li class="t_mid empty"><i class="klook-icon-shopping-cart t26" style="color:#d5d5d5;"><br></i><span class="t_gray">Your cart is empty</span></li>
                                    </script>
                                </div>
                        	</a>
                        </li>
                                    <li id="login">
                                        <a href="/signin" data-track-event="Sign Up & Login|Sign In Button Clicked|Direct Clicked" data-gatag="Main Page|Sign In">Log In</a>
                                    </li>
                                    <li id="register">
                                        <a href="/signup" data-track-event="Sign Up & Login|Sign Up Button Clicked|Direct Sign Up" data-gatag="Main Page|Register">Sign Up</a>
                                    </li>
                    </ul>
                </nav>
            </header>


    <section>
        <div class="banner g_row1 t_white g_rel">
            <div class="banner_top_shadow g_row1 g_abs"></div>
            <ul class="g_col1">
                    <li class="m_bg g_abs" data-image="https://klook-res.cloudinary.com/image/upload/fl_lossy.progressive,q_65,f_auto/c_fill,,/v1505810490/banner/zuyycmoa1tkpd5z12h0s.jpg" style="  background-image:url(https://klook-res.cloudinary.com/image/upload/fl_lossy.progressive,q_65,f_auto/c_fill,,/v1505810490/banner/zuyycmoa1tkpd5z12h0s.jpg);   "> </li>
                    <li class="m_bg g_abs" data-image="https://klook-res.cloudinary.com/image/upload/fl_lossy.progressive,q_65,f_auto/c_fill,,/v1505890781/banner/ptuokmiy7r5lfkoumirx.jpg" style="   opacity:0"> </li>
                    <li class="m_bg g_abs" data-image="https://klook-res.cloudinary.com/image/upload/fl_lossy.progressive,q_65,f_auto/c_fill,,/v1505810552/banner/jyh8nejqhaalltk5xcmj.jpg" style="   opacity:0"> </li>
                    <li class="m_bg g_abs" data-image="https://klook-res.cloudinary.com/image/upload/fl_lossy.progressive,q_65,f_auto/c_fill,,/v1505810641/banner/anj8smcqix97v0p9l6sn.jpg" style="   opacity:0"> </li>
                <div class="banner_bottom_shadow g_row1 g_abs"></div>
            </ul>
            <div class="g_c_mid t_mid">
                <h1>YOURS TO EXPLORE</h1>
                <h2>Discover and book amazing things to do at exclusive prices</h2>
                <div>
                    <!--<form id="searchForm" action="/search" method="GET">-->
                        <input id="searchTxt" class="g_left t16" name="keyword" type="text" placeholder="Search by destination, activity or attraction" autocomplete="off">
                        <button class="g_left m_bg_main" id="search_btn" data-gatag="Main Page|Search"><i class="t_white t22 klook-icon-search"></i></button>
                        <div class="city_block m_radius_box m_bg_white j_city_cate f_hidden">
                            <div class="j_city_country ">
                                <div class="left g_ib">
                                    <div class="list t_v_mid_box cur" data-role="eat">
                                        <div class="t_v_mid">
                                            <div class="top"><b>Hot Destinations</b></div>
                                        </div>
                                        <i class="triangle_right g_v_mid f_hidden"></i>
                                    </div>
                            
                                    <div class="list t_v_mid_box
                                    " data-role="eat">
                                        <div class="t_v_mid">
                                            <div class="top"><b>East Asia</b></div>
                            
                                            <div class="bottom">
                                                <span>Hong Kong</span>
                                                <span>Tokyo</span>
                                            </div>
                            
                                        </div>
                                        <i class="triangle_right g_v_mid f_hidden"></i>
                                    </div>
                                    <div class="list t_v_mid_box
                                    " data-role="eat">
                                        <div class="t_v_mid">
                                            <div class="top"><b>South East Asia</b></div>
                            
                                            <div class="bottom">
                                                <span>Singapore</span>
                                                <span>Bangkok</span>
                                            </div>
                            
                                        </div>
                                        <i class="triangle_right g_v_mid f_hidden"></i>
                                    </div>
                                    <div class="list t_v_mid_box
                                    " data-role="eat">
                                        <div class="t_v_mid">
                                            <div class="top"><b>South Asia / Middle East</b></div>
                            
                                            <div class="bottom">
                                                <span>Kathmandu</span>
                                                <span>Dubai</span>
                                            </div>
                            
                                        </div>
                                        <i class="triangle_right g_v_mid f_hidden"></i>
                                    </div>
                                    <div class="list t_v_mid_box
                                    " data-role="eat">
                                        <div class="t_v_mid">
                                            <div class="top"><b>Oceania</b></div>
                            
                                            <div class="bottom">
                                                <span>Sydney</span>
                                                <span>Melbourne</span>
                                            </div>
                            
                                        </div>
                                        <i class="triangle_right g_v_mid f_hidden"></i>
                                    </div>
                                    <div class="list t_v_mid_box
                                    " data-role="eat">
                                        <div class="t_v_mid">
                                            <div class="top"><b>Europe</b></div>
                            
                                            <div class="bottom">
                                                <span>London</span>
                                                <span>Paris</span>
                                            </div>
                            
                                        </div>
                                        <i class="triangle_right g_v_mid f_hidden"></i>
                                    </div>
                                    <div class="list t_v_mid_box
                                    " data-role="eat">
                                        <div class="t_v_mid">
                                            <div class="top"><b>North America</b></div>
                            
                                            <div class="bottom">
                                                <span>New York</span>
                                                <span>Los Angeles</span>
                                            </div>
                            
                                        </div>
                                        <i class="triangle_right g_v_mid f_hidden"></i>
                                    </div>
                                </div>
                                
                                <div class="right g_ib g_right t14" >
                                    <div data-role="cate" >
                                        <div class="list">
                                            <a href="/city/2-hong-kong/" data-role="hot-destination"  data-url-seo="hong-kong" data-id="2" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/hpo1r2xegkvdjcv3vs5a.jpg')">
                                                <p class="t14 t_white">Hong Kong</p>
                                            </a>
                                            <a href="/city/3-macau/" data-role="hot-destination"  data-url-seo="macau" data-id="3" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/xjzh3znuztrnti6totg2.jpg')">
                                                <p class="t14 t_white">Macau</p>
                                            </a>
                                            <a href="/city/6-singapore/" data-role="hot-destination"  data-url-seo="singapore" data-id="6" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/5b2de96e-新加坡.jpg')">
                                                <p class="t14 t_white">Singapore</p>
                                            </a>
                                            <a href="/city/13-seoul/" data-role="hot-destination"  data-url-seo="seoul" data-id="13" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/svrtxfvvoxrrdjktkqdf.jpg')">
                                                <p class="t14 t_white">Seoul</p>
                                            </a>
                                            <a href="/city/28-tokyo/" data-role="hot-destination"  data-url-seo="tokyo" data-id="28" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/ognxgwoh9cafuibsa0us.jpg')">
                                                <p class="t14 t_white">Tokyo</p>
                                            </a>
                                            <a href="/city/29-osaka/" data-role="hot-destination"  data-url-seo="osaka" data-id="29" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/ro6bhttlitggvra1432c.jpg')">
                                                <p class="t14 t_white">Osaka</p>
                                            </a>
                                            <a href="/city/100-jr-pass/" data-role="hot-destination"  data-url-seo="jr-pass" data-id="100" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/dn18rhtdlfbrnh6lwhgj.jpg')">
                                                <p class="t14 t_white">JR Pass</p>
                                            </a>
                                            <a href="/city/15-okinawa/" data-role="hot-destination"  data-url-seo="okinawa" data-id="15" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/w9imx4qoeq8zqlgux4e2.jpg')">
                                                <p class="t14 t_white">Okinawa</p>
                                            </a>
                                            <a href="/city/19-taipei/" data-role="hot-destination"  data-url-seo="taipei" data-id="19" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/pbcr5e8oz2f0ahvm3pg1.jpg')">
                                                <p class="t14 t_white">Taipei</p>
                                            </a>
                                            <a href="/city/4-bangkok/" data-role="hot-destination"  data-url-seo="bangkok" data-id="4" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/mvzjo5rfef0j2cnvjdpk.jpg')">
                                                <p class="t14 t_white">Bangkok</p>
                                            </a>
                                            <a href="/city/7-phuket/" data-role="hot-destination"  data-url-seo="phuket" data-id="7" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/f4ivknrbqp5jxg0oprqy.jpg')">
                                                <p class="t14 t_white">Phuket</p>
                                            </a>
                                            <a href="/city/8-bali/" data-role="hot-destination"  data-url-seo="bali" data-id="8" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/ug5fnuiouhqstkbru0eo.jpg')">
                                                <p class="t14 t_white">Bali</p>
                                            </a>
                                            <a href="/city/106-london/" data-role="hot-destination"  data-url-seo="london" data-id="106" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/mnoeedijftbflusxds3n.jpg')">
                                                <p class="t14 t_white">London</p>
                                            </a>
                                            <a href="/city/107-paris/" data-role="hot-destination"  data-url-seo="paris" data-id="107" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/mve6cc8szjc4wy1ll953.jpg')">
                                                <p class="t14 t_white">Paris</p>
                                            </a>
                                            <a href="/city/93-new-york/" data-role="hot-destination"  data-url-seo="new-york" data-id="93" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/m0mtaxwk6imjxosqbpcz.jpg')">
                                                <p class="t14 t_white">New York</p>
                                            </a>
                                            <a href="/city/114-iceland/" data-role="hot-destination"  data-url-seo="iceland" data-id="114" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/0ba4d3a9-shutterstock_536321737app.jpg')">
                                                <p class="t14 t_white">Reykjavik</p>
                                            </a>
                                        </div>
                                    </div>
                            
                                    <div data-role="cate"
                                         class="f_hidden"
                                        >
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>HK &amp; MACAU</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/2/" data-role="top-destination" data-url-seo="hong-kong" data-id="2">Hong Kong</a>
                                                <a href="/city/3/" data-role="top-destination" data-url-seo="macau" data-id="3">Macau</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>TAIWAN</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/19/" data-role="top-destination" data-url-seo="taipei" data-id="19">Taipei</a>
                                                <a href="/city/42/" data-role="top-destination" data-url-seo="yilan" data-id="42">Yilan</a>
                                                <a href="/city/20/" data-role="top-destination" data-url-seo="hualien" data-id="20">Hualien</a>
                                                <a href="/city/47/" data-role="top-destination" data-url-seo="taitung" data-id="47">Taitung</a>
                                                <a href="/city/25/" data-role="top-destination" data-url-seo="taichung" data-id="25">Taichung</a>
                                                <a href="/city/22/" data-role="top-destination" data-url-seo="kaohsiung" data-id="22">Kaohsiung</a>
                                                <a href="/city/23/" data-role="top-destination" data-url-seo="kenting" data-id="23">Kenting</a>
                                                <a href="/city/43/" data-role="top-destination" data-url-seo="penghu" data-id="43">Penghu</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>JAPAN</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/100/" data-role="top-destination" data-url-seo="jr-pass" data-id="100">JR Pass</a>
                                                <a href="/city/28/" data-role="top-destination" data-url-seo="tokyo" data-id="28">Tokyo</a>
                                                <a href="/city/29/" data-role="top-destination" data-url-seo="osaka" data-id="29">Osaka</a>
                                                <a href="/city/30/" data-role="top-destination" data-url-seo="kyoto" data-id="30">Kyoto</a>
                                                <a href="/city/32/" data-role="top-destination" data-url-seo="hokkaido" data-id="32">Hokkaido</a>
                                                <a href="/city/15/" data-role="top-destination" data-url-seo="okinawa" data-id="15">Okinawa</a>
                                                <a href="/city/71/" data-role="top-destination" data-url-seo="nagoya" data-id="71">Nagoya</a>
                                                <a href="/city/36/" data-role="top-destination" data-url-seo="fukuoka---kumamoto" data-id="36">Fukuoka &amp; Kumamoto</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>SOUTH KOREA</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/13/" data-role="top-destination" data-url-seo="seoul" data-id="13">Seoul</a>
                                                <a href="/city/18/" data-role="top-destination" data-url-seo="jeju" data-id="18">Jeju</a>
                                                <a href="/city/46/" data-role="top-destination" data-url-seo="busan" data-id="46">Busan</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>MAINLAND CHINA</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/105/" data-role="top-destination" data-url-seo="shenzhen-guangzhou" data-id="105">Shenzhen &amp; Guangzhou</a>
                                                <a href="/city/57/" data-role="top-destination" data-url-seo="beijing" data-id="57">Beijing</a>
                                                <a href="/city/59/" data-role="top-destination" data-url-seo="shanghai" data-id="59">Shanghai</a>
                                                <a href="/city/61/" data-role="top-destination" data-url-seo="chengdu" data-id="61">Chengdu</a>
                                                <a href="/city/62/" data-role="top-destination" data-url-seo="guilin" data-id="62">Guilin</a>
                                            </div>
                            
                                        </div>
                                    </div>
                                    <div data-role="cate"
                                         class="f_hidden"
                                        >
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>SINGAPORE</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/6/" data-role="top-destination" data-url-seo="singapore" data-id="6">Singapore</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>THAILAND</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/4/" data-role="top-destination" data-url-seo="bangkok" data-id="4">Bangkok</a>
                                                <a href="/city/17/" data-role="top-destination" data-url-seo="pattaya" data-id="17">Pattaya</a>
                                                <a href="/city/5/" data-role="top-destination" data-url-seo="chiang-mai" data-id="5">Chiang Mai</a>
                                                <a href="/city/7/" data-role="top-destination" data-url-seo="phuket" data-id="7">Phuket</a>
                                                <a href="/city/16/" data-role="top-destination" data-url-seo="koh-samui" data-id="16">Koh Samui</a>
                                                <a href="/city/63/" data-role="top-destination" data-url-seo="krabi" data-id="63">Krabi</a>
                                                <a href="/city/125/" data-role="top-destination" data-url-seo="hua-hin" data-id="125">Hua Hin</a>
                                                <a href="/city/143/" data-role="top-destination" data-url-seo="koh-chang" data-id="143">Koh Chang and Nearby Islands</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>MALAYSIA</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/49/" data-role="top-destination" data-url-seo="kuala-lumpur" data-id="49">Kuala Lumpur</a>
                                                <a href="/city/65/" data-role="top-destination" data-url-seo="penang" data-id="65">Penang</a>
                                                <a href="/city/66/" data-role="top-destination" data-url-seo="sabah" data-id="66">Sabah</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>INDONESIA</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/8/" data-role="top-destination" data-url-seo="bali" data-id="8">Bali</a>
                                                <a href="/city/77/" data-role="top-destination" data-url-seo="lombok" data-id="77">Lombok</a>
                                                <a href="/city/113/" data-role="top-destination" data-url-seo="bintan" data-id="113">Bintan</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>PHILIPPINES</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/96/" data-role="top-destination" data-url-seo="manila" data-id="96">Manila</a>
                                                <a href="/city/40/" data-role="top-destination" data-url-seo="boracay" data-id="40">Boracay</a>
                                                <a href="/city/97/" data-role="top-destination" data-url-seo="cebu" data-id="97">Cebu</a>
                                                <a href="/city/121/" data-role="top-destination" data-url-seo="palawan" data-id="121">Palawan</a>
                                                <a href="/city/144/" data-role="top-destination" data-url-seo="bohol" data-id="144">Bohol</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>VIETNAM</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/33/" data-role="top-destination" data-url-seo="ho-chi-minh-city" data-id="33">Ho Chi Minh City</a>
                                                <a href="/city/34/" data-role="top-destination" data-url-seo="hanoi---halong-bay" data-id="34">Hanoi &amp; Halong Bay</a>
                                                <a href="/city/35/" data-role="top-destination" data-url-seo="hue" data-id="35">Hue</a>
                                                <a href="/city/75/" data-role="top-destination" data-url-seo="hoi-an" data-id="75">Hoi An</a>
                                                <a href="/city/74/" data-role="top-destination" data-url-seo="da-nang" data-id="74">Da Nang</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>CAMBODIA</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/10/" data-role="top-destination" data-url-seo="siem-reap" data-id="10">Siem Reap</a>
                                                <a href="/city/44/" data-role="top-destination" data-url-seo="phnom-penh" data-id="44">Phnom Penh</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>MYANMAR</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/48/" data-role="top-destination" data-url-seo="yangon" data-id="48">Yangon</a>
                                                <a href="/city/99/" data-role="top-destination" data-url-seo="bagan" data-id="99">Bagan</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>LAOS</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/120/" data-role="top-destination" data-url-seo="luang-prabang" data-id="120">Luang Prabang</a>
                                            </div>
                            
                                        </div>
                                    </div>
                                    <div data-role="cate"
                                         class="f_hidden"
                                        >
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>NEPAL</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/9/" data-role="top-destination" data-url-seo="kathmandu" data-id="9">Kathmandu</a>
                                                <a href="/city/12/" data-role="top-destination" data-url-seo="pokhara" data-id="12">Pokhara</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>BHUTAN</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/64/" data-role="top-destination" data-url-seo="thimphu" data-id="64">Thimphu</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>INDIA</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/132/" data-role="top-destination" data-url-seo="mumbai" data-id="132">Mumbai</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>UAE</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/78/" data-role="top-destination" data-url-seo="dubai" data-id="78">Dubai</a>
                                                <a href="/city/131/" data-role="top-destination" data-url-seo="abu-dhabi" data-id="131">Abu Dhabi</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>AFRICA</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/14/" data-role="top-destination" data-url-seo="mauritius" data-id="14">Mauritius</a>
                                            </div>
                            
                                        </div>
                                    </div>
                                    <div data-role="cate"
                                         class="f_hidden"
                                        >
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>AUSTRALIA</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/68/" data-role="top-destination" data-url-seo="sydney" data-id="68">Sydney</a>
                                                <a href="/city/69/" data-role="top-destination" data-url-seo="melbourne" data-id="69">Melbourne</a>
                                                <a href="/city/73/" data-role="top-destination" data-url-seo="cairns" data-id="73">Cairns</a>
                                                <a href="/city/70/" data-role="top-destination" data-url-seo="brisbane" data-id="70">Brisbane </a>
                                                <a href="/city/88/" data-role="top-destination" data-url-seo="perth" data-id="88">Perth</a>
                                                <a href="/city/72/" data-role="top-destination" data-url-seo="gold-coast" data-id="72">Gold Coast</a>
                                                <a href="/city/79/" data-role="top-destination" data-url-seo="hobart-tasmania" data-id="79">Hobart &amp; Tasmania</a>
                                                <a href="/city/94/" data-role="top-destination" data-url-seo="uluru---alice-springs" data-id="94">Uluru &amp; Alice Springs</a>
                                                <a href="/city/89/" data-role="top-destination" data-url-seo="adelaide" data-id="89">Adelaide</a>
                                                <a href="/city/133/" data-role="top-destination" data-url-seo="fraser-island" data-id="133">Fraser Island</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>NEW ZEALAND</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/82/" data-role="top-destination" data-url-seo="christchurch" data-id="82">Christchurch</a>
                                                <a href="/city/83/" data-role="top-destination" data-url-seo="queenstown" data-id="83">Queenstown</a>
                                                <a href="/city/80/" data-role="top-destination" data-url-seo="auckland" data-id="80">Auckland</a>
                                                <a href="/city/81/" data-role="top-destination" data-url-seo="rotorua" data-id="81">Rotorua</a>
                                                <a href="/city/85/" data-role="top-destination" data-url-seo="wellington" data-id="85">Wellington</a>
                                                <a href="/city/86/" data-role="top-destination" data-url-seo="marlborough" data-id="86">Marlborough</a>
                                                <a href="/city/87/" data-role="top-destination" data-url-seo="nelson" data-id="87">Nelson</a>
                                            </div>
                            
                                        </div>
                                    </div>
                                    <div data-role="cate"
                                         class="f_hidden"
                                        >
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>UNITED KINGDOM</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/106/" data-role="top-destination" data-url-seo="london" data-id="106">London</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>FRANCE</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/107/" data-role="top-destination" data-url-seo="paris" data-id="107">Paris</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>NETHERLANDS</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/90/" data-role="top-destination" data-url-seo="amsterdam" data-id="90">Amsterdam</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>ITALY</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/92/" data-role="top-destination" data-url-seo="rome" data-id="92">Rome</a>
                                                <a href="/city/116/" data-role="top-destination" data-url-seo="milan" data-id="116">Milan</a>
                                                <a href="/city/115/" data-role="top-destination" data-url-seo="florence" data-id="115">Florence</a>
                                                <a href="/city/117/" data-role="top-destination" data-url-seo="venice" data-id="117">Venice</a>
                                                <a href="/city/126/" data-role="top-destination" data-url-seo="naples" data-id="126">Naples</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>GERMANY</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/118/" data-role="top-destination" data-url-seo="munich" data-id="118">Munich</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>SWITZERLAND</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/138/" data-role="top-destination" data-url-seo="zurich" data-id="138">Zurich</a>
                                                <a href="/city/139/" data-role="top-destination" data-url-seo="lucerne" data-id="139">Lucerne</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>SPAIN</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/109/" data-role="top-destination" data-url-seo="madrid" data-id="109">Madrid</a>
                                                <a href="/city/108/" data-role="top-destination" data-url-seo="barcelona" data-id="108">Barcelona</a>
                                                <a href="/city/122/" data-role="top-destination" data-url-seo="seville" data-id="122">Seville</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>AUSTRIA</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/91/" data-role="top-destination" data-url-seo="vienna" data-id="91">Vienna</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>FINLAND</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/119/" data-role="top-destination" data-url-seo="helsinki" data-id="119">Helsinki</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>ICELAND</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/114/" data-role="top-destination" data-url-seo="iceland" data-id="114">Reykjavik</a>
                                                <a href="/city/127/" data-role="top-destination" data-url-seo="north-coast" data-id="127">North Iceland</a>
                                            </div>
                            
                                        </div>
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>GREECE</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/154/" data-role="top-destination" data-url-seo="athens" data-id="154">Athens</a>
                                            </div>
                            
                                        </div>
                                    </div>
                                    <div data-role="cate"
                                         class="f_hidden"
                                        >
                                        <div class="list">
                                            <div class="_left g_ib g_left"><b>USA</b></div>
                            
                                            <div class="_right g_ib">
                                                <a href="/city/93/" data-role="top-destination" data-url-seo="new-york" data-id="93">New York</a>
                                                <a href="/city/124/" data-role="top-destination" data-url-seo="los-angeles" data-id="124">Los Angeles</a>
                                                <a href="/city/123/" data-role="top-destination" data-url-seo="orlando" data-id="123">Orlando</a>
                                                <a href="/city/129/" data-role="top-destination" data-url-seo="san-francisco" data-id="129">San Francisco</a>
                                                <a href="/city/104/" data-role="top-destination" data-url-seo="attraction-pass" data-id="104">Attraction Pass</a>
                                                <a href="/city/136/" data-role="top-destination" data-url-seo="las-vegas" data-id="136">Las Vegas</a>
                                            </div>
                            
                                        </div>
                                    </div>
                            
                                </div>
                            
                            </div>
                            
                            <div class="result t16 g_rel f_hidden j_result ">
                                <div class="f_hidden j_has_result">
                                    <p class="t_gray search_title">Search Result</p>
                                    <div class="res_list"></div>
                                </div>
                                <div class="no_result g_v_c_mid t16 t_mid f_hidden j_no_result">
                                    <p class="t_gray">Sorry, no results were found</p>
                                    <a href="javascript:;" class="m_radius_box m_border_gray more g_ib j_reset t14">Explore More Destinations</a>
                                </div>
                            </div>

                            <div class="t16 f_hidden j_city_activity"></div>
                        </div>
                    <!--</form>-->
                    <span class="f_clearfix"></span>
                </div>

            </div>
        </div>
        <!-- 如果有section benefit banner 就展示banner, 否则展示其它内容 -->
            <div class="promise">
                <div class="g_main g_col1">
                    <div class="g_left t_v_mid_box g_row3">
                        <div class="t_v_mid">
                            <div class="g_ib">
                                <div class="t_v_mid_box">
                                    <div class="t_v_mid"><i class="i_promises1 t_main"></i></div>
                                    <div class="t_v_mid t_left">
                                        <p class="t16">Handpicked Experiences</p>
                                        <p class="t14 t_gray">Read real user reviews</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="g_left t_v_mid_box g_row3">
                        <div class="t_v_mid">
                            <div class="g_ib">
                                <div class="t_v_mid_box">
                                    <div class="t_v_mid"><i class="i_promises2 t_main"></i></div>
                                    <div class="t_v_mid t_left">
                                        <p class="t16">Best Price Guaranteed</p>
                                        <p class="t14 t_gray">Discounts up to 60% off</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="g_left t_v_mid_box g_row3">
                        <div class="t_v_mid">
                            <div class="g_ib">
                                <div class="t_v_mid_box">
                                    <div class="t_v_mid"><i class="i_promises3 t_main"></i></div>
                                    <div class="t_v_mid t_left">
                                        <p class="t16">Seamless &amp; Safe Booking</p>
                                        <p class="t14 t_gray">Hassle-free e-ticket entry</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <span class="f_clearfix"></span>
                </div>
            </div>
    </section>


    <section class="index_list m_bg_gray">
        <div class="g_main c_list g_rel">
            <header class="t_mid">
                <h2 class="t32">TOP DESTINATIONS</h2>
                <h3 class="t16 t_gray">Discover tours, attractions and activities for your next adventure</h3>
            </header>
            <!--点击more添加unfold-->
            <div class="m_slide g_rel">
                <div class="m_slider">
                    <div class="g_left m_grid">
                        <div class="m_justify_list a_sd_move m_radius_box">
                            <div class=" m_bg hot_lazy" data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/hpo1r2xegkvdjcv3vs5a.jpg">
                                <a href="/city/2-hong-kong/" data-url-seo="hong-kong" data-id="2">
                                    <div class="t_v_mid_box">
                                        <div class="t_v_mid t_mid">
                                            <span class="t24 t_white j_after_lazy f_hidden"><b>Hong Kong</b></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="m_justify_list a_sd_move m_radius_box">
                            <div class=" m_bg hot_lazy" data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/xjzh3znuztrnti6totg2.jpg">
                                <a href="/city/3-macau/" data-url-seo="macau" data-id="3">
                                    <div class="t_v_mid_box">
                                        <div class="t_v_mid t_mid">
                                            <span class="t24 t_white j_after_lazy f_hidden"><b>Macau</b></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="m_justify_list a_sd_move m_radius_box">
                            <div class=" m_bg hot_lazy" data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/5b2de96e-新加坡.jpg">
                                <a href="/city/6-singapore/" data-url-seo="singapore" data-id="6">
                                    <div class="t_v_mid_box">
                                        <div class="t_v_mid t_mid">
                                            <span class="t24 t_white j_after_lazy f_hidden"><b>Singapore</b></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="m_justify_list a_sd_move m_radius_box">
                            <div class=" m_bg hot_lazy" data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/svrtxfvvoxrrdjktkqdf.jpg">
                                <a href="/city/13-seoul/" data-url-seo="seoul" data-id="13">
                                    <div class="t_v_mid_box">
                                        <div class="t_v_mid t_mid">
                                            <span class="t24 t_white j_after_lazy f_hidden"><b>Seoul</b></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="m_justify_list a_sd_move m_radius_box">
                            <div class=" m_bg hot_lazy" data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/ognxgwoh9cafuibsa0us.jpg">
                                <a href="/city/28-tokyo/" data-url-seo="tokyo" data-id="28">
                                    <div class="t_v_mid_box">
                                        <div class="t_v_mid t_mid">
                                            <span class="t24 t_white j_after_lazy f_hidden"><b>Tokyo</b></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="m_justify_list a_sd_move m_radius_box">
                            <div class=" m_bg hot_lazy" data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/ro6bhttlitggvra1432c.jpg">
                                <a href="/city/29-osaka/" data-url-seo="osaka" data-id="29">
                                    <div class="t_v_mid_box">
                                        <div class="t_v_mid t_mid">
                                            <span class="t24 t_white j_after_lazy f_hidden"><b>Osaka</b></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="m_justify_list a_sd_move m_radius_box">
                            <div class=" m_bg hot_lazy" data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/dn18rhtdlfbrnh6lwhgj.jpg">
                                <a href="/city/100-jr-pass/" data-url-seo="jr-pass" data-id="100">
                                    <div class="t_v_mid_box">
                                        <div class="t_v_mid t_mid">
                                            <span class="t24 t_white j_after_lazy f_hidden"><b>JR Pass</b></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="m_justify_list a_sd_move m_radius_box">
                            <div class=" m_bg hot_lazy" data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/w9imx4qoeq8zqlgux4e2.jpg">
                                <a href="/city/15-okinawa/" data-url-seo="okinawa" data-id="15">
                                    <div class="t_v_mid_box">
                                        <div class="t_v_mid t_mid">
                                            <span class="t24 t_white j_after_lazy f_hidden"><b>Okinawa</b></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <span class="m_justify_fix"></span>
                    </div>
                    <div class="g_left m_grid">
                        <div class="m_justify_list a_sd_move m_radius_box">
                            <div class=" m_bg hot_lazy" data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/pbcr5e8oz2f0ahvm3pg1.jpg">
                                <a href="/city/19-taipei/" data-url-seo="taipei" data-id="19">
                                    <div class="t_v_mid_box">
                                        <div class="t_v_mid t_mid">
                                            <span class="t24 t_white j_after_lazy f_hidden"><b>Taipei</b></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="m_justify_list a_sd_move m_radius_box">
                            <div class=" m_bg hot_lazy" data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/mvzjo5rfef0j2cnvjdpk.jpg">
                                <a href="/city/4-bangkok/" data-url-seo="bangkok" data-id="4">
                                    <div class="t_v_mid_box">
                                        <div class="t_v_mid t_mid">
                                            <span class="t24 t_white j_after_lazy f_hidden"><b>Bangkok</b></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="m_justify_list a_sd_move m_radius_box">
                            <div class=" m_bg hot_lazy" data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/f4ivknrbqp5jxg0oprqy.jpg">
                                <a href="/city/7-phuket/" data-url-seo="phuket" data-id="7">
                                    <div class="t_v_mid_box">
                                        <div class="t_v_mid t_mid">
                                            <span class="t24 t_white j_after_lazy f_hidden"><b>Phuket</b></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="m_justify_list a_sd_move m_radius_box">
                            <div class=" m_bg hot_lazy" data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/ug5fnuiouhqstkbru0eo.jpg">
                                <a href="/city/8-bali/" data-url-seo="bali" data-id="8">
                                    <div class="t_v_mid_box">
                                        <div class="t_v_mid t_mid">
                                            <span class="t24 t_white j_after_lazy f_hidden"><b>Bali</b></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="m_justify_list a_sd_move m_radius_box">
                            <div class=" m_bg hot_lazy" data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/mnoeedijftbflusxds3n.jpg">
                                <a href="/city/106-london/" data-url-seo="london" data-id="106">
                                    <div class="t_v_mid_box">
                                        <div class="t_v_mid t_mid">
                                            <span class="t24 t_white j_after_lazy f_hidden"><b>London</b></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="m_justify_list a_sd_move m_radius_box">
                            <div class=" m_bg hot_lazy" data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/mve6cc8szjc4wy1ll953.jpg">
                                <a href="/city/107-paris/" data-url-seo="paris" data-id="107">
                                    <div class="t_v_mid_box">
                                        <div class="t_v_mid t_mid">
                                            <span class="t24 t_white j_after_lazy f_hidden"><b>Paris</b></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="m_justify_list a_sd_move m_radius_box">
                            <div class=" m_bg hot_lazy" data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/m0mtaxwk6imjxosqbpcz.jpg">
                                <a href="/city/93-new-york/" data-url-seo="new-york" data-id="93">
                                    <div class="t_v_mid_box">
                                        <div class="t_v_mid t_mid">
                                            <span class="t24 t_white j_after_lazy f_hidden"><b>New York</b></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="m_justify_list a_sd_move m_radius_box">
                            <div class=" m_bg hot_lazy" data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/0ba4d3a9-shutterstock_536321737app.jpg">
                                <a href="/city/114-iceland/" data-url-seo="iceland" data-id="114">
                                    <div class="t_v_mid_box">
                                        <div class="t_v_mid t_mid">
                                            <span class="t24 t_white j_after_lazy f_hidden"><b>Reykjavik</b></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <span class="m_justify_fix"></span>
                    </div>
                    <span class="f_clearfix"></span>
                </div>
            </div>
            <div data-track-event="Home Page|Home Page Top Destination Switch Clicked|Click left button|1" class="btn_left  klook-icon-arrow2 f_hidden"></div>
            <div data-track-event="Home Page|Home Page Top Destination Switch Clicked|Click right button|2" class="btn_right  klook-icon-arrow2"></div>
            <div class="t_mid">
                <div data-track-event="Home Page|Home Page Explore More Destinations Button Clicked" class="moreCity t18 m_radius_box m_border_gray2 explr_more g_ib" id="moreCity"><i class="klook-icon-map-v2 g_ib t26"></i><span class="g_ib">Explore All Destinations</span></div>
                <div id="cityList" class="city_block m_bg_white f_hidden" data-role="destination-search-box">
                    <div class="t_mid search_box g_rel more-city">
                        <input class="t16 j_destination_search" type="text" placeholder="Search Destinations">
                        <i class="klook-icon-search t_gray g_v_c_mid t24"></i>
                        <i class="klook-icon-clear g_v_mid t24"></i>
                        <i class="klook-icon-close g_v_mid"></i>
                    </div>
                    <div class="j_city_country more-city">
                        <div class="left g_ib">
                    
                            <div class="list t_v_mid_box
                            cur
                            " data-role="eat">
                                <div class="t_v_mid">
                                    <div class="top"><b>East Asia</b></div>
                    
                                    <div class="bottom">
                                        <span>Hong Kong</span>
                                        <span>Tokyo</span>
                                    </div>
                    
                                </div>
                                <i class="triangle_right g_v_mid f_hidden"></i>
                            </div>
                            <div class="list t_v_mid_box
                            
                            " data-role="eat">
                                <div class="t_v_mid">
                                    <div class="top"><b>South East Asia</b></div>
                    
                                    <div class="bottom">
                                        <span>Singapore</span>
                                        <span>Bangkok</span>
                                    </div>
                    
                                </div>
                                <i class="triangle_right g_v_mid f_hidden"></i>
                            </div>
                            <div class="list t_v_mid_box
                            
                            " data-role="eat">
                                <div class="t_v_mid">
                                    <div class="top"><b>South Asia / Middle East</b></div>
                    
                                    <div class="bottom">
                                        <span>Kathmandu</span>
                                        <span>Dubai</span>
                                    </div>
                    
                                </div>
                                <i class="triangle_right g_v_mid f_hidden"></i>
                            </div>
                            <div class="list t_v_mid_box
                            
                            " data-role="eat">
                                <div class="t_v_mid">
                                    <div class="top"><b>Oceania</b></div>
                    
                                    <div class="bottom">
                                        <span>Sydney</span>
                                        <span>Melbourne</span>
                                    </div>
                    
                                </div>
                                <i class="triangle_right g_v_mid f_hidden"></i>
                            </div>
                            <div class="list t_v_mid_box
                            
                            " data-role="eat">
                                <div class="t_v_mid">
                                    <div class="top"><b>Europe</b></div>
                    
                                    <div class="bottom">
                                        <span>London</span>
                                        <span>Paris</span>
                                    </div>
                    
                                </div>
                                <i class="triangle_right g_v_mid f_hidden"></i>
                            </div>
                            <div class="list t_v_mid_box
                            
                            " data-role="eat">
                                <div class="t_v_mid">
                                    <div class="top"><b>North America</b></div>
                    
                                    <div class="bottom">
                                        <span>New York</span>
                                        <span>Los Angeles</span>
                                    </div>
                    
                                </div>
                                <i class="triangle_right g_v_mid f_hidden"></i>
                            </div>
                        </div>
                        
                        <div class="right g_ib g_right t14" style="max-height: 348px;overflow-y: auto;">
                    
                            <div data-role="cate"
                                
                                >
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>HK &amp; MACAU</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/2/" data-role="top-destination" data-url-seo="hong-kong" data-id="2">Hong Kong</a>
                                        <a href="/city/3/" data-role="top-destination" data-url-seo="macau" data-id="3">Macau</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>TAIWAN</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/19/" data-role="top-destination" data-url-seo="taipei" data-id="19">Taipei</a>
                                        <a href="/city/42/" data-role="top-destination" data-url-seo="yilan" data-id="42">Yilan</a>
                                        <a href="/city/20/" data-role="top-destination" data-url-seo="hualien" data-id="20">Hualien</a>
                                        <a href="/city/47/" data-role="top-destination" data-url-seo="taitung" data-id="47">Taitung</a>
                                        <a href="/city/25/" data-role="top-destination" data-url-seo="taichung" data-id="25">Taichung</a>
                                        <a href="/city/22/" data-role="top-destination" data-url-seo="kaohsiung" data-id="22">Kaohsiung</a>
                                        <a href="/city/23/" data-role="top-destination" data-url-seo="kenting" data-id="23">Kenting</a>
                                        <a href="/city/43/" data-role="top-destination" data-url-seo="penghu" data-id="43">Penghu</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>JAPAN</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/100/" data-role="top-destination" data-url-seo="jr-pass" data-id="100">JR Pass</a>
                                        <a href="/city/28/" data-role="top-destination" data-url-seo="tokyo" data-id="28">Tokyo</a>
                                        <a href="/city/29/" data-role="top-destination" data-url-seo="osaka" data-id="29">Osaka</a>
                                        <a href="/city/30/" data-role="top-destination" data-url-seo="kyoto" data-id="30">Kyoto</a>
                                        <a href="/city/32/" data-role="top-destination" data-url-seo="hokkaido" data-id="32">Hokkaido</a>
                                        <a href="/city/15/" data-role="top-destination" data-url-seo="okinawa" data-id="15">Okinawa</a>
                                        <a href="/city/71/" data-role="top-destination" data-url-seo="nagoya" data-id="71">Nagoya</a>
                                        <a href="/city/36/" data-role="top-destination" data-url-seo="fukuoka---kumamoto" data-id="36">Fukuoka &amp; Kumamoto</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>SOUTH KOREA</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/13/" data-role="top-destination" data-url-seo="seoul" data-id="13">Seoul</a>
                                        <a href="/city/18/" data-role="top-destination" data-url-seo="jeju" data-id="18">Jeju</a>
                                        <a href="/city/46/" data-role="top-destination" data-url-seo="busan" data-id="46">Busan</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>MAINLAND CHINA</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/105/" data-role="top-destination" data-url-seo="shenzhen-guangzhou" data-id="105">Shenzhen &amp; Guangzhou</a>
                                        <a href="/city/57/" data-role="top-destination" data-url-seo="beijing" data-id="57">Beijing</a>
                                        <a href="/city/59/" data-role="top-destination" data-url-seo="shanghai" data-id="59">Shanghai</a>
                                        <a href="/city/61/" data-role="top-destination" data-url-seo="chengdu" data-id="61">Chengdu</a>
                                        <a href="/city/62/" data-role="top-destination" data-url-seo="guilin" data-id="62">Guilin</a>
                                    </div>
                    
                                </div>
                            </div>
                            <div data-role="cate"
                                 class="f_hidden" 
                                >
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>SINGAPORE</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/6/" data-role="top-destination" data-url-seo="singapore" data-id="6">Singapore</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>THAILAND</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/4/" data-role="top-destination" data-url-seo="bangkok" data-id="4">Bangkok</a>
                                        <a href="/city/17/" data-role="top-destination" data-url-seo="pattaya" data-id="17">Pattaya</a>
                                        <a href="/city/5/" data-role="top-destination" data-url-seo="chiang-mai" data-id="5">Chiang Mai</a>
                                        <a href="/city/7/" data-role="top-destination" data-url-seo="phuket" data-id="7">Phuket</a>
                                        <a href="/city/16/" data-role="top-destination" data-url-seo="koh-samui" data-id="16">Koh Samui</a>
                                        <a href="/city/63/" data-role="top-destination" data-url-seo="krabi" data-id="63">Krabi</a>
                                        <a href="/city/125/" data-role="top-destination" data-url-seo="hua-hin" data-id="125">Hua Hin</a>
                                        <a href="/city/143/" data-role="top-destination" data-url-seo="koh-chang" data-id="143">Koh Chang and Nearby Islands</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>MALAYSIA</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/49/" data-role="top-destination" data-url-seo="kuala-lumpur" data-id="49">Kuala Lumpur</a>
                                        <a href="/city/65/" data-role="top-destination" data-url-seo="penang" data-id="65">Penang</a>
                                        <a href="/city/66/" data-role="top-destination" data-url-seo="sabah" data-id="66">Sabah</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>INDONESIA</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/8/" data-role="top-destination" data-url-seo="bali" data-id="8">Bali</a>
                                        <a href="/city/77/" data-role="top-destination" data-url-seo="lombok" data-id="77">Lombok</a>
                                        <a href="/city/113/" data-role="top-destination" data-url-seo="bintan" data-id="113">Bintan</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>PHILIPPINES</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/96/" data-role="top-destination" data-url-seo="manila" data-id="96">Manila</a>
                                        <a href="/city/40/" data-role="top-destination" data-url-seo="boracay" data-id="40">Boracay</a>
                                        <a href="/city/97/" data-role="top-destination" data-url-seo="cebu" data-id="97">Cebu</a>
                                        <a href="/city/121/" data-role="top-destination" data-url-seo="palawan" data-id="121">Palawan</a>
                                        <a href="/city/144/" data-role="top-destination" data-url-seo="bohol" data-id="144">Bohol</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>VIETNAM</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/33/" data-role="top-destination" data-url-seo="ho-chi-minh-city" data-id="33">Ho Chi Minh City</a>
                                        <a href="/city/34/" data-role="top-destination" data-url-seo="hanoi---halong-bay" data-id="34">Hanoi &amp; Halong Bay</a>
                                        <a href="/city/35/" data-role="top-destination" data-url-seo="hue" data-id="35">Hue</a>
                                        <a href="/city/75/" data-role="top-destination" data-url-seo="hoi-an" data-id="75">Hoi An</a>
                                        <a href="/city/74/" data-role="top-destination" data-url-seo="da-nang" data-id="74">Da Nang</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>CAMBODIA</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/10/" data-role="top-destination" data-url-seo="siem-reap" data-id="10">Siem Reap</a>
                                        <a href="/city/44/" data-role="top-destination" data-url-seo="phnom-penh" data-id="44">Phnom Penh</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>MYANMAR</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/48/" data-role="top-destination" data-url-seo="yangon" data-id="48">Yangon</a>
                                        <a href="/city/99/" data-role="top-destination" data-url-seo="bagan" data-id="99">Bagan</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>LAOS</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/120/" data-role="top-destination" data-url-seo="luang-prabang" data-id="120">Luang Prabang</a>
                                    </div>
                    
                                </div>
                            </div>
                            <div data-role="cate"
                                 class="f_hidden" 
                                >
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>NEPAL</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/9/" data-role="top-destination" data-url-seo="kathmandu" data-id="9">Kathmandu</a>
                                        <a href="/city/12/" data-role="top-destination" data-url-seo="pokhara" data-id="12">Pokhara</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>BHUTAN</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/64/" data-role="top-destination" data-url-seo="thimphu" data-id="64">Thimphu</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>INDIA</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/132/" data-role="top-destination" data-url-seo="mumbai" data-id="132">Mumbai</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>UAE</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/78/" data-role="top-destination" data-url-seo="dubai" data-id="78">Dubai</a>
                                        <a href="/city/131/" data-role="top-destination" data-url-seo="abu-dhabi" data-id="131">Abu Dhabi</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>AFRICA</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/14/" data-role="top-destination" data-url-seo="mauritius" data-id="14">Mauritius</a>
                                    </div>
                    
                                </div>
                            </div>
                            <div data-role="cate"
                                 class="f_hidden" 
                                >
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>AUSTRALIA</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/68/" data-role="top-destination" data-url-seo="sydney" data-id="68">Sydney</a>
                                        <a href="/city/69/" data-role="top-destination" data-url-seo="melbourne" data-id="69">Melbourne</a>
                                        <a href="/city/73/" data-role="top-destination" data-url-seo="cairns" data-id="73">Cairns</a>
                                        <a href="/city/70/" data-role="top-destination" data-url-seo="brisbane" data-id="70">Brisbane </a>
                                        <a href="/city/88/" data-role="top-destination" data-url-seo="perth" data-id="88">Perth</a>
                                        <a href="/city/72/" data-role="top-destination" data-url-seo="gold-coast" data-id="72">Gold Coast</a>
                                        <a href="/city/79/" data-role="top-destination" data-url-seo="hobart-tasmania" data-id="79">Hobart &amp; Tasmania</a>
                                        <a href="/city/94/" data-role="top-destination" data-url-seo="uluru---alice-springs" data-id="94">Uluru &amp; Alice Springs</a>
                                        <a href="/city/89/" data-role="top-destination" data-url-seo="adelaide" data-id="89">Adelaide</a>
                                        <a href="/city/133/" data-role="top-destination" data-url-seo="fraser-island" data-id="133">Fraser Island</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>NEW ZEALAND</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/82/" data-role="top-destination" data-url-seo="christchurch" data-id="82">Christchurch</a>
                                        <a href="/city/83/" data-role="top-destination" data-url-seo="queenstown" data-id="83">Queenstown</a>
                                        <a href="/city/80/" data-role="top-destination" data-url-seo="auckland" data-id="80">Auckland</a>
                                        <a href="/city/81/" data-role="top-destination" data-url-seo="rotorua" data-id="81">Rotorua</a>
                                        <a href="/city/85/" data-role="top-destination" data-url-seo="wellington" data-id="85">Wellington</a>
                                        <a href="/city/86/" data-role="top-destination" data-url-seo="marlborough" data-id="86">Marlborough</a>
                                        <a href="/city/87/" data-role="top-destination" data-url-seo="nelson" data-id="87">Nelson</a>
                                    </div>
                    
                                </div>
                            </div>
                            <div data-role="cate"
                                 class="f_hidden" 
                                >
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>UNITED KINGDOM</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/106/" data-role="top-destination" data-url-seo="london" data-id="106">London</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>FRANCE</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/107/" data-role="top-destination" data-url-seo="paris" data-id="107">Paris</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>NETHERLANDS</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/90/" data-role="top-destination" data-url-seo="amsterdam" data-id="90">Amsterdam</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>ITALY</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/92/" data-role="top-destination" data-url-seo="rome" data-id="92">Rome</a>
                                        <a href="/city/116/" data-role="top-destination" data-url-seo="milan" data-id="116">Milan</a>
                                        <a href="/city/115/" data-role="top-destination" data-url-seo="florence" data-id="115">Florence</a>
                                        <a href="/city/117/" data-role="top-destination" data-url-seo="venice" data-id="117">Venice</a>
                                        <a href="/city/126/" data-role="top-destination" data-url-seo="naples" data-id="126">Naples</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>GERMANY</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/118/" data-role="top-destination" data-url-seo="munich" data-id="118">Munich</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>SWITZERLAND</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/138/" data-role="top-destination" data-url-seo="zurich" data-id="138">Zurich</a>
                                        <a href="/city/139/" data-role="top-destination" data-url-seo="lucerne" data-id="139">Lucerne</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>SPAIN</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/109/" data-role="top-destination" data-url-seo="madrid" data-id="109">Madrid</a>
                                        <a href="/city/108/" data-role="top-destination" data-url-seo="barcelona" data-id="108">Barcelona</a>
                                        <a href="/city/122/" data-role="top-destination" data-url-seo="seville" data-id="122">Seville</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>AUSTRIA</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/91/" data-role="top-destination" data-url-seo="vienna" data-id="91">Vienna</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>FINLAND</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/119/" data-role="top-destination" data-url-seo="helsinki" data-id="119">Helsinki</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>ICELAND</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/114/" data-role="top-destination" data-url-seo="iceland" data-id="114">Reykjavik</a>
                                        <a href="/city/127/" data-role="top-destination" data-url-seo="north-coast" data-id="127">North Iceland</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>GREECE</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/154/" data-role="top-destination" data-url-seo="athens" data-id="154">Athens</a>
                                    </div>
                    
                                </div>
                            </div>
                            <div data-role="cate"
                                 class="f_hidden" 
                                >
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>USA</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/93/" data-role="top-destination" data-url-seo="new-york" data-id="93">New York</a>
                                        <a href="/city/124/" data-role="top-destination" data-url-seo="los-angeles" data-id="124">Los Angeles</a>
                                        <a href="/city/123/" data-role="top-destination" data-url-seo="orlando" data-id="123">Orlando</a>
                                        <a href="/city/129/" data-role="top-destination" data-url-seo="san-francisco" data-id="129">San Francisco</a>
                                        <a href="/city/104/" data-role="top-destination" data-url-seo="attraction-pass" data-id="104">Attraction Pass</a>
                                        <a href="/city/136/" data-role="top-destination" data-url-seo="las-vegas" data-id="136">Las Vegas</a>
                                    </div>
                    
                                </div>
                            </div>
                    
                            <div class="over_block t_main f_hidden">
                                Scroll down to view more
                            </div>
                        </div>
                    
                    </div>
                    
                    <div class="result t16 g_rel f_hidden j_result more-city">
                        <div class="f_hidden j_has_result">
                            <p class="t_gray search_title">Search Result</p>
                            <div class="res_list"></div>
                        </div>
                        <div class="no_result g_v_c_mid t16 t_mid f_hidden j_no_result">
                            <p class="t_gray">Sorry, no results were found</p>
                            <a href="javascript:;" class="m_radius_box m_border_gray more g_ib j_reset t14">Explore More Destinations</a>
                        </div>
                    </div>
                </div>
                <div id="CityList" class="city_block m_bg_white f_hidden" data-role="destination-search-box">
                    <div class="t_mid search_box g_rel ">
                        <input class="t16 j_destination_search" type="text" placeholder="Search Destinations">
                        <i class="klook-icon-search t_gray g_v_c_mid t24"></i>
                        <i class="klook-icon-clear g_v_mid t24"></i>
                        <i class="klook-icon-close g_v_mid"></i>
                    </div>
                    <div class="j_city_country ">
                        <div class="left g_ib">
                            <div class="list t_v_mid_box cur" data-role="eat">
                                <div class="t_v_mid">
                                    <div class="top"><b>Hot Destinations</b></div>
                                </div>
                                <i class="triangle_right g_v_mid f_hidden"></i>
                            </div>
                    
                            <div class="list t_v_mid_box
                            " data-role="eat">
                                <div class="t_v_mid">
                                    <div class="top"><b>East Asia</b></div>
                    
                                    <div class="bottom">
                                        <span>Hong Kong</span>
                                        <span>Tokyo</span>
                                    </div>
                    
                                </div>
                                <i class="triangle_right g_v_mid f_hidden"></i>
                            </div>
                            <div class="list t_v_mid_box
                            " data-role="eat">
                                <div class="t_v_mid">
                                    <div class="top"><b>South East Asia</b></div>
                    
                                    <div class="bottom">
                                        <span>Singapore</span>
                                        <span>Bangkok</span>
                                    </div>
                    
                                </div>
                                <i class="triangle_right g_v_mid f_hidden"></i>
                            </div>
                            <div class="list t_v_mid_box
                            " data-role="eat">
                                <div class="t_v_mid">
                                    <div class="top"><b>South Asia / Middle East</b></div>
                    
                                    <div class="bottom">
                                        <span>Kathmandu</span>
                                        <span>Dubai</span>
                                    </div>
                    
                                </div>
                                <i class="triangle_right g_v_mid f_hidden"></i>
                            </div>
                            <div class="list t_v_mid_box
                            " data-role="eat">
                                <div class="t_v_mid">
                                    <div class="top"><b>Oceania</b></div>
                    
                                    <div class="bottom">
                                        <span>Sydney</span>
                                        <span>Melbourne</span>
                                    </div>
                    
                                </div>
                                <i class="triangle_right g_v_mid f_hidden"></i>
                            </div>
                            <div class="list t_v_mid_box
                            " data-role="eat">
                                <div class="t_v_mid">
                                    <div class="top"><b>Europe</b></div>
                    
                                    <div class="bottom">
                                        <span>London</span>
                                        <span>Paris</span>
                                    </div>
                    
                                </div>
                                <i class="triangle_right g_v_mid f_hidden"></i>
                            </div>
                            <div class="list t_v_mid_box
                            " data-role="eat">
                                <div class="t_v_mid">
                                    <div class="top"><b>North America</b></div>
                    
                                    <div class="bottom">
                                        <span>New York</span>
                                        <span>Los Angeles</span>
                                    </div>
                    
                                </div>
                                <i class="triangle_right g_v_mid f_hidden"></i>
                            </div>
                        </div>
                        
                        <div class="right g_ib g_right t14" >
                            <div data-role="cate" >
                                <div class="list">
                                    <a href="/city/2-hong-kong/" data-role="hot-destination"  data-url-seo="hong-kong" data-id="2" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/hpo1r2xegkvdjcv3vs5a.jpg')">
                                        <p class="t14 t_white">Hong Kong</p>
                                    </a>
                                    <a href="/city/3-macau/" data-role="hot-destination"  data-url-seo="macau" data-id="3" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/xjzh3znuztrnti6totg2.jpg')">
                                        <p class="t14 t_white">Macau</p>
                                    </a>
                                    <a href="/city/6-singapore/" data-role="hot-destination"  data-url-seo="singapore" data-id="6" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/5b2de96e-新加坡.jpg')">
                                        <p class="t14 t_white">Singapore</p>
                                    </a>
                                    <a href="/city/13-seoul/" data-role="hot-destination"  data-url-seo="seoul" data-id="13" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/svrtxfvvoxrrdjktkqdf.jpg')">
                                        <p class="t14 t_white">Seoul</p>
                                    </a>
                                    <a href="/city/28-tokyo/" data-role="hot-destination"  data-url-seo="tokyo" data-id="28" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/ognxgwoh9cafuibsa0us.jpg')">
                                        <p class="t14 t_white">Tokyo</p>
                                    </a>
                                    <a href="/city/29-osaka/" data-role="hot-destination"  data-url-seo="osaka" data-id="29" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/ro6bhttlitggvra1432c.jpg')">
                                        <p class="t14 t_white">Osaka</p>
                                    </a>
                                    <a href="/city/100-jr-pass/" data-role="hot-destination"  data-url-seo="jr-pass" data-id="100" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/dn18rhtdlfbrnh6lwhgj.jpg')">
                                        <p class="t14 t_white">JR Pass</p>
                                    </a>
                                    <a href="/city/15-okinawa/" data-role="hot-destination"  data-url-seo="okinawa" data-id="15" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/w9imx4qoeq8zqlgux4e2.jpg')">
                                        <p class="t14 t_white">Okinawa</p>
                                    </a>
                                    <a href="/city/19-taipei/" data-role="hot-destination"  data-url-seo="taipei" data-id="19" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/pbcr5e8oz2f0ahvm3pg1.jpg')">
                                        <p class="t14 t_white">Taipei</p>
                                    </a>
                                    <a href="/city/4-bangkok/" data-role="hot-destination"  data-url-seo="bangkok" data-id="4" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/mvzjo5rfef0j2cnvjdpk.jpg')">
                                        <p class="t14 t_white">Bangkok</p>
                                    </a>
                                    <a href="/city/7-phuket/" data-role="hot-destination"  data-url-seo="phuket" data-id="7" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/f4ivknrbqp5jxg0oprqy.jpg')">
                                        <p class="t14 t_white">Phuket</p>
                                    </a>
                                    <a href="/city/8-bali/" data-role="hot-destination"  data-url-seo="bali" data-id="8" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/ug5fnuiouhqstkbru0eo.jpg')">
                                        <p class="t14 t_white">Bali</p>
                                    </a>
                                    <a href="/city/106-london/" data-role="hot-destination"  data-url-seo="london" data-id="106" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/mnoeedijftbflusxds3n.jpg')">
                                        <p class="t14 t_white">London</p>
                                    </a>
                                    <a href="/city/107-paris/" data-role="hot-destination"  data-url-seo="paris" data-id="107" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/mve6cc8szjc4wy1ll953.jpg')">
                                        <p class="t14 t_white">Paris</p>
                                    </a>
                                    <a href="/city/93-new-york/" data-role="hot-destination"  data-url-seo="new-york" data-id="93" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/m0mtaxwk6imjxosqbpcz.jpg')">
                                        <p class="t14 t_white">New York</p>
                                    </a>
                                    <a href="/city/114-iceland/" data-role="hot-destination"  data-url-seo="iceland" data-id="114" class="m_bg m_radius_box" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_95,f_auto/c_fill,w_480,h_384/cities/0ba4d3a9-shutterstock_536321737app.jpg')">
                                        <p class="t14 t_white">Reykjavik</p>
                                    </a>
                                </div>
                            </div>
                    
                            <div data-role="cate"
                                 class="f_hidden"
                                >
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>HK &amp; MACAU</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/2/" data-role="top-destination" data-url-seo="hong-kong" data-id="2">Hong Kong</a>
                                        <a href="/city/3/" data-role="top-destination" data-url-seo="macau" data-id="3">Macau</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>TAIWAN</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/19/" data-role="top-destination" data-url-seo="taipei" data-id="19">Taipei</a>
                                        <a href="/city/42/" data-role="top-destination" data-url-seo="yilan" data-id="42">Yilan</a>
                                        <a href="/city/20/" data-role="top-destination" data-url-seo="hualien" data-id="20">Hualien</a>
                                        <a href="/city/47/" data-role="top-destination" data-url-seo="taitung" data-id="47">Taitung</a>
                                        <a href="/city/25/" data-role="top-destination" data-url-seo="taichung" data-id="25">Taichung</a>
                                        <a href="/city/22/" data-role="top-destination" data-url-seo="kaohsiung" data-id="22">Kaohsiung</a>
                                        <a href="/city/23/" data-role="top-destination" data-url-seo="kenting" data-id="23">Kenting</a>
                                        <a href="/city/43/" data-role="top-destination" data-url-seo="penghu" data-id="43">Penghu</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>JAPAN</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/100/" data-role="top-destination" data-url-seo="jr-pass" data-id="100">JR Pass</a>
                                        <a href="/city/28/" data-role="top-destination" data-url-seo="tokyo" data-id="28">Tokyo</a>
                                        <a href="/city/29/" data-role="top-destination" data-url-seo="osaka" data-id="29">Osaka</a>
                                        <a href="/city/30/" data-role="top-destination" data-url-seo="kyoto" data-id="30">Kyoto</a>
                                        <a href="/city/32/" data-role="top-destination" data-url-seo="hokkaido" data-id="32">Hokkaido</a>
                                        <a href="/city/15/" data-role="top-destination" data-url-seo="okinawa" data-id="15">Okinawa</a>
                                        <a href="/city/71/" data-role="top-destination" data-url-seo="nagoya" data-id="71">Nagoya</a>
                                        <a href="/city/36/" data-role="top-destination" data-url-seo="fukuoka---kumamoto" data-id="36">Fukuoka &amp; Kumamoto</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>SOUTH KOREA</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/13/" data-role="top-destination" data-url-seo="seoul" data-id="13">Seoul</a>
                                        <a href="/city/18/" data-role="top-destination" data-url-seo="jeju" data-id="18">Jeju</a>
                                        <a href="/city/46/" data-role="top-destination" data-url-seo="busan" data-id="46">Busan</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>MAINLAND CHINA</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/105/" data-role="top-destination" data-url-seo="shenzhen-guangzhou" data-id="105">Shenzhen &amp; Guangzhou</a>
                                        <a href="/city/57/" data-role="top-destination" data-url-seo="beijing" data-id="57">Beijing</a>
                                        <a href="/city/59/" data-role="top-destination" data-url-seo="shanghai" data-id="59">Shanghai</a>
                                        <a href="/city/61/" data-role="top-destination" data-url-seo="chengdu" data-id="61">Chengdu</a>
                                        <a href="/city/62/" data-role="top-destination" data-url-seo="guilin" data-id="62">Guilin</a>
                                    </div>
                    
                                </div>
                            </div>
                            <div data-role="cate"
                                 class="f_hidden"
                                >
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>SINGAPORE</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/6/" data-role="top-destination" data-url-seo="singapore" data-id="6">Singapore</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>THAILAND</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/4/" data-role="top-destination" data-url-seo="bangkok" data-id="4">Bangkok</a>
                                        <a href="/city/17/" data-role="top-destination" data-url-seo="pattaya" data-id="17">Pattaya</a>
                                        <a href="/city/5/" data-role="top-destination" data-url-seo="chiang-mai" data-id="5">Chiang Mai</a>
                                        <a href="/city/7/" data-role="top-destination" data-url-seo="phuket" data-id="7">Phuket</a>
                                        <a href="/city/16/" data-role="top-destination" data-url-seo="koh-samui" data-id="16">Koh Samui</a>
                                        <a href="/city/63/" data-role="top-destination" data-url-seo="krabi" data-id="63">Krabi</a>
                                        <a href="/city/125/" data-role="top-destination" data-url-seo="hua-hin" data-id="125">Hua Hin</a>
                                        <a href="/city/143/" data-role="top-destination" data-url-seo="koh-chang" data-id="143">Koh Chang and Nearby Islands</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>MALAYSIA</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/49/" data-role="top-destination" data-url-seo="kuala-lumpur" data-id="49">Kuala Lumpur</a>
                                        <a href="/city/65/" data-role="top-destination" data-url-seo="penang" data-id="65">Penang</a>
                                        <a href="/city/66/" data-role="top-destination" data-url-seo="sabah" data-id="66">Sabah</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>INDONESIA</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/8/" data-role="top-destination" data-url-seo="bali" data-id="8">Bali</a>
                                        <a href="/city/77/" data-role="top-destination" data-url-seo="lombok" data-id="77">Lombok</a>
                                        <a href="/city/113/" data-role="top-destination" data-url-seo="bintan" data-id="113">Bintan</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>PHILIPPINES</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/96/" data-role="top-destination" data-url-seo="manila" data-id="96">Manila</a>
                                        <a href="/city/40/" data-role="top-destination" data-url-seo="boracay" data-id="40">Boracay</a>
                                        <a href="/city/97/" data-role="top-destination" data-url-seo="cebu" data-id="97">Cebu</a>
                                        <a href="/city/121/" data-role="top-destination" data-url-seo="palawan" data-id="121">Palawan</a>
                                        <a href="/city/144/" data-role="top-destination" data-url-seo="bohol" data-id="144">Bohol</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>VIETNAM</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/33/" data-role="top-destination" data-url-seo="ho-chi-minh-city" data-id="33">Ho Chi Minh City</a>
                                        <a href="/city/34/" data-role="top-destination" data-url-seo="hanoi---halong-bay" data-id="34">Hanoi &amp; Halong Bay</a>
                                        <a href="/city/35/" data-role="top-destination" data-url-seo="hue" data-id="35">Hue</a>
                                        <a href="/city/75/" data-role="top-destination" data-url-seo="hoi-an" data-id="75">Hoi An</a>
                                        <a href="/city/74/" data-role="top-destination" data-url-seo="da-nang" data-id="74">Da Nang</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>CAMBODIA</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/10/" data-role="top-destination" data-url-seo="siem-reap" data-id="10">Siem Reap</a>
                                        <a href="/city/44/" data-role="top-destination" data-url-seo="phnom-penh" data-id="44">Phnom Penh</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>MYANMAR</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/48/" data-role="top-destination" data-url-seo="yangon" data-id="48">Yangon</a>
                                        <a href="/city/99/" data-role="top-destination" data-url-seo="bagan" data-id="99">Bagan</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>LAOS</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/120/" data-role="top-destination" data-url-seo="luang-prabang" data-id="120">Luang Prabang</a>
                                    </div>
                    
                                </div>
                            </div>
                            <div data-role="cate"
                                 class="f_hidden"
                                >
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>NEPAL</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/9/" data-role="top-destination" data-url-seo="kathmandu" data-id="9">Kathmandu</a>
                                        <a href="/city/12/" data-role="top-destination" data-url-seo="pokhara" data-id="12">Pokhara</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>BHUTAN</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/64/" data-role="top-destination" data-url-seo="thimphu" data-id="64">Thimphu</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>INDIA</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/132/" data-role="top-destination" data-url-seo="mumbai" data-id="132">Mumbai</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>UAE</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/78/" data-role="top-destination" data-url-seo="dubai" data-id="78">Dubai</a>
                                        <a href="/city/131/" data-role="top-destination" data-url-seo="abu-dhabi" data-id="131">Abu Dhabi</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>AFRICA</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/14/" data-role="top-destination" data-url-seo="mauritius" data-id="14">Mauritius</a>
                                    </div>
                    
                                </div>
                            </div>
                            <div data-role="cate"
                                 class="f_hidden"
                                >
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>AUSTRALIA</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/68/" data-role="top-destination" data-url-seo="sydney" data-id="68">Sydney</a>
                                        <a href="/city/69/" data-role="top-destination" data-url-seo="melbourne" data-id="69">Melbourne</a>
                                        <a href="/city/73/" data-role="top-destination" data-url-seo="cairns" data-id="73">Cairns</a>
                                        <a href="/city/70/" data-role="top-destination" data-url-seo="brisbane" data-id="70">Brisbane </a>
                                        <a href="/city/88/" data-role="top-destination" data-url-seo="perth" data-id="88">Perth</a>
                                        <a href="/city/72/" data-role="top-destination" data-url-seo="gold-coast" data-id="72">Gold Coast</a>
                                        <a href="/city/79/" data-role="top-destination" data-url-seo="hobart-tasmania" data-id="79">Hobart &amp; Tasmania</a>
                                        <a href="/city/94/" data-role="top-destination" data-url-seo="uluru---alice-springs" data-id="94">Uluru &amp; Alice Springs</a>
                                        <a href="/city/89/" data-role="top-destination" data-url-seo="adelaide" data-id="89">Adelaide</a>
                                        <a href="/city/133/" data-role="top-destination" data-url-seo="fraser-island" data-id="133">Fraser Island</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>NEW ZEALAND</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/82/" data-role="top-destination" data-url-seo="christchurch" data-id="82">Christchurch</a>
                                        <a href="/city/83/" data-role="top-destination" data-url-seo="queenstown" data-id="83">Queenstown</a>
                                        <a href="/city/80/" data-role="top-destination" data-url-seo="auckland" data-id="80">Auckland</a>
                                        <a href="/city/81/" data-role="top-destination" data-url-seo="rotorua" data-id="81">Rotorua</a>
                                        <a href="/city/85/" data-role="top-destination" data-url-seo="wellington" data-id="85">Wellington</a>
                                        <a href="/city/86/" data-role="top-destination" data-url-seo="marlborough" data-id="86">Marlborough</a>
                                        <a href="/city/87/" data-role="top-destination" data-url-seo="nelson" data-id="87">Nelson</a>
                                    </div>
                    
                                </div>
                            </div>
                            <div data-role="cate"
                                 class="f_hidden"
                                >
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>UNITED KINGDOM</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/106/" data-role="top-destination" data-url-seo="london" data-id="106">London</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>FRANCE</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/107/" data-role="top-destination" data-url-seo="paris" data-id="107">Paris</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>NETHERLANDS</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/90/" data-role="top-destination" data-url-seo="amsterdam" data-id="90">Amsterdam</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>ITALY</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/92/" data-role="top-destination" data-url-seo="rome" data-id="92">Rome</a>
                                        <a href="/city/116/" data-role="top-destination" data-url-seo="milan" data-id="116">Milan</a>
                                        <a href="/city/115/" data-role="top-destination" data-url-seo="florence" data-id="115">Florence</a>
                                        <a href="/city/117/" data-role="top-destination" data-url-seo="venice" data-id="117">Venice</a>
                                        <a href="/city/126/" data-role="top-destination" data-url-seo="naples" data-id="126">Naples</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>GERMANY</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/118/" data-role="top-destination" data-url-seo="munich" data-id="118">Munich</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>SWITZERLAND</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/138/" data-role="top-destination" data-url-seo="zurich" data-id="138">Zurich</a>
                                        <a href="/city/139/" data-role="top-destination" data-url-seo="lucerne" data-id="139">Lucerne</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>SPAIN</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/109/" data-role="top-destination" data-url-seo="madrid" data-id="109">Madrid</a>
                                        <a href="/city/108/" data-role="top-destination" data-url-seo="barcelona" data-id="108">Barcelona</a>
                                        <a href="/city/122/" data-role="top-destination" data-url-seo="seville" data-id="122">Seville</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>AUSTRIA</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/91/" data-role="top-destination" data-url-seo="vienna" data-id="91">Vienna</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>FINLAND</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/119/" data-role="top-destination" data-url-seo="helsinki" data-id="119">Helsinki</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>ICELAND</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/114/" data-role="top-destination" data-url-seo="iceland" data-id="114">Reykjavik</a>
                                        <a href="/city/127/" data-role="top-destination" data-url-seo="north-coast" data-id="127">North Iceland</a>
                                    </div>
                    
                                </div>
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>GREECE</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/154/" data-role="top-destination" data-url-seo="athens" data-id="154">Athens</a>
                                    </div>
                    
                                </div>
                            </div>
                            <div data-role="cate"
                                 class="f_hidden"
                                >
                                <div class="list">
                                    <div class="_left g_ib g_left"><b>USA</b></div>
                    
                                    <div class="_right g_ib">
                                        <a href="/city/93/" data-role="top-destination" data-url-seo="new-york" data-id="93">New York</a>
                                        <a href="/city/124/" data-role="top-destination" data-url-seo="los-angeles" data-id="124">Los Angeles</a>
                                        <a href="/city/123/" data-role="top-destination" data-url-seo="orlando" data-id="123">Orlando</a>
                                        <a href="/city/129/" data-role="top-destination" data-url-seo="san-francisco" data-id="129">San Francisco</a>
                                        <a href="/city/104/" data-role="top-destination" data-url-seo="attraction-pass" data-id="104">Attraction Pass</a>
                                        <a href="/city/136/" data-role="top-destination" data-url-seo="las-vegas" data-id="136">Las Vegas</a>
                                    </div>
                    
                                </div>
                            </div>
                    
                        </div>
                    
                    </div>
                    
                    <div class="result t16 g_rel f_hidden j_result ">
                        <div class="f_hidden j_has_result">
                            <p class="t_gray search_title">Search Result</p>
                            <div class="res_list"></div>
                        </div>
                        <div class="no_result g_v_c_mid t16 t_mid f_hidden j_no_result">
                            <p class="t_gray">Sorry, no results were found</p>
                            <a href="javascript:;" class="m_radius_box m_border_gray more g_ib j_reset t14">Explore More Destinations</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="g_main m_popular g_rel" data-role="home_page_popular_activity">
            <header class="t_mid">
                <h2 class="t32">POPULAR ACTIVITIES</h2>
                <h3 class="t16 t_gray">Favorite experiences booked by travelers</h3>
            </header>
            <div class="m_slide g_rel">
                <div class="m_slider">
                    <div class="g_left m_grid" data-page="1">
                                        <div class="m_justify_list m_radius_box  a_sd_move j_activity_item" >
                                                <!-- _is_homePage _is_homePagePop _is_homePageRec -->
                                                <a href="/activity/523-peak-tram-3-in-1-combo-ticket-hong-kong/" class="j_activity_item_link" data-price="46" data-role="recommend-activity" data-id="523" data-url-seo="peak-tram-3-in-1-combo-ticket-hong-kong" >
                                                    <div class="m_bg lazy_slide lazy"
                                                            data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_65,f_auto/c_fill,w_800,h_448/activities/hbfap6uoky5abnihf1ox.jpg"
                             >
                                                        <div class="g_l_box">
                                                            <!-- 暂时没有，留着 <div class="m_bg_main t_white">优惠促销</div> -->
                            								<div>
                                                                <p class="t12">
                                                                    <span>¥</span>
                                                                </p>
                                                                <p>
                                                                    <span class="t18 t_white"><b>46</b></span>
                                                                </p>
                            								</div>
                            							</div>
                            						</div>
                            
                                                    <ul class="m_border_gray">
                                                        <li>
                                                            <h3 class="t16">
                                                                <p>
                                                                    <span class="t_nowrap g_ib">Peak Tram Fast-Track Combo&nbsp;</span>
                                                                    <i class="t16 klook-icon-fast t_main g_right"></i>
                                                                </p>
                                                            </h3>
                                                        </li>
                                                        <li class="t14 t_gray t_nowrap">Exclusive special line entry with tour guide&nbsp;</li>
                                                        <!--如果是首页 活动卡片显示地点-->
                                                        <li class="t12 t_gray">
                                                            <span class="klook-icon-map"></span> <span>Hong Kong</span>
                                                        </li>
                                                        <li class="t12 t_gray">
                                                        <!-- TODO change 100 to 20 -->
                                                            <i class="klook-icon-hot"></i>
                                                            <span>10K+ Booked</span>
                                                            <span style="display:none">10K+ Booked</span>
                                                        <!-- stars -->
                                                            <span class="g_right">
                                                                <span class="m_star">
                                                                    <span class="l" style="width:92%;" ><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                    <span class="n"><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                </span>
                                                                <span>4.6</span>
                                                            </span>
                                                        </li>
                                                    </ul>
                            
                                                </a>
                                        </div>
                                        <div class="m_justify_list m_radius_box  a_sd_move j_activity_item" >
                                                <!-- _is_homePage _is_homePagePop _is_homePageRec -->
                                                <a href="/activity/1659-taipei-101-taipei/" class="j_activity_item_link" data-price="110" data-role="recommend-activity" data-id="1659" data-url-seo="taipei-101-taipei" >
                                                    <div class="m_bg lazy_slide lazy"
                                                            data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_65,f_auto/c_fill,w_800,h_448/activities/e976c9ce-%E5%8F%B0%E5%8C%97101%E8%A7%82%E6%99%AF%E5%8F%B0.jpg"
                             >
                                                        <div class="g_l_box">
                                                            <!-- 暂时没有，留着 <div class="m_bg_main t_white">优惠促销</div> -->
                            								<div>
                                                                <p class="t12">
                                                                    <span>¥</span>
                                                                        <del> 130</del>
                                                                </p>
                                                                <p>
                                                                    <span class="t18 t_white"><b>110</b></span>
                                                                </p>
                            								</div>
                            							</div>
                            						</div>
                            
                                                    <ul class="m_border_gray">
                                                        <li>
                                                            <h3 class="t16">
                                                                <p>
                                                                    <span class="t_nowrap g_ib">Taipei 101 Observatory E-Ticket&nbsp;</span>
                                                                    <i class="t16 klook-icon-fast t_main g_right"></i>
                                                                </p>
                                                            </h3>
                                                        </li>
                                                        <li class="t14 t_gray t_nowrap">Fast track entry to Taipei&#x27;s tallest building&nbsp;</li>
                                                        <!--如果是首页 活动卡片显示地点-->
                                                        <li class="t12 t_gray">
                                                            <span class="klook-icon-map"></span> <span>Taipei</span>
                                                        </li>
                                                        <li class="t12 t_gray">
                                                        <!-- TODO change 100 to 20 -->
                                                            <i class="klook-icon-hot"></i>
                                                            <span>10K+ Booked</span>
                                                            <span style="display:none">10K+ Booked</span>
                                                        <!-- stars -->
                                                            <span class="g_right">
                                                                <span class="m_star">
                                                                    <span class="l" style="width:90%;" ><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                    <span class="n"><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                </span>
                                                                <span>4.5</span>
                                                            </span>
                                                        </li>
                                                    </ul>
                            
                                                </a>
                                        </div>
                                        <div class="m_justify_list m_radius_box  a_sd_move j_activity_item" >
                                                <!-- _is_homePage _is_homePagePop _is_homePageRec -->
                                                <a href="/activity/524-disneyland-gourmet-meal-voucher-hong-kong/" class="j_activity_item_link" data-price="73" data-role="recommend-activity" data-id="524" data-url-seo="disneyland-gourmet-meal-voucher-hong-kong" >
                                                    <div class="m_bg lazy_slide lazy"
                                                            data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_65,f_auto/c_fill,w_800,h_448/activities/c4f2cd3a-Disneyland-Gourmet-Meal-Voucher.jpg"
                             >
                                                        <div class="g_l_box">
                                                            <!-- 暂时没有，留着 <div class="m_bg_main t_white">优惠促销</div> -->
                            								<div>
                                                                <p class="t12">
                                                                    <span>¥</span>
                                                                        <del> 77</del>
                                                                </p>
                                                                <p>
                                                                    <span class="t18 t_white"><b>73</b></span>
                                                                </p>
                            								</div>
                            							</div>
                            						</div>
                            
                                                    <ul class="m_border_gray">
                                                        <li>
                                                            <h3 class="t16">
                                                                <p>
                                                                    <span class="t_nowrap g_ib">Hong Kong Disneyland Meal Coupon&nbsp;</span>
                                                                    <i class="t16 klook-icon-fast t_main g_right"></i>
                                                                </p>
                                                            </h3>
                                                        </li>
                                                        <li class="t14 t_gray t_nowrap">Unbeatable value at Disney&#x27;s tasty food outlets&nbsp;</li>
                                                        <!--如果是首页 活动卡片显示地点-->
                                                        <li class="t12 t_gray">
                                                            <span class="klook-icon-map"></span> <span>Hong Kong</span>
                                                        </li>
                                                        <li class="t12 t_gray">
                                                        <!-- TODO change 100 to 20 -->
                                                            <i class="klook-icon-hot"></i>
                                                            <span>10K+ Booked</span>
                                                            <span style="display:none">10K+ Booked</span>
                                                        <!-- stars -->
                                                            <span class="g_right">
                                                                <span class="m_star">
                                                                    <span class="l" style="width:90%;" ><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                    <span class="n"><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                </span>
                                                                <span>4.5</span>
                                                            </span>
                                                        </li>
                                                    </ul>
                            
                                                </a>
                                        </div>
                                        <div class="m_justify_list m_radius_box  a_sd_move j_activity_item" >
                                                <!-- _is_homePage _is_homePagePop _is_homePageRec -->
                                                <a href="/activity/45-ngong-ping-360-hong-kong/" class="j_activity_item_link" data-price="96" data-role="recommend-activity" data-id="45" data-url-seo="ngong-ping-360-hong-kong" >
                                                    <div class="m_bg lazy_slide lazy"
                                                            data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_65,f_auto/c_fill,w_800,h_448/activities/e4fe73c5-Ngong-Ping-360-Fast-Track-Cable-Car-Tickets.jpg"
                             >
                                                        <div class="g_l_box">
                                                            <!-- 暂时没有，留着 <div class="m_bg_main t_white">优惠促销</div> -->
                            								<div>
                                                                <p class="t12">
                                                                    <span>¥</span>
                                                                        <del> 121</del>
                                                                </p>
                                                                <p>
                                                                    <span class="t18 t_white"><b>96</b></span>
                                                                </p>
                            								</div>
                            							</div>
                            						</div>
                            
                                                    <ul class="m_border_gray">
                                                        <li>
                                                            <h3 class="t16">
                                                                <p>
                                                                    <span class="t_nowrap g_ib">Ngong Ping 360&nbsp;</span>
                                                                    <i class="t16 klook-icon-fast t_main g_right"></i>
                                                                </p>
                                                            </h3>
                                                        </li>
                                                        <li class="t14 t_gray t_nowrap">Discount tickets for Lantau&#x27;s famed cable car&nbsp;</li>
                                                        <!--如果是首页 活动卡片显示地点-->
                                                        <li class="t12 t_gray">
                                                            <span class="klook-icon-map"></span> <span>Hong Kong</span>
                                                        </li>
                                                        <li class="t12 t_gray">
                                                        <!-- TODO change 100 to 20 -->
                                                            <i class="klook-icon-hot"></i>
                                                            <span>10K+ Booked</span>
                                                            <span style="display:none">10K+ Booked</span>
                                                        <!-- stars -->
                                                            <span class="g_right">
                                                                <span class="m_star">
                                                                    <span class="l" style="width:92%;" ><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                    <span class="n"><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                </span>
                                                                <span>4.6</span>
                                                            </span>
                                                        </li>
                                                    </ul>
                            
                                                </a>
                                        </div>
                        <span class="m_justify_fix"></span>
                    </div>
                    <div class="g_left m_grid" data-page="2">
                                        <div class="m_justify_list m_radius_box  a_sd_move j_activity_item" >
                                                <!-- _is_homePage _is_homePagePop _is_homePageRec -->
                                                <a href="/activity/740-gondola-rides-at-the-venetian-macau/" class="j_activity_item_link" data-price="72" data-role="recommend-activity" data-id="740" data-url-seo="gondola-rides-at-the-venetian-macau" >
                                                    <div class="m_bg lazy_slide lazy"
                                                            data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_65,f_auto/c_fill,w_800,h_448/activities/abb5b611-%E5%A8%81%E5%B0%BC%E6%96%AF%E4%BA%BA%E9%85%92%E5%BA%97%E8%B4%A1%E5%A4%9A%E6%8B%89%E4%B9%8B%E6%97%85.jpg"
                             >
                                                        <div class="g_l_box">
                                                            <!-- 暂时没有，留着 <div class="m_bg_main t_white">优惠促销</div> -->
                            								<div>
                                                                <p class="t12">
                                                                    <span>¥</span>
                                                                        <del> 104</del>
                                                                </p>
                                                                <p>
                                                                    <span class="t18 t_white"><b>72</b></span>
                                                                </p>
                            								</div>
                            							</div>
                            						</div>
                            
                                                    <ul class="m_border_gray">
                                                        <li>
                                                            <h3 class="t16">
                                                                <p>
                                                                    <span class="t_nowrap g_ib">Gondola Rides at The Venetian Macau&nbsp;</span>
                                                                    <i class="t16 klook-icon-fast t_main g_right"></i>
                                                                </p>
                                                            </h3>
                                                        </li>
                                                        <li class="t14 t_gray t_nowrap">A romantic serenade on the canals of &#x27;Venice&#x27;&nbsp;</li>
                                                        <!--如果是首页 活动卡片显示地点-->
                                                        <li class="t12 t_gray">
                                                            <span class="klook-icon-map"></span> <span>Macau</span>
                                                        </li>
                                                        <li class="t12 t_gray">
                                                        <!-- TODO change 100 to 20 -->
                                                            <i class="klook-icon-hot"></i>
                                                            <span>10K+ Booked</span>
                                                            <span style="display:none">10K+ Booked</span>
                                                        <!-- stars -->
                                                            <span class="g_right">
                                                                <span class="m_star">
                                                                    <span class="l" style="width:88%;" ><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                    <span class="n"><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                </span>
                                                                <span>4.4</span>
                                                            </span>
                                                        </li>
                                                    </ul>
                            
                                                </a>
                                        </div>
                                        <div class="m_justify_list m_radius_box  a_sd_move j_activity_item" >
                                                <!-- _is_homePage _is_homePagePop _is_homePageRec -->
                                                <a href="/activity/598-osaka-aquarium-kaiyukan-japan/" class="j_activity_item_link" data-price="134" data-role="recommend-activity" data-id="598" data-url-seo="osaka-aquarium-kaiyukan-japan" >
                                                    <div class="m_bg lazy_slide lazy"
                                                            data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_65,f_auto/c_fill,w_800,h_448/activities/b1bea727-Osaka-Aquarium-Kaiyukan.jpg"
                             >
                                                        <div class="g_l_box">
                                                            <!-- 暂时没有，留着 <div class="m_bg_main t_white">优惠促销</div> -->
                            								<div>
                                                                <p class="t12">
                                                                    <span>¥</span>
                                                                </p>
                                                                <p>
                                                                    <span class="t18 t_white"><b>134</b></span>
                                                                </p>
                            								</div>
                            							</div>
                            						</div>
                            
                                                    <ul class="m_border_gray">
                                                        <li>
                                                            <h3 class="t16">
                                                                <p>
                                                                    <span class="t_nowrap g_ib">Osaka Aquarium Kaiyukan&nbsp;</span>
                                                                    <i class="t16 klook-icon-fast t_main g_right"></i>
                                                                </p>
                                                            </h3>
                                                        </li>
                                                        <li class="t14 t_gray t_nowrap">Step into the wonderful underwater world&nbsp;</li>
                                                        <!--如果是首页 活动卡片显示地点-->
                                                        <li class="t12 t_gray">
                                                            <span class="klook-icon-map"></span> <span>Osaka</span>
                                                        </li>
                                                        <li class="t12 t_gray">
                                                        <!-- TODO change 100 to 20 -->
                                                            <i class="klook-icon-hot"></i>
                                                            <span>10K+ Booked</span>
                                                            <span style="display:none">10K+ Booked</span>
                                                        <!-- stars -->
                                                            <span class="g_right">
                                                                <span class="m_star">
                                                                    <span class="l" style="width:92%;" ><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                    <span class="n"><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                </span>
                                                                <span>4.6</span>
                                                            </span>
                                                        </li>
                                                    </ul>
                            
                                                </a>
                                        </div>
                                        <div class="m_justify_list m_radius_box  a_sd_move j_activity_item" >
                                                <!-- _is_homePage _is_homePagePop _is_homePageRec -->
                                                <a href="/activity/119-sea-aquarium-singapore/" class="j_activity_item_link" data-price="145" data-role="recommend-activity" data-id="119" data-url-seo="sea-aquarium-singapore" >
                                                    <div class="m_bg lazy_slide lazy"
                                                            data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_65,f_auto/c_fill,w_800,h_448/activities/fcswmxk08y1cpfs0oaf6.jpg"
                             >
                                                        <div class="g_l_box">
                                                            <!-- 暂时没有，留着 <div class="m_bg_main t_white">优惠促销</div> -->
                            								<div>
                                                                <p class="t12">
                                                                    <span>¥</span>
                                                                        <del> 164</del>
                                                                </p>
                                                                <p>
                                                                    <span class="t18 t_white"><b>145</b></span>
                                                                </p>
                            								</div>
                            							</div>
                            						</div>
                            
                                                    <ul class="m_border_gray">
                                                        <li>
                                                            <h3 class="t16">
                                                                <p>
                                                                    <span class="t_nowrap g_ib">S.E.A. Aquarium Ticket Sentosa, Singapore&nbsp;</span>
                                                                    <i class="t16 klook-icon-fast t_main g_right"></i>
                                                                </p>
                                                            </h3>
                                                        </li>
                                                        <li class="t14 t_gray t_nowrap">Skip the line to discover the wonders of the sea at the world&#x27;s largest aquarium&nbsp;</li>
                                                        <!--如果是首页 活动卡片显示地点-->
                                                        <li class="t12 t_gray">
                                                            <span class="klook-icon-map"></span> <span>Singapore</span>
                                                        </li>
                                                        <li class="t12 t_gray">
                                                        <!-- TODO change 100 to 20 -->
                                                            <i class="klook-icon-hot"></i>
                                                            <span>10K+ Booked</span>
                                                            <span style="display:none">10K+ Booked</span>
                                                        <!-- stars -->
                                                            <span class="g_right">
                                                                <span class="m_star">
                                                                    <span class="l" style="width:92%;" ><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                    <span class="n"><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                </span>
                                                                <span>4.6</span>
                                                            </span>
                                                        </li>
                                                    </ul>
                            
                                                </a>
                                        </div>
                                        <div class="m_justify_list m_radius_box  a_sd_move j_activity_item" >
                                                <!-- _is_homePage _is_homePagePop _is_homePageRec -->
                                                <a href="/activity/127-gardens-by-the-bay-singapore/" class="j_activity_item_link" data-price="110" data-role="recommend-activity" data-id="127" data-url-seo="gardens-by-the-bay-singapore" >
                                                    <div class="m_bg lazy_slide lazy"
                                                            data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_65,f_auto/c_fill,w_800,h_448/activities/9658ba79-Gardens-by-the-Bay.jpg"
                             >
                                                        <div class="g_l_box">
                                                            <!-- 暂时没有，留着 <div class="m_bg_main t_white">优惠促销</div> -->
                            								<div>
                                                                <p class="t12">
                                                                    <span>¥</span>
                                                                        <del> 135</del>
                                                                </p>
                                                                <p>
                                                                    <span class="t18 t_white"><b>110</b></span>
                                                                </p>
                            								</div>
                            							</div>
                            						</div>
                            
                                                    <ul class="m_border_gray">
                                                        <li>
                                                            <h3 class="t16">
                                                                <p>
                                                                    <span class="t_nowrap g_ib">Gardens by the Bay Ticket Singapore&nbsp;</span>
                                                                    <i class="t16 klook-icon-fast t_main g_right"></i>
                                                                </p>
                                                            </h3>
                                                        </li>
                                                        <li class="t14 t_gray t_nowrap">Skip the ticket line to Marina Bay&#x27;s famed gardens&nbsp;</li>
                                                        <!--如果是首页 活动卡片显示地点-->
                                                        <li class="t12 t_gray">
                                                            <span class="klook-icon-map"></span> <span>Singapore</span>
                                                        </li>
                                                        <li class="t12 t_gray">
                                                        <!-- TODO change 100 to 20 -->
                                                            <i class="klook-icon-hot"></i>
                                                            <span>10K+ Booked</span>
                                                            <span style="display:none">10K+ Booked</span>
                                                        <!-- stars -->
                                                            <span class="g_right">
                                                                <span class="m_star">
                                                                    <span class="l" style="width:94%;" ><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                    <span class="n"><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                </span>
                                                                <span>4.7</span>
                                                            </span>
                                                        </li>
                                                    </ul>
                            
                                                </a>
                                        </div>
                        <span class="m_justify_fix"></span>
                    </div>
                    <span class="f_clearfix"></span>
                </div>
            </div>
            <div class="btn_left  klook-icon-arrow2 f_hidden"></div>
            <div class="btn_right  klook-icon-arrow2"></div>
        </div>

        <div class="g_main m_selected" id="activities">
            <header class="t_mid">
                <h2 class="t32">TRAVEL INSPIRATION</h2>
                <h3 class="t16 t_gray">Curated suggestions based on seasons, festivals and interests</h3>
            </header>

            <div class="m_grid" data-role="home_page_theme">
                    <div class="m_justify_list m_bg theme lazy a_sd_move m_radius_box" data-original="https://klook-res.cloudinary.com/image/upload/fl_lossy.progressive,q_65,f_auto/c_fill,,/v1505814031/banner/hmqsijes4okyibh8l33n.jpg">
                        <a href="/theme/360-2017-autumn-recommendations/" data-id="360" data-url-seo="" data-role="theme">
                        <div class="m_bg_op2">
                            <div class="t_v_mid_box">
                                <div class="t_v_mid t_mid">
                                    <p class="t30 t_white"><b>Fun in Fall </b></p>
                                    <p class="t16 t_white">This Autumn, explore the classic Kyoto Arashiyama bamboo grove, walk through famous National Parks in South Korea, and chase the gorgeous Northern Lights with Klook</p>
                                    <div class="t16 t_white viewMore">Explore More</div>
                                </div>
                            </div>
                        </div>
                        </a>
                    </div>

                                <div class="m_justify_list m_radius_box  a_sd_move j_activity_item" >
                                        <!-- _is_homePage _is_homePagePop _is_homePageRec -->
                                        <a href="/activity/6047-2017-springwave-sunset-iv-taipei/" class="j_activity_item_link" data-price="130" data-role="recommend-activity" data-id="6047" data-url-seo="2017-springwave-sunset-iv-taipei" >
                                            <div class="m_bg  lazy"
                                                    data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_65/c_fill,w_640,h_368,f_auto/activities/ovbos4qzzpoaosbxwg9f.jpg"
                                                  >
                                                <i data-id="6047" class="klook-icon-video t_white t24"></i>
                                                <div class="g_l_box">
                                                    <!-- 暂时没有，留着 <div class="m_bg_main t_white">优惠促销</div> -->
                    								<div>
                                                        <p class="t12">
                                                            <span>¥</span>
                                                        </p>
                                                        <p>
                                                            <span class="t18 t_white"><b>130</b></span>
                                                        </p>
                    								</div>
                    							</div>
                    						</div>
                    
                                            <ul class="m_border_gray">
                                                <li>
                                                    <h3 class="t16">
                                                        <p>
                                                            <span class="t_nowrap g_ib">2017 SpringWave Sunset IV Ticket&nbsp;</span>
                                                            <i class="t16 klook-icon-fast t_main g_right"></i>
                                                        </p>
                                                    </h3>
                                                </li>
                                                <li class="t14 t_gray t_nowrap">One of the biggest EDM festivals in Taiwan&nbsp;</li>
                                                <!--如果是首页 活动卡片显示地点-->
                                                <li class="t12 t_gray">
                                                    <span class="klook-icon-map"></span> <span>Taipei</span>
                                                </li>
                                                <li class="t12 t_gray">
                                                <!-- TODO change 100 to 20 -->
                                                    <i class="klook-icon-hot"></i>
                                                    <span>86 Booked</span>
                                                    <span style="display:none">{0} Booked</span>
                                                <!-- stars -->
                                                </li>
                                            </ul>
                    
                                        </a>
                                </div>
                                <div class="m_justify_list m_radius_box  a_sd_move j_activity_item" >
                                        <!-- _is_homePage _is_homePagePop _is_homePageRec -->
                                        <a href="/activity/6161-memorable-autumn-foliage-tour-seoul/" class="j_activity_item_link" data-price="289" data-role="recommend-activity" data-id="6161" data-url-seo="memorable-autumn-foliage-tour-seoul" >
                                            <div class="m_bg  lazy"
                                                    data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_65/c_fill,w_640,h_368,f_auto/activities/i8di3vdyovjc1fffcuk5.jpg"
                                                  >
                                                <div class="g_l_box">
                                                    <!-- 暂时没有，留着 <div class="m_bg_main t_white">优惠促销</div> -->
                    								<div>
                                                        <p class="t12">
                                                            <span>¥</span>
                                                        </p>
                                                        <p>
                                                            <span class="t18 t_white"><b>289</b></span>
                                                        </p>
                    								</div>
                    							</div>
                    						</div>
                    
                                            <ul class="m_border_gray">
                                                <li>
                                                    <h3 class="t16">
                                                        <p>
                                                            <span class="t_nowrap g_ib">Seoul Memorable Autumn Foliage Day Tour&nbsp;</span>
                                                            <i class="t16 klook-icon-fast t_main g_right"></i>
                                                        </p>
                                                    </h3>
                                                </li>
                                                <li class="t14 t_gray t_nowrap">See the best and brightest autumn displays in and around Seoul&nbsp;</li>
                                                <!--如果是首页 活动卡片显示地点-->
                                                <li class="t12 t_gray">
                                                    <span class="klook-icon-map"></span> <span>Seoul</span>
                                                </li>
                                                <li class="t12 t_gray">
                                                <!-- TODO change 100 to 20 -->
                                                    <i class="klook-icon-hot"></i>
                                                    <span>42 Booked</span>
                                                    <span style="display:none">{0} Booked</span>
                                                <!-- stars -->
                                                </li>
                                            </ul>
                    
                                        </a>
                                </div>
                                <div class="m_justify_list m_radius_box  a_sd_move j_activity_item" >
                                        <!-- _is_homePage _is_homePagePop _is_homePageRec -->
                                        <a href="/activity/5466-seoraksan-national-park-autumn-tour-seoul/" class="j_activity_item_link" data-price="346" data-role="recommend-activity" data-id="5466" data-url-seo="seoraksan-national-park-autumn-tour-seoul" >
                                            <div class="m_bg  lazy"
                                                    data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_65/c_fill,w_640,h_368,f_auto/activities/imevaltpobgpvwtb7hpu.jpg"
                                                  >
                                                <div class="g_l_box">
                                                    <!-- 暂时没有，留着 <div class="m_bg_main t_white">优惠促销</div> -->
                    								<div>
                                                        <p class="t12">
                                                            <span>¥</span>
                                                        </p>
                                                        <p>
                                                            <span class="t18 t_white"><b>346</b></span>
                                                        </p>
                    								</div>
                    							</div>
                    						</div>
                    
                                            <ul class="m_border_gray">
                                                <li>
                                                    <h3 class="t16">
                                                        <p>
                                                            <span class="t_nowrap g_ib">Seoraksan National Park Autumn Day Tour from Seoul&nbsp;</span>
                                                            <i class="t16 klook-icon-fast t_main g_right"></i>
                                                        </p>
                                                    </h3>
                                                </li>
                                                <li class="t14 t_gray t_nowrap">Don&#x27;t miss the magnificent fall foliage at Seoraksan National Park&nbsp;</li>
                                                <!--如果是首页 活动卡片显示地点-->
                                                <li class="t12 t_gray">
                                                    <span class="klook-icon-map"></span> <span>Seoul</span>
                                                </li>
                                                <li class="t12 t_gray">
                                                <!-- TODO change 100 to 20 -->
                                                    <i class="klook-icon-hot"></i>
                                                    <span>59 Booked</span>
                                                    <span style="display:none">{0} Booked</span>
                                                <!-- stars -->
                                                </li>
                                            </ul>
                    
                                        </a>
                                </div>
                                <div class="m_justify_list m_radius_box  a_sd_move j_activity_item" >
                                        <!-- _is_homePage _is_homePagePop _is_homePageRec -->
                                        <a href="/activity/3142-nami-island-roundtrip-transfer-seoul/" class="j_activity_item_link" data-price="144" data-role="recommend-activity" data-id="3142" data-url-seo="nami-island-roundtrip-transfer-seoul" >
                                            <div class="m_bg  lazy"
                                                    data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_65/c_fill,w_640,h_368,f_auto/activities/ewbflqce9j7zljkctbjv.jpg"
                                                  >
                                                <i data-id="3142" class="klook-icon-video t_white t24"></i>
                                                <div class="g_l_box">
                                                    <!-- 暂时没有，留着 <div class="m_bg_main t_white">优惠促销</div> -->
                    								<div>
                                                        <p class="t12">
                                                            <span>¥</span>
                                                        </p>
                                                        <p>
                                                            <span class="t18 t_white"><b>144</b></span>
                                                        </p>
                    								</div>
                    							</div>
                    						</div>
                    
                                            <ul class="m_border_gray">
                                                <li>
                                                    <h3 class="t16">
                                                        <p>
                                                            <span class="t_nowrap g_ib">Nami Island Roundtrip Transfer (from Seoul)&nbsp;</span>
                                                        </p>
                                                    </h3>
                                                </li>
                                                <li class="t14 t_gray t_nowrap">Spend a day on Nami Island with quick and hassle free transfers&nbsp;</li>
                                                <!--如果是首页 活动卡片显示地点-->
                                                <li class="t12 t_gray">
                                                    <span class="klook-icon-map"></span> <span>Seoul</span>
                                                </li>
                                                <li class="t12 t_gray">
                                                <!-- TODO change 100 to 20 -->
                                                    <i class="klook-icon-hot"></i>
                                                    <span>4.9K Booked</span>
                                                    <span style="display:none">{0} Booked</span>
                                                <!-- stars -->
                                                    <span class="g_right">
                                                        <span class="m_star">
                                                            <span class="l" style="width:92%;" ><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                            <span class="n"><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                        </span>
                                                        <span>4.6</span>
                                                    </span>
                                                </li>
                                            </ul>
                    
                                        </a>
                                </div>
                <div class="m_justify_list fill"></div>
            </div>
        </div>


        <div class="g_main m_recommend g_rel" data-role="home_page_recommend">
            <header class="t_mid">
                <h2 class="t32">KLOOK  RECOMMENDED</h2>
                <h3 class="t16 t_gray">Activities handpicked by our travel curators</h3>
            </header>
            <div class="m_slide g_rel">
                <div class="m_slider">
                    <div class="g_left m_grid" data-page="1">
                                    <div class="m_justify_list m_radius_box  a_sd_move j_activity_item" >
                                            <!-- _is_homePage _is_homePagePop _is_homePageRec -->
                                            <a href="/activity/2249-sagano-romantic-train-ticket-kyoto/" class="j_activity_item_link" data-price="96" data-role="recommend-activity" data-id="2249" data-url-seo="sagano-romantic-train-ticket-kyoto" >
                                                <div class="m_bg  recommend_lazy"
                                                        data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_65/c_fill,w_640,h_368,f_auto/activities/lwk6mvoen6jev7acdvlp.jpg"
                                                      >
                                                    <i data-id="2249" class="klook-icon-video t_white t24"></i>
                                                    <div class="g_l_box">
                                                        <!-- 暂时没有，留着 <div class="m_bg_main t_white">优惠促销</div> -->
                        								<div>
                                                            <p class="t12">
                                                                <span>¥</span>
                                                            </p>
                                                            <p>
                                                                <span class="t18 t_white"><b>96</b></span>
                                                            </p>
                        								</div>
                        							</div>
                        						</div>
                        
                                                <ul class="m_border_gray">
                                                    <li>
                                                        <h3 class="t16">
                                                            <p>
                                                                <span class="t_nowrap g_ib">Sagano Romantic Train One Way Ticket (KIX Pick Up)&nbsp;</span>
                                                            </p>
                                                        </h3>
                                                    </li>
                                                    <li class="t14 t_gray t_nowrap">Osaka Airport pick up for the extraordinary cherry blossom train!&nbsp;</li>
                                                    <!--如果是首页 活动卡片显示地点-->
                                                    <li class="t12 t_gray">
                                                        <span class="klook-icon-map"></span> <span>Kyoto</span>
                                                    </li>
                                                    <li class="t12 t_gray">
                                                    <!-- TODO change 100 to 20 -->
                                                        <i class="klook-icon-hot"></i>
                                                        <span>10K+ Booked</span>
                                                        <span style="display:none">{0} Booked</span>
                                                    <!-- stars -->
                                                        <span class="g_right">
                                                            <span class="m_star">
                                                                <span class="l" style="width:88%;" ><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                <span class="n"><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                            </span>
                                                            <span>4.4</span>
                                                        </span>
                                                    </li>
                                                </ul>
                        
                                            </a>
                                    </div>
                                    <div class="m_justify_list m_radius_box  a_sd_move j_activity_item" >
                                            <!-- _is_homePage _is_homePagePop _is_homePageRec -->
                                            <a href="/activity/631-robot-restaurant-tokyo/" class="j_activity_item_link" data-price="315" data-role="recommend-activity" data-id="631" data-url-seo="robot-restaurant-tokyo" >
                                                <div class="m_bg  recommend_lazy"
                                                        data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_65/c_fill,w_640,h_368,f_auto/activities/fcc3bc61-Robot-Restuarant.jpg"
                                                      >
                                                    <i data-id="631" class="klook-icon-video t_white t24"></i>
                                                    <div class="g_l_box">
                                                        <!-- 暂时没有，留着 <div class="m_bg_main t_white">优惠促销</div> -->
                        								<div>
                                                            <p class="t12">
                                                                <span>¥</span>
                                                            </p>
                                                            <p>
                                                                <span class="t18 t_white"><b>315</b></span>
                                                            </p>
                        								</div>
                        							</div>
                        						</div>
                        
                                                <ul class="m_border_gray">
                                                    <li>
                                                        <h3 class="t16">
                                                            <p>
                                                                <span class="t_nowrap g_ib">Robot Restaurant&nbsp;</span>
                                                                <i class="t16 klook-icon-fast t_main g_right"></i>
                                                            </p>
                                                        </h3>
                                                    </li>
                                                    <li class="t14 t_gray t_nowrap">A wonderfully gaudy show with non-stop energy and excitement&nbsp;</li>
                                                    <!--如果是首页 活动卡片显示地点-->
                                                    <li class="t12 t_gray">
                                                        <span class="klook-icon-map"></span> <span>Tokyo</span>
                                                    </li>
                                                    <li class="t12 t_gray">
                                                    <!-- TODO change 100 to 20 -->
                                                        <i class="klook-icon-hot"></i>
                                                        <span>10K+ Booked</span>
                                                        <span style="display:none">{0} Booked</span>
                                                    <!-- stars -->
                                                        <span class="g_right">
                                                            <span class="m_star">
                                                                <span class="l" style="width:84%;" ><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                <span class="n"><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                            </span>
                                                            <span>4.2</span>
                                                        </span>
                                                    </li>
                                                </ul>
                        
                                            </a>
                                    </div>
                                    <div class="m_justify_list m_radius_box  a_sd_move j_activity_item" >
                                            <!-- _is_homePage _is_homePagePop _is_homePageRec -->
                                            <a href="/activity/769-iventure-london-flexi-london/" class="j_activity_item_link" data-price="702" data-role="recommend-activity" data-id="769" data-url-seo="iventure-london-flexi-london" >
                                                <div class="m_bg  recommend_lazy"
                                                        data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_65/c_fill,w_640,h_368,f_auto/activities/ivbdsgqlxdc5pnxwqdk7.jpg"
                                                      >
                                                    <div class="g_l_box">
                                                        <!-- 暂时没有，留着 <div class="m_bg_main t_white">优惠促销</div> -->
                        								<div>
                                                            <p class="t12">
                                                                <span>¥</span>
                                                                    <del> 759</del>
                                                            </p>
                                                            <p>
                                                                <span class="t18 t_white"><b>702</b></span>
                                                            </p>
                        								</div>
                        							</div>
                        						</div>
                        
                                                <ul class="m_border_gray">
                                                    <li>
                                                        <h3 class="t16">
                                                            <p>
                                                                <span class="t_nowrap g_ib">iVenture London Flexi Attractions Pass&nbsp;</span>
                                                                <i class="t16 klook-icon-fast t_main g_right"></i>
                                                            </p>
                                                        </h3>
                                                    </li>
                                                    <li class="t14 t_gray t_nowrap">The flexible way to sightsee London&nbsp;</li>
                                                    <!--如果是首页 活动卡片显示地点-->
                                                    <li class="t12 t_gray">
                                                        <span class="klook-icon-map"></span> <span>London</span>
                                                    </li>
                                                    <li class="t12 t_gray">
                                                    <!-- TODO change 100 to 20 -->
                                                        <i class="klook-icon-hot"></i>
                                                        <span>159 Booked</span>
                                                        <span style="display:none">{0} Booked</span>
                                                    <!-- stars -->
                                                        <span class="g_right">
                                                            <span class="m_star">
                                                                <span class="l" style="width:90%;" ><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                <span class="n"><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                            </span>
                                                            <span>4.5</span>
                                                        </span>
                                                    </li>
                                                </ul>
                        
                                            </a>
                                    </div>
                                    <div class="m_justify_list m_radius_box  a_sd_move j_activity_item" >
                                            <!-- _is_homePage _is_homePagePop _is_homePageRec -->
                                            <a href="/activity/6455-sunrise-angkor-exploration-siem-reap/" class="j_activity_item_link" data-price="85" data-role="recommend-activity" data-id="6455" data-url-seo="sunrise-angkor-exploration-siem-reap" >
                                                <div class="m_bg  recommend_lazy"
                                                        data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_65/c_fill,w_640,h_368,f_auto/activities/gnilmsiheri1ojumemmh.jpg"
                                                      >
                                                    <div class="g_l_box">
                                                        <!-- 暂时没有，留着 <div class="m_bg_main t_white">优惠促销</div> -->
                        								<div>
                                                            <p class="t12">
                                                                <span>¥</span>
                                                                    <del> 98</del>
                                                            </p>
                                                            <p>
                                                                <span class="t18 t_white"><b>85</b></span>
                                                            </p>
                        								</div>
                        							</div>
                        						</div>
                        
                                                <ul class="m_border_gray">
                                                    <li>
                                                        <h3 class="t16">
                                                            <p>
                                                                <span class="t_nowrap g_ib">Sunrise Angkor Exploration&nbsp;</span>
                                                                <i class="t16 klook-icon-fast t_main g_right"></i>
                                                            </p>
                                                        </h3>
                                                    </li>
                                                    <li class="t14 t_gray t_nowrap">Wake up to the enchanting Angkor Wat with a beautiful sunrise backdrop&nbsp;</li>
                                                    <!--如果是首页 活动卡片显示地点-->
                                                    <li class="t12 t_gray">
                                                        <span class="klook-icon-map"></span> <span>Siem Reap</span>
                                                    </li>
                                                    <li class="t12 t_gray">
                                                    <!-- TODO change 100 to 20 -->
                                                        <i class="klook-icon-hot"></i>
                                                        <span>35 Booked</span>
                                                        <span style="display:none">{0} Booked</span>
                                                    <!-- stars -->
                                                    </li>
                                                </ul>
                        
                                            </a>
                                    </div>
                        <span class="m_justify_fix"></span>
                    </div>
                    <div class="g_left m_grid" data-page="2">
                                    <div class="m_justify_list m_radius_box  a_sd_move j_activity_item" >
                                            <!-- _is_homePage _is_homePagePop _is_homePageRec -->
                                            <a href="/activity/132-skyline-luge-singapore/" class="j_activity_item_link" data-price="63" data-role="recommend-activity" data-id="132" data-url-seo="skyline-luge-singapore" >
                                                <div class="m_bg  recommend_lazy"
                                                        data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_65/c_fill,w_640,h_368,f_auto/activities/eee00d09-Skyline-Luge.jpg"
                                                      >
                                                    <i data-id="132" class="klook-icon-video t_white t24"></i>
                                                    <div class="g_l_box">
                                                        <!-- 暂时没有，留着 <div class="m_bg_main t_white">优惠促销</div> -->
                        								<div>
                                                            <p class="t12">
                                                                <span>¥</span>
                                                                    <del> 87</del>
                                                            </p>
                                                            <p>
                                                                <span class="t18 t_white"><b>63</b></span>
                                                            </p>
                        								</div>
                        							</div>
                        						</div>
                        
                                                <ul class="m_border_gray">
                                                    <li>
                                                        <h3 class="t16">
                                                            <p>
                                                                <span class="t_nowrap g_ib">Skyline Luge&nbsp;</span>
                                                                <i class="t16 klook-icon-fast t_main g_right"></i>
                                                            </p>
                                                        </h3>
                                                    </li>
                                                    <li class="t14 t_gray t_nowrap">Go-kart or sled? Both!&nbsp;</li>
                                                    <!--如果是首页 活动卡片显示地点-->
                                                    <li class="t12 t_gray">
                                                        <span class="klook-icon-map"></span> <span>Singapore</span>
                                                    </li>
                                                    <li class="t12 t_gray">
                                                    <!-- TODO change 100 to 20 -->
                                                        <i class="klook-icon-hot"></i>
                                                        <span>10K+ Booked</span>
                                                        <span style="display:none">{0} Booked</span>
                                                    <!-- stars -->
                                                        <span class="g_right">
                                                            <span class="m_star">
                                                                <span class="l" style="width:94%;" ><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                <span class="n"><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                            </span>
                                                            <span>4.7</span>
                                                        </span>
                                                    </li>
                                                </ul>
                        
                                            </a>
                                    </div>
                                    <div class="m_justify_list m_radius_box  a_sd_move j_activity_item" >
                                            <!-- _is_homePage _is_homePagePop _is_homePageRec -->
                                            <a href="/activity/4014-health-land-spa-coupon-th-airport-pick-up-bangkok/" class="j_activity_item_link" data-price="118" data-role="recommend-activity" data-id="4014" data-url-seo="health-land-spa-coupon-th-airport-pick-up-bangkok" >
                                                <div class="m_bg  recommend_lazy"
                                                        data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_65/c_fill,w_640,h_368,f_auto/activities/w7stlivgyfpp35c1ihap.jpg"
                                                      >
                                                    <div class="g_l_box">
                                                        <!-- 暂时没有，留着 <div class="m_bg_main t_white">优惠促销</div> -->
                        								<div>
                                                            <p class="t12">
                                                                <span>¥</span>
                                                            </p>
                                                            <p>
                                                                <span class="t18 t_white"><b>118</b></span>
                                                            </p>
                        								</div>
                        							</div>
                        						</div>
                        
                                                <ul class="m_border_gray">
                                                    <li>
                                                        <h3 class="t16">
                                                            <p>
                                                                <span class="t_nowrap g_ib">Health Land Spa Coupon (TH Airport Pick Up)&nbsp;</span>
                                                                <i class="t16 klook-icon-fast t_main g_right"></i>
                                                            </p>
                                                        </h3>
                                                    </li>
                                                    <li class="t14 t_gray t_nowrap">Easy BKK/DMK pick up of discounted Health Land Spa coupons&nbsp;</li>
                                                    <!--如果是首页 活动卡片显示地点-->
                                                    <li class="t12 t_gray">
                                                        <span class="klook-icon-map"></span> <span>Bangkok</span>
                                                    </li>
                                                    <li class="t12 t_gray">
                                                    <!-- TODO change 100 to 20 -->
                                                        <i class="klook-icon-hot"></i>
                                                        <span>8.7K Booked</span>
                                                        <span style="display:none">{0} Booked</span>
                                                    <!-- stars -->
                                                        <span class="g_right">
                                                            <span class="m_star">
                                                                <span class="l" style="width:84%;" ><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                <span class="n"><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                            </span>
                                                            <span>4.2</span>
                                                        </span>
                                                    </li>
                                                </ul>
                        
                                            </a>
                                    </div>
                                    <div class="m_justify_list m_radius_box  a_sd_move j_activity_item" >
                                            <!-- _is_homePage _is_homePagePop _is_homePageRec -->
                                            <a href="/activity/3301-louvre-museum-skip-the-line-guided-tour-paris/" class="j_activity_item_link" data-price="148" data-role="recommend-activity" data-id="3301" data-url-seo="louvre-museum-skip-the-line-guided-tour-paris" >
                                                <div class="m_bg  recommend_lazy"
                                                        data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_65/c_fill,w_640,h_368,f_auto/activities/dfzignnjtbn2z0jgucea.jpg"
                                                      >
                                                    <div class="g_l_box">
                                                        <!-- 暂时没有，留着 <div class="m_bg_main t_white">优惠促销</div> -->
                        								<div>
                                                            <p class="t12">
                                                                <span>¥</span>
                                                                    <del> 156</del>
                                                            </p>
                                                            <p>
                                                                <span class="t18 t_white"><b>148</b></span>
                                                            </p>
                        								</div>
                        							</div>
                        						</div>
                        
                                                <ul class="m_border_gray">
                                                    <li>
                                                        <h3 class="t16">
                                                            <p>
                                                                <span class="t_nowrap g_ib">The Louvre Museum&nbsp;</span>
                                                            </p>
                                                        </h3>
                                                    </li>
                                                    <li class="t14 t_gray t_nowrap">Beat the entrance queues to the world&#x27;s most visited museum &nbsp;</li>
                                                    <!--如果是首页 活动卡片显示地点-->
                                                    <li class="t12 t_gray">
                                                        <span class="klook-icon-map"></span> <span>Paris</span>
                                                    </li>
                                                    <li class="t12 t_gray">
                                                    <!-- TODO change 100 to 20 -->
                                                        <i class="klook-icon-hot"></i>
                                                        <span>710 Booked</span>
                                                        <span style="display:none">{0} Booked</span>
                                                    <!-- stars -->
                                                        <span class="g_right">
                                                            <span class="m_star">
                                                                <span class="l" style="width:84%;" ><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                <span class="n"><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                            </span>
                                                            <span>4.2</span>
                                                        </span>
                                                    </li>
                                                </ul>
                        
                                            </a>
                                    </div>
                                    <div class="m_justify_list m_radius_box  a_sd_move j_activity_item" >
                                            <!-- _is_homePage _is_homePagePop _is_homePageRec -->
                                            <a href="/activity/3403-london-eye-ticket-london/" class="j_activity_item_link" data-price="190" data-role="recommend-activity" data-id="3403" data-url-seo="london-eye-ticket-london" >
                                                <div class="m_bg  recommend_lazy"
                                                        data-original="https://res.klook.com/image/upload/fl_lossy.progressive,q_65/c_fill,w_640,h_368,f_auto/activities/sznjcdfzlvz8exjmmo2i.jpg"
                                                      >
                                                    <div class="g_l_box">
                                                        <!-- 暂时没有，留着 <div class="m_bg_main t_white">优惠促销</div> -->
                        								<div>
                                                            <p class="t12">
                                                                <span>¥</span>
                                                                    <del> 202</del>
                                                            </p>
                                                            <p>
                                                                <span class="t18 t_white"><b>190</b></span>
                                                            </p>
                        								</div>
                        							</div>
                        						</div>
                        
                                                <ul class="m_border_gray">
                                                    <li>
                                                        <h3 class="t16">
                                                            <p>
                                                                <span class="t_nowrap g_ib">London Eye Ticket&nbsp;</span>
                                                            </p>
                                                        </h3>
                                                    </li>
                                                    <li class="t14 t_gray t_nowrap">Take a ride on the world-famous London icon &nbsp;</li>
                                                    <!--如果是首页 活动卡片显示地点-->
                                                    <li class="t12 t_gray">
                                                        <span class="klook-icon-map"></span> <span>London</span>
                                                    </li>
                                                    <li class="t12 t_gray">
                                                    <!-- TODO change 100 to 20 -->
                                                        <i class="klook-icon-hot"></i>
                                                        <span>1.6K Booked</span>
                                                        <span style="display:none">{0} Booked</span>
                                                    <!-- stars -->
                                                        <span class="g_right">
                                                            <span class="m_star">
                                                                <span class="l" style="width:88%;" ><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                                <span class="n"><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i><i class="klook-icon-star"></i></span>
                                                            </span>
                                                            <span>4.4</span>
                                                        </span>
                                                    </li>
                                                </ul>
                        
                                            </a>
                                    </div>
                        <span class="m_justify_fix"></span>
                    </div>
                    <span class="f_clearfix"></span>
                </div>
            </div>
            <div class="btn_left  klook-icon-arrow2 f_hidden"></div>
            <div class="btn_right  klook-icon-arrow2"></div>
        </div>

    </section>
    <section class="intro">
        <header>
            <div class="m_bg lazy" data-original="https://res.klook.com/image/upload/q_60/v1465888536/web3.0/how_to_use.jpg">
                <div class="g_v_mid t_mid t_white f_hidden j_after_lazy">
                    <h1>NEW TO KLOOK?</h1>
                    <h2 class="t24">Book your next adventure with the Klook app</h2>

                    <p><i id="videoPlay" class="klook-icon-play t30" data-track-event="Home Page|Home Page Video Played"
                          v-src="https://res.klook.com/video/upload/c_scale,h_720,q_80,vc_auto/v1472139937/klook_travel_home_en.mp4"
                    ></i></p>

                </div>
            </div>
        </header>
        <div class="g_main">
            <div class="m_grid handbook">
                <div class="m_justify_list  m_bg a_sd_move m_radius_box" data-image="i_blog" data-track-event="Home Page|Home Page Blog Box Clicked">
                        <a target="_blank"  href="/blog">
                        <div class="t_mid t_white m_bg_op2">
                            <div class="bottom g_pa_lr_20">
                                <h5 class="t18">Check out the Klook blog</h5>
                                <p>Follow the team's musings on trends in travel, itinerary ideas and travel tips</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="m_justify_list  m_bg a_sd_move m_radius_box" data-image="i_invite" data-track-event="Home Page|Home Page Invitation Box Clicked">
                    <a href="javascript:;" class="j-invite">
                        <div class="t_mid t_white m_bg_op2">
                            <div class="bottom g_pa_lr_20">
                                <h5 class="t18">Earn credit for inviting friends</h5>
                                <p>Share your referral code with friends and you'll both get ¥21.1</p>
                            </div>
                        </div>
                    </a>
                </div>
                <!--data-original="https://res.klook.com/image/upload/v1464854586/web3.0/mobile.jpg"-->
                <div class="m_justify_list  m_bg  a_sd_move m_radius_box" data-image="i_app">
                    <div class="t_mid t_white m_bg_op2">
                        <div class="bottom g_pa_lr_20 md_em_small">
                            <h5 class="t18">Download Klook’s Award Winning App</h5>
                            <p>Enjoy ¥8.4 off your first Mobile App booking using promo code ‘mobile10’</p>
                        </div>
                    </div>
                    <!--f_hidden-->
                    <div id="h_dl" class="h_dl m_grid f_hidden">
                        <i class="i_qr135 m_justify_list"></i>
                        <div class="m_justify_list">
                            <a target="_blank" data-track-event="Download App|App Store Button Clicked"  href=https://itunes.apple.com/app/klook/id961850126?mt=8 class="i_ios_dl_en"></a>
                            <a target="_blank" data-track-event="Download App|Google Play Button Clicked"  href=https://play.google.com/store/apps/details?id=com.klook&amp;hl=en class="i_and_dl_en"></a>
                        </div>
                        <span class="m_justify_fix"></span>

                        <div class="bottom g_pa_lr_20 md_em_small t_mid">
                            <p>Download Klook App and enjoy ¥8.4 off your first Mobile App booking using promo code 'mobile10'</p>
                        </div>
                    </div>
                </div>
                <span class="m_justify_fix"></span>
            </div>
            <div class="brands">
                <h2 class="t32 t_mid">PARTNERSHIPS</h2>
                <h3 class="t16 t_gray t_mid">Klook teams up with big names to bring you exclusive promotions</h3>
                <div class="t_v_mid_box">
                    <!-- 还有根据IP地址判断来显示功能没有,缺少citilogo -->
                    <div class="t_v_mid t_mid"><a target="_blank"  href="https://www.klook.com/asiamiles"><i data-image="i_airasia_en"></i></a></div>
                    <div class="t_v_mid t_mid"><a target="_blank"  href="https://www.klook.com/getgo"><i data-image="i_getgo"></i></a></div>
                    <div class="t_v_mid t_mid"><a target="_blank"  href="https://www.klook.com/airasiabig"><i data-image="i_big"></i></a></div>
                    <div class="t_v_mid t_mid"><a target="_blank"  href="https://www.klook.com/iventure"><i data-image="i_iventure"></i></a></div>
                    <div class="t_v_mid t_mid"><a target="_blank"  href="http://en.prnasia.com/story/142385-0.shtml"><i data-image="i_index_wechat_en"></i></a></div>
                    <div class="t_v_mid t_mid"><a target="_blank"  href="http://www.dragonair.com/ka/en_HK/latest-offers/inflight-shopping.html"><i data-image="i_guotai_en"></i></a></div>
                    <div class="t_v_mid t_mid"><a target="_blank"  href="http://www.hkexpress.com/en-hk/HKE-KLOOK-Partner-to-Launch-U-Explore"><i data-image="i_hkexpress"></i></a></div>
                </div>
            </div>
        </div>
    </section>
    <section class="media">
        <div class="g_main">
            <div class="brands t_mid">
                <h2 class="t32">IN THE MEDIA</h2>
                <h3 class="t16 t_gray">See what others are saying about Klook</h3>
                <div class="t_v_mid_box">
                    <div class="t_v_mid"><a href="/news" target="_blank"><i data-image="i_techcrunch"></i></a></div>
                    <div class="t_v_mid"><a href="/news" target="_blank"><i data-image="i_cnbc"></i></a></div>
                    <div class="t_v_mid"><a href="/news" target="_blank"><i data-image="i_wit2"></i></a></div>
                    <div class="t_v_mid"><a href="/news" target="_blank"><i data-image="i_scmp2"></i></a></div>
                    <div class="t_v_mid"><a href="/news" target="_blank"><i data-image="i_forbes"></i></a></div>
                    <div class="t_v_mid"><a href="/news" target="_blank"><i data-image="i_tdn"></i></a></div>
                    <div class="t_v_mid"><a href="/news" target="_blank"><i data-image="i_e27_2"></i></a></div>
                    <div class="t_v_mid"><a href="/news" target="_blank"><i data-image="i_wsj2"></i></a></div>
                </div>
            </div>
        </div>
    </section>
    <!--提示订阅成功-->
    <article class="t_mid m_radius_box book_success t_white f_hidden"></article>
    <div class="f_hidden share_code">
        <div class="g_v_c_mid m_bg_white share_code_tips">
            <i class="klook-icon-index-share-code-popup-click"></i>
            <h3>Sign Up Success!</h3>
            <p>Welcome to Klook! Your HK$25 promo code has been stored in your Klook App account. Please download our App to begin the journey!</p>
            <div class="qrcode i_qr115"></div>
            <div class="btns m_grid">
                <div class="explr m_justify_list"><a href="javascript:;">Return to Home Page</a></div>
                <div class="account m_justify_list"><a href="/coupons">Account</a></div>
                <span class="m_justify_fix"></span>
            </div>
        </div>
    </div>


    <script type="text/x-template" id="tpl_city_country_list">
        {{#each data}}
    {{#if (equal type 'city')}}
    <div class="search_list">
        <i class="klook-icon-map"></i>
        <a href="/{{@root._lang_path}}city/{{id}}/"  data-role="suggest-city" data-url-seo="{{city_seo}}" data-id="{{id}}" class="t_black w400">{{{_name}}}</a>
    </div>
    {{/if}}

    {{#if (equal type 'activity') }}
    <div class="search_list">
        <a href="/{{@root._lang_path}}activity/{{id}}/" data-role="suggest-activity"  data-url-seo="{{url_seo}}" data-id="{{id}}" class="t_black w400">{{{_name}}}</a>
        <span class="g_right t_gray">{{city_name}}</span>
    </div>
    {{/if}}
{{/each}}
    </script>


        <footer id="footer" class="m_footer g_row1 ">
        		<div class="a">
        			<div class="g_main t_white g_rel m_grid">
        				<div class="m_justify_list m_external_links"> 
        					<div class="m_grid">
        						<div class="m_justify_list">
        							<div class="t_v_mid_box">
        								<a data-track-event="Social Media|Social Media Clicked|Facebook" target="_blank" class="t_v_mid"
        								href="https://www.facebook.com/klookglobal/"
        								>
        								<i class="klook-icon-fb t22"></i>
        								</a>
        							</div>
        						</div>
        						<div class="m_justify_list">
        							<div class="t_v_mid_box">
        								<a data-track-event="Social Media|Social Media Clicked|Twitter" target="_blank"  href="https://twitter.com/klooktravel" class="t_v_mid t_mid">
        									<i class="klook-icon-twi t22"></i>
        								</a>
        							</div>
        						</div>
        						<div class="m_justify_list">
        							<div class="t_v_mid_box">
        								<a data-track-event="Social Media|Social Media Clicked|Wechat"  class="t_v_mid t_mid g_rel">
        									<i class="t22 klook-icon-wc"></i>
        									<i class="i_wechat_qr" style="display: none"></i>
        								</a>
        							</div>
        						</div>
        						<div class="m_justify_list">
        							<div class="t_v_mid_box">
        								<a data-track-event="Social Media|Social Media Clicked|Instagram" target="_blank" href="https://instagram.com/klooktravel" class="t_v_mid t_mid">
        									<i class="klook-icon-ins2 t22"></i>
        								</a>
        							</div>
        						</div>
        						<div class="m_justify_fix"></div>
        					</div>
        				</div>
        				<div class="m_justify_list g_rel" style="">
        					<div class="m_grid">
        						<div class="m_justify_list">
        							<div>
        								<span class="t14">Travel discounts up to 60% off sent straight to your inbox</span>
        							</div>
        						</div>
        						<div class="m_justify_list">
        							<input type="text" name="email_subscribe" class="g_left t14" placeholder="Enter your email address">
        							<a id="subscription" class="subscription g_left m_btn_main g_ib t_mid t14" data-track-event="Email Subscription|Newsletter Subscribed" data-gatag="Main Page|Subcribe">Subscribe</a>
        						</div>
        						<div class="thanks j_subscribe_tips"></div>
        						<span class="m_justify_fix"></span>
        					</div>
        				</div>
        				<span class="m_justify_fix"></span>
        			</div>
        		</div>
        
        		<div class="b">
        			<div class="g_main m_grid">
        				<div class="m_justify_list">
        					<!--<div class="klook-icon-login-logo-white t30 t_white"></div>-->
        					<p class="t12 copyright ">© 2014-2017 Klook Travel Technology Limited. All Rights Reserved.<br>HK Travel Agent Licence: <a target="_blank" href="http://www.tichk.org/public/website/en/agents/22997/details.html">354005</a>.
        					<br>SG Travel Agent Licence: <a target="_blank" href="https://trust.yoursingapore.com/trust/TaDir?USER=PUB&mode=publicSearch&FORMAT=HTML&DISPLAY_TYPE=DETAILS&page=1">02851</a>.
        						<br>TW Travel Agent License: <a target="_blank" href="http://admin.taiwan.net.tw/travel/travel_d.aspx?no=202&d=800500">甲 03950</a>.
        					</p>
        
        					<div class="option_define g_rel">
        						<select id="f_lang" class="t16 t_white" data-gatag="Main Page|Language">
        							<option value="en" selected>English</option><option value="zh-CN" >中文（简体）</option><option value="zh-TW" >中文（繁體）</option><option value="ko" >한국어</option><option value="th" >ไทย</option><option value="vi" >Tiếng Việt</option>
        						</select>
        						<i class="klook-icon-down g_v_mid t10"></i>
        					</div>
        
        					<div id="view_mobile" class="view_mobile">
        						<a href="/">Visit Mobile Site</a>
        					</div>
        					
        				</div>
        				<div class="m_justify_list">
        					<ul>
                                <li class="t_white">ABOUT KLOOK</li>
                                <li><a href="/about/">About Us</a></li>
                                <li><a href="/blog">Klook Blog</a></li>
                                <li><a href="/partner/">Partner With Us</a></li>
                                <li><a href="/career/">Careers</a></li>
        					</ul>
        				</div>
        				<div class="m_justify_list">
        					<ul>
                                <li class="t_white">PARTNERSHIPS</li>
                                <li><a href="https://merchant.klook.com/">Partner Login </a></li>
                                <li><a href="http://affiliate.klook.com/">Affiliate Partnership</a></li>
                                    <li><a href="https://affiliate.klook.com/">Influencer Program</a></li>
                                <li><a href="https://www.klook.com/agent/">Agent Marketplace</a></li>
        					</ul>
        				</div>
        				<div class="m_justify_list">
        					<ul>
        						<li class="t_white">TERMS OF USE</li>
                                <li><a href="/conditions/">Terms And Conditions</a></li>
        						<li><a href="/policy/">Privacy Policy</a></li>
        					</ul>
        				</div>
        				<div class="m_justify_list" style="overflow: initial;">
        					<ul>
        						<!--<li class="t_white">CONTACT</li>-->
        						<li class="t_white t16 foot-askus-btn t_mid"><a href="/faq?ask_klook" target="_blank">Ask Klook</a></li>
        					</ul>
        					<ul>
        						<!--<li class="t_white">Find us on Social Media</li>-->
        						<li class="t_gray">PAYMENT CHANNEL</li>
        						<li class="ma_0 g_rel m_grid">
                                    <!--<a target="_blank"-->
                                    <!---->
        							  <!--href="https://www.facebook.com/klookglobal/"-->
                                    <!---->
                                    <!--&gt;<i class="klook-icon-facebook i_bg"></i></a>-->
        							<!--<a target="_blank" href="https://instagram.com/klooktravel"><i class="klook-icon-instagarm i_bg"></i></a>-->
        							<!--<a target="_blank"  href="https://twitter.com/klooktravel"><i class="klook-icon-twitter i_bg"></i></a>-->
        							<!--&lt;!&ndash; <a href="javascript:;"><i class="klook-icon-wechat i_bg"></i></a> &ndash;&gt;-->
        							<!---->
        							<!---->
        							<!---->
        							<span class="i_alipay m_justify_list"></span>
        							<span class="i_newMaster m_justify_list"></span>
        							<span class="i_newPaypal m_justify_list"></span>
        							<span class="i_newAE m_justify_list"></span>
        							<span class="i_newVisa m_justify_list"></span>
        						</li>
        					</ul>
        				</div>
        				<span class="m_justify_fix"></span>
        			</div>
        		</div>
        	</footer>


    <div class="g_row1 hktb f_hidden j_bottom_banner" style="position:fixed;bottom:0;z-index:1000;">
        <b class="close klook-icon-close" style="color:black;opacity: 1;"></b>
        <div class="g_main">
                <a href="javascript:;" data-role="mixpanel-banner" target="_blank">
                    <img class="g_left" style="max-width: 1160px;max-height: 120px">
                </a>
        </div>
    </div>
    
     
  </body>


    <script>
        var KLK_LANG = 'en';
        var KLK_ENV = 'prd';
        var KLK_LANG_PATH = '';
        var KLK_CURRENCY = 'CNY';
        var KLK_IP_COUNTRY = 'CN';
        var KLK_PAGE_DATA = {"_lang":"en","_url_path":"/","_lang_path":"","_env":"prd","_platform":"desktop","_currency_list":{"suggestCurrency":[{"value":"HKD","title":"HKD | HK$"},{"value":"SGD","title":"SGD | S$"},{"value":"USD","title":"USD | US$"},{"value":"TWD","title":"TWD | NT$"},{"value":"CNY","title":"CNY | ¥"}],"otherCurrency":[{"value":"AED","title":"AED | AED"},{"value":"AUD","title":"AUD | AUD"},{"value":"PHP","title":"PHP | ₱"},{"value":"ISK","title":"ISK | kr"},{"value":"DKK","title":"DKK | kr"},{"value":"RUB","title":"RUB | ₽"},{"value":"KRW","title":"KRW | ₩"},{"value":"LAK","title":"LAK | ₭"},{"value":"MYR","title":"MYR | RM"},{"value":"NOK","title":"NOK | kr"},{"value":"EUR","title":"EUR | €"},{"value":"JPY","title":"JPY | ¥"},{"value":"SEK","title":"SEK | kr"},{"value":"CHF","title":"CHF | CHF"},{"value":"THB","title":"THB | ฿"},{"value":"TRY","title":"TRY | YTL"},{"value":"NZD","title":"NZD | NZ$"},{"value":"INR","title":"INR | ₹"},{"value":"GBP","title":"GBP | £"},{"value":"IDR","title":"IDR | Rp"},{"value":"VND","title":"VND | ₫"}]},"_currency":"CNY","_currency_symbo":"¥","_currency_rate":{"USDHKD":7.803173,"CNYHKD":1.186275,"EURHKD":9.347367,"GBPHKD":10.545409,"AUDHKD":6.244068,"SGDHKD":5.789583,"TWDHKD":0.25895,"THBHKD":0.236031,"JPYHKD":0.069973,"KRWHKD":0.006917,"IDRHKD":0.000588,"PHPHKD":0.153124,"VNDHKD":0.000343,"MYRHKD":1.862416,"LAKHKD":0.00094,"AEDHKD":2.124649,"NZDHKD":5.707437,"ISKHKD":0.073615,"SEKHKD":0.979645,"NOKHKD":0.998584,"DKKHKD":1.255808,"CHFHKD":8.102611,"RUBHKD":0.134106,"TRYHKD":2.231336,"INRHKD":0.121273,"KHRHKD":0.001926,"MMKHKD":0.005746,"QARHKD":2.103399,"OMRHKD":20.288914,"JODHKD":11.02925,"LBPHKD":0.005183},"_ip_country":"CN","_user_ip":"113.116.72.128","_time":1505915063025,"_show_mobile10":true,"_canonical_path":"/","_affiliate_style":""};
        var KLK_PAGE_AD = {};
    </script>
    <script crossorigin src="//cdn.klook.com/s_v2f6e16c57f/dist_web/desktop/js/manifest.bundle.js"></script>
    <script crossorigin src="//cdn.klook.com/s_vf523b7b013/dist_web/desktop/js/vendor.bundle.js"></script>
    <script crossorigin src="//cdn.klook.com/s_vc63ca88cc5/dist_web/comm/locales/lang.en.js" ></script>

        <script crossorigin src="//cdn.klook.com/s_v49b60be989/dist_web/desktop/js/index.bundle.js"></script>
        <script>
            var indexPage=true;
        </script>

</html>
