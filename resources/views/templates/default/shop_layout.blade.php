@php
    $carts = \Helper::getListCart();

@endphp
        <!DOCTYPE html>
<html itemscope itemtype="http://schema.org/Article" dir="ltr" lang="{{ app()->getLocale() }}">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name='revisit-after' content='days'/>
    <meta name="robots" content="index,follow"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=10, user-scalable=yes">
    {!! SEOMeta::generate() !!}
    {!! OpenGraph::generate() !!}
    {!! Twitter::generate() !!}
    <meta property="og:description" content="{{ $description??$configsGlobal['description'] }}"/>
    <meta name="DC.title" content="Thu hiền Store"/>
    <meta name="geo.region" content="VN-820"/>
    <meta name="geo.placename" content="Thuận Giao"/>
    <meta name="geo.position" content="13.290403;108.426511"/>
    <meta name="ICBM" content="13.290403, 108.426511"/>
    <script src="{{ asset(SITE_THEME_ASSET.'/js/jquery-1.12.4.js')}}"></script>
    <script src="{{ asset(SITE_THEME_ASSET.'/js/defer_plus.min.js')}}"></script>
    <script src="//cdn.jsdelivr.net/npm/@shinsenter/defer.js/dist/defer_plus.min.js"></script>
    <script>
        deferscript('//cdn.jsdelivr.net/npm/@shinsenter/defer.js/dist/polyfill.min.js', 'polyfill-js', 1);
    </script>
    <script src="{{ asset(SITE_THEME_ASSET.'/js/jquery.magnific-popup.min.js')}}"></script>

    <link href="{{ asset(SITE_THEME_ASSET.'/fontawesome-free-5.0.8/web-fonts-with-css/css/fontawesome-all.min.css')}}"
          type="text/css" rel="stylesheet"/>
    <!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
          integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous"/>-->
    <script type="text/javascript">
        // This will lzay-load FontAwesome icons
        deferstyle('//use.fontawesome.com/releases/v5.3.1/css/all.css', 'fontawesome-css', 1000);
    </script>
    {!! htmlScriptTagJsApi(/* $formId - INVISIBLE version only */) !!}
    <script type="application/ld+json">
                    {
                      "@context"        :    "{!! $scheama['@context'] ??'' !!}",
                      "@type"           : "{!! $scheama['@type'] ??'' !!}",
                      "name"            : "{!! $scheama['name'] ??'' !!}",
                      "alternateName"   : "{!! $scheama['contactPoint']['areaServed'] ??'' !!}",
                      "url":  "{!! $scheama['url'] ??'' !!}",

                    }
                </script>
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=vietnamese"
          rel="stylesheet"/>
    <link href="{{ asset(SITE_THEME_ASSET.'/magiczoom/magiczoom.css')}}" rel="stylesheet"/>
    <link href="{{ asset(SITE_THEME_ASSET.'/bootstrap-3.2.0/css/bootstrap.css')}}" rel="stylesheet"/>
    <link href="{{ asset(SITE_THEME_ASSET.'/bootstrap-3.2.0/css/bootstrap-theme.css')}}" rel="stylesheet"/>
    <link href="{{ asset(SITE_THEME_ASSET.'/css/style.css')}}" type="text/css" rel="stylesheet"/>
    <link href="{{ asset(SITE_THEME_ASSET.'/css/magnific-popup.css')}}" type="text/css" rel="stylesheet"/>
    <script type="text/javascript"> var url = "https://thuhienstore.club/";</script>

    <!-- <script async src="https://www.googletagmanager.com/gtag/js?id=UA-138697257-1"></script>
     <script> window.dataLayer = window.dataLayer || [];

         function gtag() {
             dataLayer.push(arguments);
         }

         gtag('js', new Date());
         gtag('config', 'UA-138697257-1'); </script>-->
    <!--Module meta -->
    <script type="text/javascript">
        // Alternative way to lazy load Google Tag Manager script
        deferscript('//www.googletagmanager.com/gtag/js?id=UA-138697257-1', 'google-tag', 500, function () {
            // Run extra code right after the script has been loaded
            (window.dataLayer = window.dataLayer || []).push('config', 'UA-138697257-1');
        });
    </script>
@isset ($layouts['meta'])
    @foreach ( $layouts['meta']  as $layout)
        @if ($layout->page == null ||  $layout->page =='*' || $layout->page =='' || (isset($layout_page) && in_array($layout_page, $layout->page) ) )
            @if ($layout->page =='html')
                {{$layout->text }}
            @endif
        @endif
    @endforeach
@endisset
<!--//Module meta -->

</head>

