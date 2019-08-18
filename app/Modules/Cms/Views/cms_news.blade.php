@extends(SITE_THEME.'.shop_layout')

@section('main')
    <section class="group_page">
        <div class="container">
            @foreach ($news as $newsDetail)
            @endforeach
            <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="news_list">
                    <a href="{{ $newsDetail->getUrl() }}" title="Dép đi trong khách sạn dành cho mọi khách hàng">
                        <img src="{{ asset($newsDetail->getThumb()) }}" alt="{{ $newsDetail->title }}"/>
                        <span>{{ $newsDetail->title }}</span>
                    </a>
                    <h2 style="display: none;">{{ $newsDetail->title }}</h2>
                </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
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
    </div>
@endsection
