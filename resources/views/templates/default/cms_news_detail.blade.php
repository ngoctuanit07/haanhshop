@extends(SITE_THEME.'.shop_layout')

@section('main')

    <section>
        <span class="news_cat_date">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="service_detail">
                        {!! $news_currently->content !!}
                    </div>
                    <div class="block-news-other">
                        <h3 class="block-other-ttl">Các tin khác</h3>
                        <ul class="block-other-list">
                            @foreach ($baivietkhacs as $newsDetail)
                                <li class="clearfix">
                                    <a href="{{route('newsDetail', ['name' => Helper::strToUrl($newsDetail->title), 'id' => $newsDetail->id])}}">
                                        <span class="other-date">{{$newsDetail->created_at}}</span>
                                        <span class="other-text">{{$newsDetail->title}}</span>
                                    </a>
                                </li>
                            @endforeach

                        </ul>
                    </div>
                    <div class="zalo-share-button" data-href="" data-oaid="2428366237328835967" data-layout="2"
                         data-color="blue" data-customize=false></div>
                    <div class="zalo-comment-plugin" data-appid="635235194469811762" data-size="10"></div>
                </div>

            </div>
        </div>
    </section>
@endsection

@section('breadcrumb')
    <div class="col-md-12 col-sm-12 col-xs-12">
        <ul id="breadcrumb1">
            <li><a href="{{ route('home') }}">Home</a></li>
            <li class="active">{{ $title }}</li>
            </li>
        </ul>
        <div class="info-title"><h1>{{ $title }}</h1></div>

    </div>
@endsection
