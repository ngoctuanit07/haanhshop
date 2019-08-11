<div class="header-wrapper">
    <div id="masthead" class="header-main nav-dark">
        <div class="header-inner flex-row container logo-left medium-logo-center" role="navigation">

            <!-- Logo -->
            <div id="logo" class="flex-col logo">
                <!-- Header logo -->
                <a href="https://haanhshop.xyz/" title="Tinh bột nghệ nguyên chất An Bình – 90% Khách hàng hài lòng - Một trang web mới sử dụng WordPress" rel="home">
                    <img width="176" height="83" src="{{ asset(SITE_THEME_ASSET.'/images/logo-tinh-bot-nghe-an-binh.png')}}" class="header_logo header-logo" alt="Tinh bột nghệ nguyên chất An Bình – 90% Khách hàng hài lòng">
                    <img width="176" height="83" src="{{ asset(SITE_THEME_ASSET.'/images/logo-tinh-bot-nghe-an-binh.png')}}" class="header-logo-dark" alt="Tinh bột nghệ nguyên chất An Bình – 90% Khách hàng hài lòng"></a>
            </div>

            <!-- Mobile Left Elements -->
            <div class="flex-col show-for-medium flex-left">
                <ul class="mobile-nav nav nav-left ">
                    <li class="nav-icon has-icon">
                        <a href="#" data-open="#main-menu" data-pos="left" data-bg="main-menu-overlay" data-color="" class="is-small" aria-controls="main-menu" aria-expanded="false">

                            <i class="icon-menu"></i>
                        </a>
                    </li>
                </ul>
            </div>

            <!-- Left Elements -->
            <div class="flex-col hide-for-medium flex-left
            flex-grow">
                <ul class="header-nav header-nav-main nav nav-left  nav-size-large">
                </ul>
            </div>

            <!-- Right Elements -->
            <div class="flex-col hide-for-medium flex-right">
               <!-- <ul class="header-nav header-nav-main nav nav-right  nav-size-large">
                    <li id="menu-item-50" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-41 current_page_item menu-item-has-children active  menu-item-50 has-dropdown"><a href="http://tinhbotnghe.giaodienwebmau.com/" class="nav-top-link">Sản phẩm<i class="icon-angle-down"></i></a>
                        <ul class="nav-dropdown nav-dropdown-default">
                            <li id="menu-item-190" class="menu-item menu-item-type-post_type menu-item-object-page  menu-item-190"><a href="http://tinhbotnghe.giaodienwebmau.com/nano-curcumin/">Nano Curcumin</a></li>
                        </ul>
                    </li>
                    <li id="menu-item-191" class="menu-item menu-item-type-post_type menu-item-object-page  menu-item-191"><a href="http://tinhbotnghe.giaodienwebmau.com/cong-dung-cua-tinh-bot-nghe/" class="nav-top-link">Công dụng</a></li>
                    <li id="menu-item-202" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children  menu-item-202 has-dropdown"><a href="http://tinhbotnghe.giaodienwebmau.com/cach-uong-tinh-bot-nghe/" class="nav-top-link">Cách Sử dụng<i class="icon-angle-down"></i></a>
                        <ul class="nav-dropdown nav-dropdown-default">
                            <li id="menu-item-203" class="menu-item menu-item-type-post_type menu-item-object-post  menu-item-203"><a href="http://tinhbotnghe.giaodienwebmau.com/uong-tinh-bot-nghe-lam-dep-da/">Uống tinh bột nghệ làm đẹp da</a></li>
                            <li id="menu-item-204" class="menu-item menu-item-type-post_type menu-item-object-post  menu-item-204"><a href="http://tinhbotnghe.giaodienwebmau.com/cach-uong-tinh-bot-nghe-de-giam-can/">Cách uống tinh bột nghệ để giảm cân</a></li>
                            <li id="menu-item-205" class="menu-item menu-item-type-post_type menu-item-object-post  menu-item-205"><a href="http://tinhbotnghe.giaodienwebmau.com/cach-uong-tinh-bot-nghe-tang-can/">Cách uống tinh bột nghệ tăng cân</a></li>
                            <li id="menu-item-206" class="menu-item menu-item-type-post_type menu-item-object-post  menu-item-206"><a href="http://tinhbotnghe.giaodienwebmau.com/cach-uong-tinh-bot-nghe-sau-sinh/">Cách uống tinh bột nghệ sau sinh</a></li>
                        </ul>
                    </li>
                    <li id="menu-item-207" class="menu-item menu-item-type-post_type menu-item-object-page  menu-item-207"><a href="http://tinhbotnghe.giaodienwebmau.com/nano-curcumin/" class="nav-top-link">Nano Curcumin</a></li>
                    <li class="html custom html_topbar_left">
                        <div class="phone">
                            <a href="tel:0931 302 865">
                                <div class="phr"> <span>Hotline</span> <span class="apnr"><i class="fa fa-phone" aria-hidden="true"></i> 0931 302 865</span></div>
                            </a>
                        </div>
                    </li>
                </ul>-->
                <ul class="header-nav header-nav-main nav nav-right  nav-size-large">
                    <li><a href="{{ route('home') }}" class="active">{{ trans('language.home') }}</a></li>
                    <li class="dropdown"><a href="#">{{ trans('language.shop') }}<i class="fa fa-angle-down"></i></a>
                        <ul role="menu" class="sub-menu nav-dropdown nav-dropdown-default">
                            <li><a href="{{ route('products') }}">{{ trans('language.all_product') }}</a></li>
                            <li><a href="{{ route('compare') }}">{{ trans('language.compare') }}</a></li>
                            <li><a href="{{ route('cart') }}">{{ trans('language.cart_title') }}</a></li>
                            <li><a href="{{ route('categories') }}">{{ trans('language.categories') }}</a></li>
                            <li><a href="{{ route('brands') }}">{{ trans('language.brands') }}</a></li>
                            <li><a href="{{ route('vendors') }}">{{ trans('language.vendors') }}</a></li>
                        </ul>
                    </li>

                    @if (!empty($configs['News']))
                        <li><a href="{{ route('news') }}">{{ trans('language.blog') }}</a></li>
                    @endif

                    @if (!empty($configs['Content']))
                        <li class="dropdown"><a href="#">{{ trans('language.cms_category') }}<i class="fa fa-angle-down"></i></a>
                            <ul role="menu" class="sub-menu nav-dropdown nav-dropdown-default">
                                @php
                                    $cmsCategories = (new \App\Modules\Cms\Models\CmsCategory)->where('status',1)->get();
                                @endphp
                                @foreach ($cmsCategories as $cmsCategory)
                                    <li><a href="{{ $cmsCategory->getUrl() }}">{{ $cmsCategory->title }}</a></li>
                                @endforeach
                            </ul>
                        </li>
                    @endif

                    @if (!empty($layoutsUrl['menu']))
                        @foreach ($layoutsUrl['menu'] as $url)
                            <li><a {{ ($url->target =='_blank')?'target=_blank':''  }} href="{{ url($url->url) }}">{{ trans($url->name) }}</a></li>
                        @endforeach
                    @endif
                    <li class="html custom html_topbar_left">
                        <div class="phone">
                            <a href="tel:0931 302 865">
                                <div class="phr"> <span>Hotline</span> <span class="apnr"><i class="fa fa-phone" aria-hidden="true"></i> 0931 302 865</span></div>
                            </a>
                        </div>
                    </li>
                </ul>
            </div>

            <!-- Mobile Right Elements -->
            <div class="flex-col show-for-medium flex-right">
                <ul class="mobile-nav nav nav-right ">
                    <li class="header-search header-search-dropdown has-icon has-dropdown menu-item-has-children">
                        <a href="#" class="is-small"><i class="fa fa-search"></i></a>
                        <ul class="nav-dropdown nav-dropdown-default">
                            <li class="header-search-form search-form html relative has-icon">
                                <div class="header-search-form-wrapper">
                                    <div class="searchform-wrapper ux-search-box relative form- is-normal">
                                        <form method="get" class="searchform" action="http://tinhbotnghe.giaodienwebmau.com/" role="search">
                                            <div class="flex-row relative">
                                                <div class="flex-col flex-grow">
                                                    <input type="search" class="search-field mb-0" name="s" value="" id="s" placeholder="Search…" autocomplete="off">
                                                </div>
                                                <!-- .flex-col -->
                                                <div class="flex-col">
                                                    <button type="submit" class="ux-search-submit submit-button secondary button icon mb-0">
                                                        <i class="fa fa-search"></i> </button>
                                                </div>
                                                <!-- .flex-col -->
                                            </div>
                                            <!-- .flex-row -->
                                            <div class="live-search-results text-left z-top">
                                                <div class="autocomplete-suggestions" style="position: absolute; display: none; max-height: 300px; z-index: 9999;"></div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <!-- .nav-dropdown -->
                    </li>
                </ul>
            </div>

        </div>
        <!-- .header-inner -->

        <!-- Header divider -->
        <div class="container">
            <div class="top-divider full-width"></div>
        </div>
    </div>
    <!-- .header-main -->
    <div class="header-bg-container fill">
        <div class="header-bg-image fill"></div>
        <div class="header-bg-color fill"></div>
    </div>
    <!-- .header-bg-container -->
</div>