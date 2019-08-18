@extends(SITE_THEME.'.shop_layout')

@section('main')
    <section>
        <div class="container">
            <div class="row">
				<?php
				//print_r(count($news)); die();
				$newTotal = count($news);
				?>
				<?php $item = 0; $rowNumber = ceil($newTotal / 4); $columnStt = 1;?>
                @foreach ($news as $newsDetail)
					<?php if($item % $rowNumber === 0):?>
                    <div class="col-sm-3 item col-xs-12">
						<?php endif;?>
                        <div class="news_list">
                            <a href="{{ $newsDetail->getUrl() }}"
                               title="{{ $newsDetail->title }}">
                                <img src="{{ asset($newsDetail->getThumb()) }}"
                                     alt="{{ $newsDetail->title }}"/>
                                <span>{{ $newsDetail->title }}</span>
                            </a>
                            <span class="news_cat_date">
                               <i class="far fa-calendar-alt"></i>
                                {{$newsDetail->created_at}}&nbsp;&nbsp;&nbsp;
                                <i class="fas fa-eye"></i>
                                1
                          </span>
                        </div>
						<?php if((($item + 1) % $rowNumber) == 0):?>
						<?php if (($rowNumber > 1) && ($columnStt == $newTotal % 4) && (($item + 1) % $columnStt == 0)) {
							$rowNumber--;
							$item += (($rowNumber - 1) - ($item % $rowNumber));
						}?>
						<?php $columnStt++?>
                    </div>
					<?php endif;?>
					<?php $item++?>
                @endforeach
                <div class="col-md-12 col-sm-12 col-xs-12 text_align_center">
                    <!-- Pagination -->
                    <div class="pagination">
                        <div class="pagination">
                            {{ $news->links() }}
                        </div>
                    </div>
                    <!-- Pagination -->

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
