@extends(SITE_THEME.'.shop_layout')

@section('main')
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-sm-9 col-xs-9">
                    <div class="service_detail">
                        {!! $page->content !!}
                    </div>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-3">
                    <div class="service_detail">
                        <div id="dslc-module-5359"
                             class="dslc-module-front dslc-module-DSLC_Info_Box dslc-in-viewport-check dslc-in-viewport-anim-none  dslc-col dslc-12-col dslc-last-col dslc-hide-on-phone  dslc-module-handle-like-regular  dslc-in-viewport"
                             data-module-id="5359" data-dslc-module-id="DSLC_Info_Box" data-dslc-module-size="12"
                             data-dslc-anim="none" data-dslc-anim-delay="0" data-dslc-anim-duration="650"
                             data-dslc-anim-easing="ease" data-dslc-preset="none"
                             style="animation: 0.65s ease 0s 1 normal none running forwards;">
                            <div class="dslc-info-box dslc-info-box-icon-pos-above">
                                <div class="dslc-info-box-wrapper">
                                    <div class="dslc-info-box-main-wrap dslc-clearfix">
                                        <div class="dslc-info-box-main">
                                            <div class="dslc-info-box-title"><h4>Báo giá dịch vụ</h4></div>
                                            <div class="dslc-info-box-content"><p>Liên hệ với chúng tôi để nhận báo giá
                                                    dịch vụ cho dự án của&nbsp;bạn với chi phí tốt nhất.</p></div>
                                            <div class="dslc-info-box-button"><a href="{{ route('contact') }}" target="_self"
                                                                                 class="dslc-primary"> <span
                                                            class="dslc-icon dslc-icon-ext-envelope"></span> Liên hệ
                                                    ngay </a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection

@section('breadcrumb')
    <div class="col-md-12 col-sm-12 col-xs-12 group_child">
        <ul id="breadcrumb1" class="list-inline mg-left-xs-0 hidden-xs">
            <li><a href="{{ route('home') }}">Home</a></li>
            <li class="active">{{ $title }}</li>
        </ul>
        <div class="info-title"><h1>{{ $title }}</h1></div>
    </div>
@endsection
