@extends(SITE_THEME.'.shop_layout')

@section('center')
    @php

        $modelCategory = (new \App\Models\ShopCategory);
        $categoriesTop = $modelCategory->getCategoriesTop();
    @endphp
    <section class="group_page">
        <div class="container">
            <div class="col-md-3 col-sm-12 col-xs-12">
                <div class="cat_left">

                    <div class="input-group form_search">
                        <form action="{{ route('search') }}" method="get"
                              enctype="multipart/form-data">
                            <div class="input-group">
                                <input type="text" class="form-control"
                                       placeholder="{{ trans('language.search_form.keyword') }}..." name="keyword">
                                <input type="submit" value="Tìm"/>
                            </div>
                        </form>
                    </div>
                    @foreach ($categoriesTop as $key =>  $category)
                        <a class="{{\Request::fullUrl() ==  $category->getUrl() ? 'active' : '' }}"
                           href="{{ $category->getUrl() }}">{{ $category->name }}</a>
                    @endforeach
                </div>
            </div>
            <div class="col-md-9 col-sm-12 col-xs-12">
                <div class="cat_right">
                    <h1>{{ $product->name }}</h1>
                    <div class="product_detail_left">

                        <a id="Zoom-1" class="MagicZoom" href="{{ asset($product->getImage()) }}"
                           data-options="zoomWidth:250px; zoomHeight:250px; hint: always; textHoverZoomHint: Rê chuột; textClickZoomHint: Click image to zoom in; variableZoom: true"
                        >
                            <img srcset="{{ asset($product->getImage()) }}" src="{{ asset($product->getImage()) }}"
                                 alt="{{ asset($product->getImage()) }}"/>
                        </a>
                        @if ($product->images->count())
                            @foreach ($product->images as $key=>$image)
                                <div class="thumb">
                                    <a data-zoom-id="Zoom-1"
                                       href="{{ asset($image->getImage()) }}"
                                       data-image="{{ asset($image->getImage()) }}"
                                    >
                                        <img srcset="{{ asset($image->getImage()) }}"
                                             src="{{ asset($image->getImage()) }}"/>
                                    </a>
                                </div>
                            @endforeach
                        @endif

                    </div>

                    <div class="product_detail_right">
                        <p>
                            Mã sản phẩm: <b class="color_red"> {{ $product->sku }}</b>
                        </p>
                        <div class="tb-social-buttons">
                            <a class="icon-fb"
                               href="https://www.facebook.com/sharer/sharer.php?u={{$product->getUrl()}}"
                               onclick="window.open(this.href, 'facebook-share', 'width=580,height=296');return false;"
                               title="Chia sẽ bài viết trên Facebook">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a class="icon-gplus" href="https://plus.google.com/share?url={{$product->getUrl()}}"
                               onclick="window.open(this.href, 'google-plus-share', 'width=490,height=530');return false;"
                               title="Chia sẽ bài viết trên Google +">
                                <i class="fab fa-google-plus-g"></i>
                            </a>
                        </div>

                        <p><i class="fas fa-signal fa-fw"></i> <b>{{ trans('language.product.availability') }}:</b>
                            @if ($configs['show_date_available'] && $product->date_available >= date('Y-m-d H:i:s'))
                                {{ $product->date_available }}
                            @else
                                {{ trans('language.product.in_stock') }}
                            @endif
                        </p>
                        <p>
                            <i class="fas fa-phone fa-fw"></i> Hỗ trợ:
                            <a href="tel:0988607425" title="Hotline đặt hàng">0988607425</a> -
                            <a href="tel:0976522437" title="Hotline hỗ trợ">0976522437</a>
                        </p>
                        <p>
                            <i class="fas fa-truck fa-fw"></i> Vận chuyển:
                            <span class="p_d_ccc">Giao hàng trên toàn quốc</span>
                        </p>
                        <p>
                            <i class="far fa-credit-card fa-fw"></i> Thanh toán:
                            <span class="p_d_ccc">Chuyển khoản và nhận hàng sau 2 - 3 ngày</span>
                        </p>

                        <p>
                            <b>{{ trans('language.product.overview') }}:</b>
                        <p>{{ $product->description }}</p>
                        </p>

                        <p>
                            Giá:
                            <a href="tel:0988607425" title="Liên hệ tư vấn mua hàng">
                                <b class="pro_price"> {!! $product->showPrice() !!}</b>
                            </a>
                        </p>
                        <div class="add_to_cart">
                            <input type="number" name="txtQty" value="1" id="txtQty"/>
                            <a  href="#test-popup" class="add_cart open-popup-link buynow">
                                <i class="fas fa-shopping-cart"></i>
                               Mua ngay
                            </a>

                        </div>
                    </div>
                    <div class="detail_editor">
                        <b class="title_product_info">
                            Thông tin sản phẩm
                        </b>
                        <div class="content_product_info">
                            {!! $product->content !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @if ($productsToCategory->count())
            <div class="productRelated container">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <h3>{{ trans('language.recommended_items') }}</h3>
                </div>
                @foreach ($productsToCategory as  $key => $product_rel)
                    <div class="col-md-3 col-sm-6 col-xs-6">
                        <div class="productRelated_child">
                            <a href="{{ $product_rel->getUrl() }}" title="{{ $product_rel->name }}">
                                <img src="{{ asset($product_rel->getThumb()) }}" alt="{{ $product_rel->name }}"/>
                                <b>{{ $product_rel->name }}</b>
                                <span>{!! $product_rel->showPrice() !!}</span>
                            </a>
                        </div>
                    </div>
                @endforeach

            </div>
        @endif


    </section>


@endsection

@section('breadcrumb')
@endsection

@push('styles')

@endpush

