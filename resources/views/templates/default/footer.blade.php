<!--Footer-->

<!--Module top footer -->
  @isset ($layouts['footer'])
      @foreach ( $layouts['footer']  as $layout)
        @if ($layout->page == null ||  $layout->page =='*' || $layout->page =='' || (isset($layout_page) && in_array($layout_page, $layout->page) ) )
          @if ($layout->type =='html')
            {!! $layout->text !!}
          @elseif($layout->type =='view')
            @if (view()->exists('blockView.'.$layout->text))
             @include('blockView.'.$layout->text)
            @endif
          @elseif($layout->type =='module')
            {!! (new $layout->text)->render() !!}
          @endif
        @endif
      @endforeach
  @endisset
<!--//Module top footer -->
<div id="test-popup" class="white-popup mfp-hide">
  <div class="title_dh">
    <h3 style="margin-top:5px;">Form đặt hàng nhanh</h3>
  </div>

  <div class="form_dh">
    <form action="{{route('order') }}" method="post">
      @csrf
      <p style="display: none;"><input type="text" name="url" value="{{\Request::fullUrl()}}"
                                       required="required"/></p>
      <p style="text-align: center;margin-bottom:20px;color:#f00;"><b>----> Đặt Online nhận ƯU ĐÃI <----</b></p>
      <p style="text-align: center;margin-bottom:20px;color:#f00;">Chuyên viên tư vấn sẽ xác nhận sau khi bạn đặt
        hàng</p>
      <p>
        <!--<select class="select_sl" name="congty" required="required">



        </select>-->
        <input type="text" id="tensanpham" name="congty" placeholder="Tên sản phẩm" class="text_dh product_name" required="required"/>
      </p>
      <p>
        <select class="select_sl" name="soluong" required="required">
          <option value="">Chọn số lượng</option>
          <option value="1 hộp">1 hộp</option>
          <option value="2 hộp">2 hộp</option>
          <option value="3 hộp">3 hộp</option>
          <option value="4 hộp">4 hộp</option>
          <option value="5 hộp0">5 hộp</option>
          <option value="> 5 hộp"> > 5 hộp</option>
        </select>
      </p>
      <p><input type="text" name="hoten" placeholder="Họ và tên" class="text_dh" required="required"/></p>
      <p><input type="text" name="dienthoai" placeholder="Điện thoại" class="text_dh" required="required"/></p>
      <p><input type="text" name="diachi" placeholder="Địa chỉ" class="text_dh" required="required"/></p>
      <p><input type="email" name="email" placeholder="Email" class="text_dh" required="required"/></p>
      <p><textarea name="noidung" placeholder="Ghi chú: (thời gian giao hàng hoặc số lượng > 5)"
                   maxlength="500"></textarea></p>
      <p>
        <button type="submit"><i class="fa fa-cart-arrow-down"></i> Đặt hàng</button>
      </p>
      <p style="text-align: center;margin-top:10px;color:#f00;font-style: italic">Giao hàng miễn phí toàn quốc</p>
    </form>
  </div>
</div>
<!-- footer ------------------------------->
<div class="f_wrap">
  <div class="container">
    <div class="col-xs-12 col-sm-12 col-md-4">
      <div class="f_company">
        <h6>
       {{$configsGlobal['title']}}
        </h6>
        <p>
          Địa chỉ:
          {{ $configsGlobal['address'] }}
        </p>
        <p>
          Điện thoại:
          <a href="tel:{{ $configsGlobal['long_phone'] }}" title="Hotline tư vấn">{{ $configsGlobal['long_phone'] }} [{{ $configsGlobal['support'] }}]</a>

        </p>

        <p>
          Email:
          {{ $configsGlobal['email'] }}
        </p>
        <p>Website:  {{ $configsGlobal['website'] }}</p>

        <p><br/>
          Đang online: <b>
            40 </b>
          - Tổng lượt truy cập:
          <b>
            3</b>
        </p>

        <p class="design_by">
          Design by
          <a href="{{ \Request::fullUrl() }}" target="_blank"
             title="Thiết kế website chuyên nghiệp giá tốt - Thu Hiền Store [0976.522.437]"
             class="color_yellow">
            Thu Hiền Store
          </a>
        </p>


      </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-2">
      <div class="f_cat">
        <h6>Danh mục</h6>
        <ul>
          <li>
            <a href="{{ \Request::fullUrl() }}" title="Trang chủ">Trang chủ</a>
          </li>
          <!--<li>
            <a href="/about.html" title="Giới thiệu">Giới thiệu</a>
          </li>-->
          <li>
            <a href="{{route('news')}}" title="Tin tức & Sự kiện">Tin tức &
              Sự kiện</a>
          </li>
          <li>
            <a href="/contact.html" title="Liên hệ">Liên hệ</a>
          </li>
        </ul>
      </div>
    </div>
    @php

      $modelXuhuongtimkiem = (new \App\Models\ShopXuhuongtimkiem);
      $xuhuongtimkiem  = $modelXuhuongtimkiem->getXuHuongTimmKiem();
    @endphp
    <?php //print_r($xuhuongtimkiem); die;?>
    <div class="col-xs-12 col-sm-12 col-md-4">
      <div class="f_tag">
        <h6>Xu hướng tìm kiếm</h6>
        <p>

          @foreach ($xuhuongtimkiem as $key =>  $timkiem)
            <a href="{{$timkiem->url}}" title="{{$timkiem->title}}" target="_blank">{{$timkiem->title}}</a>
          @endforeach

        </p>
      </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-2">
      <div class="f_social">
        <h6>Bảo mật</h6>
        <a title="Bảo mật SSL">
          <img src="{{ asset(SITE_THEME_ASSET.'/images/ssl-icon.png')}}" alt="Bảo mật SSL"/>
        </a>
        <a title="Đã thông báo bộ công thương">
          <img src="{{ asset(SITE_THEME_ASSET.'/images/da-thong-bao-bct.png')}}"
               alt="Bộ công thương"/>
        </a>
        <a title="Liên kết facebook" href="{{ $configsGlobal['facebook'] }}" target="_blank">
          <img src="{{ asset(SITE_THEME_ASSET.'/images/facebook-icon.png')}}" alt="Facebook"/>
        </a>
      </div>
    </div>
  </div>
</div>
<!-- footer ------------------------------->
<div class="loader">
  <div id="loader">
    <ul>
      <li></li>
      <li></li>
      <li></li>
      <li></li>
      <li></li>
      <li></li>
    </ul>
  </div>
</div>
<div id="cart_right">
  <a href="{{route('cart')}}" title="Giỏ hàng của bạn">
    <i class="fas fa-shopping-cart"></i>
    <span>{{ $carts['count'] }}</span>
  </a>
</div>
<div id="bttop" title="Lên đầu trang"></div>
<div class="zalo-chat-widget" data-oaid="2428366237328835967" data-welcome-message="Rất vui khi được hỗ trợ bạn!" data-autopopup="180" data-width="350" data-height="300"></div>

<script src="https://sp.zalo.me/plugins/sdk.js"></script>