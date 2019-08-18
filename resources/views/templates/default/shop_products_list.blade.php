@extends(SITE_THEME.'.shop_layout')

@section('center')
    @php

        $modelCategory = (new \App\Models\ShopCategory);
        $categoriesTop = $modelCategory->getCategoriesTop();
    @endphp
    <div class="container">
        @if (count($products) ==0)
            {{ trans('language.empty_product') }}
        @else
            <div class="col-md-3 col-sm-12 col-xs-12">
                <div class="cat_left">

                    <div class="input-group form_search">
                        <form  action="{{ route('search') }}" method="get"
                              enctype="multipart/form-data" >
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="{{ trans('language.search_form.keyword') }}..." name="keyword">
                                <input type="submit" value="Tìm"/>
                            </div>
                        </form>
                    </div>
                    @foreach ($categoriesTop as $key =>  $category)
                        <a class="{{\Request::fullUrl() ==  $category->getUrl() ? 'active' : '' }}" href="{{ $category->getUrl() }}">{{ $category->name }}</a>
                    @endforeach
                </div>
            </div>
            <div class="col-md-9 col-sm-12 col-xs-12">
                <div class="cat_right">
                    <h1>{{ $title }}</h1>

                    <div class="page_wrap">
                        <div class="page_content">

                            <ul class="p_list">
                                @foreach ($products as  $key => $product)
                                    <li>
                                        <a href="{{ $product->getUrl() }}"
                                           title="{{ $product->name }}">
                                            <p style="background-image: url({{ asset($product->getThumb()) }});">
                                            </p>
                                            <b>{{ $product->name }}</b>
                                            <span>{!! $product->showPrice() !!}</span>
                                        </a>
                                    </li>
                                @endforeach
                            </ul>

                        </div>
                    </div>
                </div>
            </div>

    </div>
    @endif

    <div style="clear: both; ">
        <ul class="pagination">
            {{ $products->appends(request()->except(['page','_token']))->links() }}
        </ul>
    </div>
    </div>
@endsection


@section('breadcrumb')
    <div class="col-md-12 col-sm-12 col-xs-12 group_child">
        <ul id="breadcrumb1" class="list-inline mg-left-xs-0 hidden-xs">
            <li><a href="{{ route('home') }}">Home</a></li>
            <li class="active">{{ $title }}</li>
        </ul>
    </div>
@endsection

@section('filter')
    <form action="" method="GET" id="filter_sort">
        <div class="pull-right">
            <div>
                @php
                    $queries = request()->except(['filter_sort','page']);
                @endphp
                @foreach ($queries as $key => $query)
                    <input type="hidden" name="{{ $key }}" value="{{ $query }}">
                @endforeach
                <select class="custom-select" name="filter_sort">
                    <option value="">{{ trans('language.filters.sort') }}</option>
                    <option value="price_asc" {{ ($filter_sort =='price_asc')?'selected':'' }}>{{ trans('language.filters.price_asc') }}</option>
                    <option value="price_desc" {{ ($filter_sort =='price_desc')?'selected':'' }}>{{ trans('language.filters.price_desc') }}</option>
                    <option value="sort_asc" {{ ($filter_sort =='sort_asc')?'selected':'' }}>{{ trans('language.filters.sort_asc') }}</option>
                    <option value="sort_desc" {{ ($filter_sort =='sort_desc')?'selected':'' }}>{{ trans('language.filters.sort_desc') }}</option>
                    <option value="id_asc" {{ ($filter_sort =='id_asc')?'selected':'' }}>{{ trans('language.filters.id_asc') }}</option>
                    <option value="id_desc" {{ ($filter_sort =='id_desc')?'selected':'' }}>{{ trans('language.filters.id_desc') }}</option>
                </select>
            </div>
        </div>
    </form>

@endsection

@push('styles')
@endpush
@push('scripts')
    <script type="text/javascript">
        $('[name="filter_sort"]').change(function (event) {
            $('#filter_sort').submit();
        });
    </script>
@endpush
