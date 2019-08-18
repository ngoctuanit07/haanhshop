  @php
    $banners = \App\Models\Banner::where('status', 1)->sort()->get()
  @endphp
 @if (!empty($banners))
     <!-- #slide ------------------------------->
     <div class="slideshow_home">
         <div id="myCarousel" class="carousel slide" data-ride="carousel">
             <!-- Wrapper for slides -->
             <div class="carousel-inner">
                 @foreach ($banners as $key => $banner)
                     <div class="item {{ ($key)?'':'active' }}">
                         <a href="{{ $banner->url }}" title="Hà Anh Shop">
                             <img src="{{ asset(SITE_PATH_FILE.'') }}/{{ $banner->image }}"
                                  alt="banner"/>
                         </a>
                     </div>
                 @endforeach
             </div>
             <!-- Left and right controls -->
             <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                 <img src="{{ asset(SITE_THEME_ASSET.'/images/pre_icon.png')}}"/>
             </a>
             <a class="right carousel-control" href="#myCarousel" data-slide="next">
                 <img src="{{ asset(SITE_THEME_ASSET.'/images/next_icon.png')}}"/>
             </a>
         </div>
     </div>
     <!-- End #slide ------------------------------->
@endif
