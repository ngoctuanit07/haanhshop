@extends(SITE_THEME.'.shop_layout')

@section('main')
    <section class="group_page">
        <div class="container">

            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="service_detail">
                    {!! $news_currently->content !!}
                </div>
            </div>
        </div>
    </section>
@endsection

@section('breadcrumb')
    <div class="col-md-12 col-sm-12 col-xs-12">
        <ul id="breadcrumb1" class="list-inline mg-left-xs-0 hidden-xs">
            <li><a href="{{ route('home') }}">Home</a></li>
            <li class="active">{{ $title }}</li>
        </ul>
        <div class="info-title"><h1>{{ $title }}</h1></div>
    </div>
@endsection