<body>
<script>deferimg('img[data-src],picture,video,audio')</script>
<h1 style="display: none;">{{$title??$configsGlobal['title']}}</h1>
<div class="wrapper">
    @include(SITE_THEME.'.header')

    <div id="content_wrapper">
        <!--Module banner -->
    @isset ($layouts['banner_top'])
        @foreach ( $layouts['banner_top']  as $layout)
            @if ($layout->page == null ||  $layout->page =='*' || $layout->page =='' || (isset($layout_page) && in_array($layout_page, $layout->page) ) )
                @if ($layout->type =='html')
                    {!! $layout->text !!}
                @elseif($layout->type =='view')
                    @if (view()->exists('blockView.'.$layout->text))
                        @include('blockView.'.$layout->text)
                    @endif
                @elseif($layout->type =='module')
                    {!! (new $layout->text)->render() !!}
                @endif
            @endif
        @endforeach
    @endisset
    <!--//Module banner -->
    @if ($configs['site_status'])

        <!--Module top -->
        @isset ($layouts['top'])
            @foreach ( $layouts['top']  as $layout)
                @if ($layout->page == null ||  $layout->page =='*' || $layout->page =='' || (isset($layout_page) && in_array($layout_page, $layout->page) ) )
                    @if ($layout->type =='html')
                        {!! $layout->text !!}
                    @elseif($layout->type =='view')
                        @if (view()->exists('blockView.'.$layout->text))
                            @include('blockView.'.$layout->text)
                        @endif
                    @elseif($layout->type =='module')
                        {!! (new $layout->text)->render() !!}
                    @endif
                @endif
            @endforeach
        @endisset
        <!--//Module top -->


            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12" id="breadcrumb">
                            <!--breadcrumb-->
                        @yield('breadcrumb')
                        <!--//breadcrumb-->
                        </div>

                        <!--body-->
                    @section('main')
                        @include(SITE_THEME.'.center')
                    @show
                    <!--//body-->

                    </div>
                </div>
            </section>

        @else
            <section>
                <div class="container">
                    <div class="row">
                        <div id="columns" class="container" style="color:red;text-align: center;">
                            <img src="{{ asset('images/maintenance.png') }}"><br>
                            <h3><i class="fas fa-exclamation"></i>{{ trans('language.maintenance') }}</h3>
                            <!-- /.col -->
                        </div>
                    </div>
                </div>
            </section>
        @endif
        <div class="h_commitment">
            <div class="container">
                <div class="col-md-4 col-sm-12 col-xs-12">
                    <div class="h_commitment_child">
                        <img src="{{ asset(SITE_THEME_ASSET.'/images/giao-hang-tan-noi.png')}}"
                             alt="Giao hàng tận nơi"/>
                        <b>GIAO HÀNG TẬN NƠI</b>
                        <span>Nhận hàng trong vòng 7 ngày</span>
                    </div>
                </div>
                <div class="col-md-4 col-sm-12 col-xs-12">
                    <div class="h_commitment_child">
                        <img src="{{ asset(SITE_THEME_ASSET.'/images/san-pham-host.png')}}"
                             alt="Nhiều ưu đãi lớn"/>
                        <b>NHIÊU ƯU ĐÃI LỚN</b>
                        <span>Đổi trả trong vòng 15 ngày</span>
                    </div>
                </div>
                <div class="col-md-4 col-sm-12 col-xs-12">
                    <div class="h_commitment_child">
                        <img src="{{ asset(SITE_THEME_ASSET.'/images/giao-hang-tan-noi.png')}}"
                             alt="Giao hàng tận nơi"/>
                        <b>BẢO HÀNH DÀI HẠN</b>
                        <span>Cam kết 100% bảo hành nếu lỗi sản phẩm</span>
                    </div>
                </div>
            </div>
        </div>
        @yield('news')
    </div>
    @include(SITE_THEME.'.footer')

</div>


<script src="{{ asset(SITE_THEME_ASSET.'/bootstrap-3.2.0/js/bootstrap.min.js')}}"></script>
<script src="{{ asset(SITE_THEME_ASSET.'/js/back-to-top.js')}}" type="text/javascript"></script>
<script src="{{ asset(SITE_THEME_ASSET.'/js/front.js')}}" type="text/javascript"></script>
<script src="{{ asset(SITE_THEME_ASSET.'/magiczoom/magiczoom.js')}}" type="text/javascript"></script>
@stack('scripts')
<script type="text/javascript">
    $('#ad_to_cart').click(function () {
        var id = $(this).attr("data-id");
        var txtQty = $('#txtQty').val();
        var _token = $('#token').val();
        $(".loader").fadeIn();
        $.ajax({
            type: 'POST',
            url: "{{ route('addToCart') }}",
            data: {id: id, txtQty: txtQty, _token: _token},
            success: function (data) {
                location.href = '{{route('cart')}}';
            }
        });
    });
    jQuery(".buynow").click(function () {
        jQuery('#tensanpham').val(jQuery('.cat_right  h1').text())
    });
    jQuery('.open-popup-link').magnificPopup({
        type: 'inline',
        midClick: true,
        mainClass: 'mfp-fade'
    });

    jQuery(".contact").click(function () {
        if(!jQuery('.g-recaptcha-response').val()){
            alert("Vui lòng nhấn recapcha");
            event.preventDefault();
            return;
        }
      //  jQuery('#tensanpham').val(jQuery('.cat_right  h1').text())
    });

</script>

<!--Module bottom -->
@isset ($layouts['bottom'])
    @foreach ( $layouts['bottom']  as $layout)
        @if ($layout->page == null ||  $layout->page =='*' || $layout->page =='' || (isset($layout_page) && in_array($layout_page, $layout->page) ) )
            @if ($layout->type =='html')
                {!! $layout->text !!}
            @elseif($layout->type =='view')
                @if (view()->exists('blockView.'.$layout->text))
                    @include('blockView.'.$layout->text)
                @endif
            @elseif($layout->type =='module')
                {!! (new $layout->text)->render() !!}
            @endif
        @endif
    @endforeach
@endisset
<!--//Module bottom -->
</body>
</html>
