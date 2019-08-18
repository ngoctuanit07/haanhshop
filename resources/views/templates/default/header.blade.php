<input type="hidden" id="token" value="{{ csrf_token() }}"/>
<div class="header_top">
    <div class="container">
        <!--<div class="col-xs-12 col-sm-12 col-md-6">
            <div class="h_slogan">
                <marquee behavior="scroll" direction="left" scrolldelay="50" scrollamount="3">
                    Cửa Hàng Thu Hiền | Uy tín - Chất lượng
                </marquee>
            </div>
        </div>-->
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="h_hotline">
                Hotline: <a href="tel:{{ $configsGlobal['phone'] }}"
                            title="Hotline hỗ trợ [{{ $configsGlobal['support'] }}]">{{ $configsGlobal['phone'] }}</a>
            </div>
        </div>
    </div>
</div>
@php

    $modelCategory = (new \App\Models\ShopCategory);
    $categoriesTop = $modelCategory->getCategoriesTop();
@endphp
<div class="header_bottom" id="header_bottom">
    <div class="container">
        <div class="col-xs-12 col-sm-12 col-md-3">
            <div class="h_logo">
                <a href="{{ route('home') }}" alt="Trang chủ" title="Trang chủ">
                    <img style="width: 150px;" src="{{ asset(SITE_LOGO) }}" alt=""/>
                </a>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-9">
            <div class="h_menu_mobile" id="h_menu_mobile">
                <i class="fas fa-bars"></i>
            </div>
            <div class="h_menu" id="h_menu">
                <ul>
                    <li><a href="{{ route('home') }}" class="active">{{ trans('language.home') }}</a></li>
                    <li>{{trans('Dịch vụ')}}
                        <ul>
                            @if (!empty($layoutsUrl['menu']))
                                @foreach ($layoutsUrl['menu'] as $url)
                                    <li>
                                        <a {{ ($url->target =='_blank')?'target=_blank':''  }} href="{{ url($url->url) }}">{{ trans($url->name) }}</a>
                                    </li>
                                @endforeach
                            @endif
                        </ul>
                    </li>
                    <li><a href="#">{{ trans('language.all_product') }}
                            <ul>
                                @foreach ($categoriesTop as $key =>  $category)

                                    <li>
                                        <a href="{{ $category->getUrl() }}">{{ $category->name }}</a>
                                    </li>

                                @endforeach
                            </ul>
                        </a></li>
                    <li><a href="{{ route('news') }}">{{ trans('language.blog') }}</a></li>
                    <li><a href="/contact.html">{{ trans('language.contact') }}</a></li>

                </ul>

            </div>
        </div>
    </div>
</div>
