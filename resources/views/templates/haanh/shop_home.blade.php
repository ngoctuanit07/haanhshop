@extends(SITE_THEME.'.shop_layout')

@section('center')
    <div id="content" role="main" class="content-area">
        <!--Module banner -->
    @isset ($layouts['banner_top'])
        @foreach ( $layouts['banner_top']  as $layout)
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
    <!--//Module banner -->

        <section class="section section-hao-hang" id="section_89298438">
            <div class="bg section-bg fill bg-fill  bg-loaded">

            </div>
            <!-- .section-bg -->

            <div class="section-content relative">

                <div class="row row-small" id="row-1147867136">
                    <div class="col medium-3 small-6 large-3">
                        <div class="col-inner">

                            <div class="icon-box featured-box icon-box-center text-center">
                                <div class="icon-box-img" style="width: 60px">
                                    <div class="icon">
                                        <div class="icon-inner">
                                            <img width="55" height="55"
                                                 src="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/h1.jpg"
                                                 class="attachment-medium size-medium" alt=""></div>
                                    </div>
                                </div>
                                <div class="icon-box-text last-reset">

                                    <h3 style="text-align: center;">Hảo hạng</h3>
                                    <p style="text-align: center;">Nguyên liệu hảo hạng cùng quy trình hiện đại cho ra
                                        những sản phẩm tốt nhất.</p>
                                </div>
                            </div>
                            <!-- .icon-box -->

                        </div>
                    </div>
                    <div class="col medium-3 small-6 large-3">
                        <div class="col-inner">

                            <div class="icon-box featured-box icon-box-center text-center">
                                <div class="icon-box-img" style="width: 60px">
                                    <div class="icon">
                                        <div class="icon-inner">
                                            <img width="56" height="57"
                                                 src="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/h2.jpg"
                                                 class="attachment-medium size-medium" alt=""></div>
                                    </div>
                                </div>
                                <div class="icon-box-text last-reset">

                                    <h3 style="text-align: center;">Nhanh chóng</h3>
                                    <p style="text-align: center;">Giao hàng trong 3 tiếng trong nội thành và 6 tiếng ở
                                        ngoại thành TP.HCM .</p>
                                </div>
                            </div>
                            <!-- .icon-box -->

                        </div>
                    </div>
                    <div class="col medium-3 small-6 large-3">
                        <div class="col-inner">

                            <div class="icon-box featured-box icon-box-center text-center">
                                <div class="icon-box-img" style="width: 60px">
                                    <div class="icon">
                                        <div class="icon-inner">
                                            <img width="62" height="58"
                                                 src="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/h3.jpg"
                                                 class="attachment-medium size-medium" alt=""></div>
                                    </div>
                                </div>
                                <div class="icon-box-text last-reset">

                                    <h3 style="text-align: center;">Tận tâm</h3>
                                    <p style="text-align: center;">Luôn sẵn sàng tư vấn và phục vụ quý khách hàng mọi
                                        lúc mọi nơi.</p>
                                </div>
                            </div>
                            <!-- .icon-box -->

                        </div>
                    </div>
                    <div class="col medium-3 small-6 large-3">
                        <div class="col-inner">

                            <div class="icon-box featured-box icon-box-center text-center">
                                <div class="icon-box-img" style="width: 60px">
                                    <div class="icon">
                                        <div class="icon-inner">
                                            <img width="52" height="49"
                                                 src="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/h4.jpg"
                                                 class="attachment-medium size-medium" alt=""></div>
                                    </div>
                                </div>
                                <div class="icon-box-text last-reset">

                                    <h3 style="text-align: center;">Ưu Đãi</h3>
                                    <p style="text-align: center;">Rất nhiều chương trình khuyến mãi dành cho khách hàng
                                        thân thiết và đối tác.</p>
                                </div>
                            </div>
                            <!-- .icon-box -->

                        </div>
                    </div>
                    <div class="col medium-3 small-6 large-3">
                        <div class="col-inner">

                            <div class="icon-box featured-box icon-box-center text-center">
                                <div class="icon-box-img" style="width: 60px">
                                    <div class="icon">
                                        <div class="icon-inner">
                                            <img width="61" height="60"
                                                 src="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/h5.jpg"
                                                 class="attachment-medium size-medium" alt=""></div>
                                    </div>
                                </div>
                                <div class="icon-box-text last-reset">

                                    <h3 style="text-align: center;">Đảm bảo</h3>
                                    <p style="text-align: center;">Hà Anh Shop sẽ trả gấp 10 lần nếu phát hiện tinh bột nghệ
                                        không phải nguyên chất.</p>
                                </div>
                            </div>
                            <!-- .icon-box -->

                        </div>
                    </div>

                    <style scope="scope">

                    </style>
                </div>
            </div>
            <!-- .section-content -->

            <style scope="scope">
                #section_89298438 {
                    padding-top: 30px;
                    padding-bottom: 30px;
                }
            </style>
        </section>

        <section class="section section-van-de" id="section_1570925710">
            <div class="bg section-bg fill bg-fill  bg-loaded">

            </div>
            <!-- .section-bg -->

            <div class="section-content relative">

                <div class="row" id="row-1575930131">
                    <div class="col small-12 large-12">
                        <div class="col-inner">
                            <h3 style="text-align: center;"><span style="font-size: 200%; color: #f36f21;">CÓ PHẢI BẠN ĐANG GẶP VẤN ĐỀ SAU?</span>
                            </h3>
                            <div class="div-van-de">
                                <ul class="tve_ul tve_ul2 tve_orange"
                                    style="padding-left: 0px !important; margin-left: 20px !important;">
                                    <li class="ttfm1"><span style="font-size: 100%;">Bạn bị viêm loét dạ dày?</span>
                                    </li>
                                    <li class="ttfm1"><span style="font-size: 100%;">Bạn bị nám, tàn nhang, mụn làm mất đi tự tin?</span>
                                    </li>
                                    <li class="ttfm1"><span style="font-size: 100%;">Bạn vừa mới trải qua cuộc “vượt cạn” và cần F5 lại sức khoẻ, của mình?</span>
                                    </li>
                                    <li class="ttfm1"><span style="font-size: 100%;">Bạn muốn tìm giải pháp phòng chống ung thư hiệu quả?</span>
                                    </li>
                                    <li class="ttfm1"><span style="font-size: 100%;">Bạn muốn có gan, thận khoẻ mạnh, không chất độc?</span>
                                    </li>
                                    <li class="ttfm1"><span style="font-size: 100%;">Bạn muốn chữa trị bệnh viêm khớp thêm hiệu quả?</span>
                                    </li>
                                    <li class="ttfm1"><span style="font-size: 100%;">Bạn muốn lấy lại vóc dáng sau khi sinh?</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- .section-content -->

            <style scope="scope">
                #section_1570925710 {
                    padding-top: 30px;
                    padding-bottom: 30px;
                }
            </style>
        </section>

        <section class="section section-title-cong-dung dark" id="section_1064076692">
            <div class="bg section-bg fill bg-fill  bg-loaded">

            </div>
            <!-- .section-bg -->

            <div class="section-content relative">

                <div class="row" id="row-1727002394">
                    <div class="col small-12 large-12">
                        <div class="col-inner">
                            <h2 style="text-align: center;"><span style="font-size: 140%;">CÔNG DỤNG CỦA TINH BỘT NGHỆ MÀ BẠN PHẢI BIẾT</span>
                            </h2>
                        </div>
                    </div>
                </div>
            </div>
            <!-- .section-content -->

            <style scope="scope">
                #section_1064076692 {
                    padding-top: 30px;
                    padding-bottom: 30px;
                    background-color: rgb(143, 178, 88);
                }
            </style>
        </section>

        <section class="section section-cong-dung" id="section_1867947100">
            <div class="bg section-bg fill bg-fill  bg-loaded">

            </div>
            <!-- .section-bg -->

            <div class="section-content relative">

                <div class="row" id="row-1413137797">
                    <div class="col medium-6 small-12 large-6">
                        <div class="col-inner">

                            <div class="icon-box featured-box icon-box-center text-center">
                                <div class="icon-box-img" style="width: 99px">
                                    <div class="icon">
                                        <div class="icon-inner">
                                            <img width="100" height="100"
                                                 src="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/SANG-DA-DEP.png"
                                                 class="attachment-medium size-medium" alt=""></div>
                                    </div>
                                </div>
                                <div class="icon-box-text last-reset">

                                    <h3 style="text-align: center;">Giúp da sáng đẹp</h3>
                                    <p style="text-align: center;">Củ nghệ đã được ứng dụng làm đẹp từ nhiều thế kỷ
                                        trước. Tinh bột nghệ có tác dụng rất lớn trong điều trị các vấn đề về da như :
                                        điều trị mụn, dưỡng ẩm cho da, giảm nếp nhăn, ngăn ngừa lão hoá, trị rạn
                                        da,…</p>
                                </div>
                            </div>
                            <!-- .icon-box -->

                        </div>
                    </div>
                    <div class="col medium-6 small-12 large-6">
                        <div class="col-inner">

                            <div class="icon-box featured-box icon-box-center text-center">
                                <div class="icon-box-img" style="width: 99px">
                                    <div class="icon">
                                        <div class="icon-inner">
                                            <img width="100" height="100"
                                                 src="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/loet-da-day.png"
                                                 class="attachment-medium size-medium" alt=""></div>
                                    </div>
                                </div>
                                <div class="icon-box-text last-reset">

                                    <h3 style="text-align: center;">Điều trị viêm loét dạ dày</h3>
                                    <p style="text-align: center;"><span
                                                style="color: #f57f1a;"><strong>Curcumin</strong></span> có trong tinh
                                        bột nghệ giúp làm ức chế quá trình bài tiết dịch vị, làm giảm lượng axit trong
                                        dịch vị (nguyên nhân chính gây ra viêm loét dạ dày). Kết hợp với mật ông sẽ giúp
                                        nâng cao khả năng điều tr</p>
                                </div>
                            </div>
                            <!-- .icon-box -->

                        </div>
                    </div>
                    <div class="col medium-6 small-12 large-6">
                        <div class="col-inner">

                            <div class="icon-box featured-box icon-box-center text-center">
                                <div class="icon-box-img" style="width: 99px">
                                    <div class="icon">
                                        <div class="icon-inner">
                                            <img width="100" height="100"
                                                 src="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/giam-can.png"
                                                 class="attachment-medium size-medium" alt=""></div>
                                    </div>
                                </div>
                                <div class="icon-box-text last-reset">

                                    <h3 style="text-align: center;">Hỗ trợ giảm cân</h3>
                                    <p style="text-align: center;">Qua việc giúp cơ thể chuyển hoá chất béo thành năng
                                        lượng, tinh bột nghệ sẽ giúp bạn giảm mỡ thừa qua đó giúp bạn giảm cân một cách
                                        an toàn và lành mạnh. Tinh bột nghệ cũng giúp ngăn chặn đầy hơi…</p>
                                </div>
                            </div>
                            <!-- .icon-box -->

                        </div>
                    </div>
                    <div class="col medium-6 small-12 large-6">
                        <div class="col-inner">

                            <div class="icon-box featured-box icon-box-center text-center">
                                <div class="icon-box-img" style="width: 99px">
                                    <div class="icon">
                                        <div class="icon-inner">
                                            <img width="100" height="100"
                                                 src="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/ngan-ngua-ung-thu.png"
                                                 class="attachment-medium size-medium" alt=""></div>
                                    </div>
                                </div>
                                <div class="icon-box-text last-reset">

                                    <h3 style="text-align: center;">Ngăn ngừa ung thư</h3>
                                    <p style="text-align: center;">Curcumin trong tinh bột nghệ giúp vô hiệu hoá tế bào
                                        ung thư và ngăn chặn khả năng hình thành tế bào ung thư mới. Curcumin còn giúp
                                        cơ thể vô hiệu hoá các gốc tự do và làm chậm quá trình lão hoá.</p>
                                </div>
                            </div>
                            <!-- .icon-box -->

                        </div>
                    </div>
                    <div class="col medium-6 small-12 large-6">
                        <div class="col-inner">

                            <div class="icon-box featured-box icon-box-center text-center">
                                <div class="icon-box-img" style="width: 99px">
                                    <div class="icon">
                                        <div class="icon-inner">
                                            <img width="100" height="100"
                                                 src="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/dieu-tri-benh.png"
                                                 class="attachment-medium size-medium" alt=""></div>
                                    </div>
                                </div>
                                <div class="icon-box-text last-reset">

                                    <h3 style="text-align: center;">Hỗ trợ điều trị bệnh</h3>
                                    <p style="text-align: center;"><strong>Curcumin</strong> có trong<strong> tinh bột
                                            nghệ </strong>giúp giải độc gan hiệu quả, hỗ trợ điều trị xơ gan, viêm gan.
                                        Ngoài ra nó còn giúp giảm các vấn đề tim mạch, các bệnh về não đặc biệt là
                                        Alzheimer. Ngăn chặn và hỗ trợ điều trị tiểu đường….</p>
                                </div>
                            </div>
                            <!-- .icon-box -->

                        </div>
                    </div>
                    <div class="col medium-6 small-12 large-6">
                        <div class="col-inner">

                            <div class="icon-box featured-box icon-box-center text-center">
                                <div class="icon-box-img" style="width: 99px">
                                    <div class="icon">
                                        <div class="icon-inner">
                                            <img width="100" height="100"
                                                 src="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/phu-nu-sau-sinh.png"
                                                 class="attachment-medium size-medium" alt=""></div>
                                    </div>
                                </div>
                                <div class="icon-box-text last-reset">

                                    <h3 style="text-align: center;">Tốt cho phụ nữ sau sinh</h3>
                                    <p style="text-align: center;">Curcumin chống nhiễm khuẩn và giúp vết mổ tầng sinh
                                        môn mau lành. Với khả năng hỗ trợ giảm cân, làm đẹp, ngăn ngừa nám da, tàng
                                        nhang,… tinh bột nghệ xứng đáng là sự lựa chọn số 1 trong việc khôi phục vẽ đẹp
                                        sau sinh cho chị em.</p>
                                </div>
                            </div>
                            <!-- .icon-box -->

                        </div>
                    </div>
                </div>
            </div>
            <!-- .section-content -->

            <style scope="scope">
                #section_1867947100 {
                    padding-top: 30px;
                    padding-bottom: 30px;
                }
            </style>
        </section>

        <section class="section section-title-cong-dung dark" id="section_1929420237">
            <div class="bg section-bg fill bg-fill  bg-loaded">

            </div>
            <!-- .section-bg -->

            <div class="section-content relative">

                <div class="row" id="row-1689326310">
                    <div class="col small-12 large-12">
                        <div class="col-inner">
                            <h2 class="" style="text-align: center;" data-css="tve-u-15f6ca36bc6"><span
                                        style="font-size: 140%;"><strong>NHỮNG SẢN PHẨM CỦA TINH BỘT NGHỆ Hà Anh Shop</strong></span>
                            </h2>
                        </div>
                    </div>
                </div>
            </div>
            <!-- .section-content -->

            <style scope="scope">
                #section_1929420237 {
                    padding-top: 30px;
                    padding-bottom: 30px;
                    background-color: rgb(143, 178, 88);
                }
            </style>
        </section>

        <section class="section section-sp" id="section_906476544">
            <div class="bg section-bg fill bg-fill  bg-loaded">

            </div>
            <!-- .section-bg -->

            <div class="section-content relative">

                <div class="row" id="row-2070377120">
                    <div class="col div-sp-bottom small-12 large-12">
                        <div class="col-inner">
                            <h3 style="text-align: center;" data-css="tve-u-15f6c5454cd"><span
                                        style="font-size: 150%; color: #f36f21;"><strong>TINH BỘT NGHỆ VÀNG</strong></span>
                            </h3>
                            <div class="row" id="row-221221223">
                                <div class="col medium-6 small-12 large-6">
                                    <div class="col-inner">
                                        <div class="img has-hover x md-x lg-x y md-y lg-y" id="image_655924186">
                                            <div class="img-inner dark">
                                                <img width="800" height="800"
                                                     src="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/lon-tinh-bot-nghe-vang-800x800.jpg"
                                                     class="attachment-large size-large" alt=""
                                                     srcset="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/lon-tinh-bot-nghe-vang-800x800.jpg 800w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/lon-tinh-bot-nghe-vang-280x280.jpg 280w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/lon-tinh-bot-nghe-vang-400x400.jpg 400w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/lon-tinh-bot-nghe-vang-768x768.jpg 768w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/lon-tinh-bot-nghe-vang-300x300.jpg 300w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/lon-tinh-bot-nghe-vang-600x600.jpg 600w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/lon-tinh-bot-nghe-vang-100x100.jpg 100w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/lon-tinh-bot-nghe-vang.jpg 1000w"
                                                     sizes="(max-width: 800px) 100vw, 800px">
                                            </div>

                                            <style scope="scope">
                                                #image_655924186 {
                                                    width: 100%;
                                                }
                                            </style>
                                        </div>

                                    </div>
                                </div>
                                <div class="col medium-6 small-12 large-6">
                                    <div class="col-inner">
                                        <p><span style="font-size: 100%;"><strong>Thành Phần</strong>: tinh bột nghệ vàng nguyên chất 100% từ vùng nguyên liệu chuyên canh như : ĐăK LăK, Kon Tum.</span>
                                        </p>
                                        <p><span style="font-size: 100%;"><strong>Hàm Lượng Curcumin:</strong>&nbsp;2 mg/g</span>
                                        </p>
                                        <p><span style="font-size: 100%;">Tinh bột nghệ vàng được Dược Sĩ khuyên dùng trong làm đẹp, làm mặt nạ tinh bột nghệ, điều trị đau dạ dày mới phát sinh.</span>
                                        </p>
                                        <p><span style="font-size: 100%;">Có thể sử dụng tinh bột nghệ vàng làm rất nhiều loại mặt nạ tinh bột nghệ như : mặt nạ tinh bột nghệ sữa, mật ông, sữa chua, trái cây tự nhiện,…</span>
                                        </p>
                                        <p><span style="font-size: 100%;"><strong>Giá khuyến mãi chỉ từ&nbsp;<span
                                                            style="color: #ed1c24;" data-css="tve-u-160d17f7e00">335,000đ/500g</span></strong>
                                        </span>
                                        </p>
                                        <p><span style="font-size: 100%;"><strong>Combo 2 lon 550g :&nbsp;<span
                                                            style="color: #ed1c24;" data-css="tve-u-160d17f63e7">620,000đ</span></strong>
                                        </span>
                                        </p>
                                        <div class="row" id="row-1022707779">
                                            <div class="col small-12 large-12">
                                                <div class="col-inner text-center">
                                                    <a href="#spu-144" target="_self" class="button alert spu-clickable"
                                                       style="border-radius: 99px; cursor: pointer;">
                                                        <span>Đặt hàng ngay</span>
                                                    </a>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- .section-content -->

            <style scope="scope">
                #section_906476544 {
                    padding-top: 30px;
                    padding-bottom: 30px;
                }
            </style>
        </section>

        <section class="section section-sp" id="section_685348083">
            <div class="bg section-bg fill bg-fill  bg-loaded">

            </div>
            <!-- .section-bg -->

            <div class="section-content relative">

                <div class="row" id="row-446504803">
                    <div class="col div-sp-bottom small-12 large-12">
                        <div class="col-inner">
                            <h3 class="" style="text-align: center;" data-css="tve-u-15f6c5454cd"><span
                                        style="font-size: 150%; color: #f36f21;"><strong>TINH BỘT NGHỆ ĐỎ</strong></span>
                            </h3>
                            <div class="row" id="row-1856594723">
                                <div class="col medium-6 small-12 large-6">
                                    <div class="col-inner">
                                        <div class="img has-hover x md-x lg-x y md-y lg-y" id="image_616740649">
                                            <div class="img-inner dark">
                                                <img width="800" height="800"
                                                     src="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/tinh-bot-nghe-do-800x800.jpg"
                                                     class="attachment-large size-large" alt=""
                                                     srcset="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/tinh-bot-nghe-do-800x800.jpg 800w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/tinh-bot-nghe-do-280x280.jpg 280w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/tinh-bot-nghe-do-400x400.jpg 400w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/tinh-bot-nghe-do-768x768.jpg 768w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/tinh-bot-nghe-do-300x300.jpg 300w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/tinh-bot-nghe-do-600x600.jpg 600w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/tinh-bot-nghe-do-100x100.jpg 100w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/tinh-bot-nghe-do.jpg 1000w"
                                                     sizes="(max-width: 800px) 100vw, 800px">
                                            </div>

                                            <style scope="scope">
                                                #image_616740649 {
                                                    width: 100%;
                                                }
                                            </style>
                                        </div>

                                    </div>
                                </div>
                                <div class="col medium-6 small-12 large-6">
                                    <div class="col-inner">
                                        <p><span style="font-size: 100%;"><strong>Thành Phần</strong>: tinh bột nghệ đỏ 100% Kon Tum.</span>
                                        </p>
                                        <p><span style="font-size: 100%;"><strong>Hàm lượng Curcumin</strong>: 10 mg/g (cao gấp 4 lần TBN vàng)</span>
                                        </p>
                                        <p><span style="font-size: 100%;">Tinh bột nghệ đỏ Hà Anh Shop thích hợp trong mọi trường hợp từ làm đẹp da, làm mặt nạ tinh bột nghệ, hỗ trợ điều trị đau dạ dày, viêm dạ dày mãn từ nhẹ đến mãn tính, khớp, tim mạch, hỗ trợ trí não. Đặc biệt ngừa ung thư rất tốt.</span>
                                        </p>
                                        <p><span style="font-size: 100%;"><strong>+ Giá khuyến mãi&nbsp;</strong><strong>chỉ từ&nbsp;<span
                                                            style="color: #ed1c24;">550,000đ/500g&nbsp;</span>(miễn phí vận chuyển nội thành HCM)</strong>
                                        </span>
                                        </p>
                                        <p><span style="font-size: 100%;"><strong>+ Mua&nbsp;<span
                                                            style="color: #ed1c24;">1kg giá 990,000đ&nbsp;​</span></strong>
                                        </span>
                                        </p>
                                        <p>
                                            <span style="font-size: 100%;"><strong>+ MIỄN PHÍ vận chuyển toàn quốc</strong></span>
                                        </p>
                                        <div class="row" id="row-1770767764">
                                            <div class="col small-12 large-12">
                                                <div class="col-inner text-center">
                                                    <a href="#spu-144" target="_self" class="button alert spu-clickable"
                                                       style="border-radius: 99px; cursor: pointer;">
                                                        <span>Đặt hàng ngay</span>
                                                    </a>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- .section-content -->

            <style scope="scope">
                #section_685348083 {
                    padding-top: 30px;
                    padding-bottom: 30px;
                }
            </style>
        </section>

        <section class="section section-sp" id="section_1842207680">
            <div class="bg section-bg fill bg-fill  bg-loaded">

            </div>
            <!-- .section-bg -->

            <div class="section-content relative">

                <div class="row" id="row-1796603791">
                    <div class="col div-sp-bottom small-12 large-12">
                        <div class="col-inner">
                            <h3 class="" style="text-align: center;" data-css="tve-u-15f6c5454cd"><span
                                        style="font-size: 150%; color: #f36f21;"><strong>NANO CURCUMIN</strong></span>
                            </h3>
                            <div class="row" id="row-793289244">
                                <div class="col medium-6 small-12 large-6">
                                    <div class="col-inner">
                                        <div class="img has-hover x md-x lg-x y md-y lg-y" id="image_1019509551">
                                            <div class="img-inner dark">
                                                <img width="800" height="800"
                                                     src="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/lon-tinh-bot-nghe-sieu-hap-thu-800x800.jpg"
                                                     class="attachment-large size-large" alt=""
                                                     srcset="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/lon-tinh-bot-nghe-sieu-hap-thu-800x800.jpg 800w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/lon-tinh-bot-nghe-sieu-hap-thu-280x280.jpg 280w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/lon-tinh-bot-nghe-sieu-hap-thu-400x400.jpg 400w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/lon-tinh-bot-nghe-sieu-hap-thu-768x768.jpg 768w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/lon-tinh-bot-nghe-sieu-hap-thu-300x300.jpg 300w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/lon-tinh-bot-nghe-sieu-hap-thu-600x600.jpg 600w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/lon-tinh-bot-nghe-sieu-hap-thu-100x100.jpg 100w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/lon-tinh-bot-nghe-sieu-hap-thu.jpg 1000w"
                                                     sizes="(max-width: 800px) 100vw, 800px">
                                            </div>

                                            <style scope="scope">
                                                #image_1019509551 {
                                                    width: 100%;
                                                }
                                            </style>
                                        </div>

                                        <p><strong>Nano Curcumin&nbsp;</strong>được khuyên dùng trong hỗ trợ điều trị
                                            ung thư, khớp, tim mạch, gan, phổi, hỗ trợ trí não… Chống oxy hoá cơ thể,
                                            ngăn ngừa lão hoá.</p>
                                    </div>
                                </div>
                                <div class="col medium-6 small-12 large-6">
                                    <div class="col-inner">
                                        <div class="tcb-flex-col">
                                            <div class="tcb-col tve_empty_dropzone">
                                                <div class="thrv_wrapper thrv_text_element tve_empty_dropzone">
                                                    <p>
                                                        <span style="font-size: 100%;"><strong>Nano Curcumin&nbsp;</strong>được khuyên dùng trong hỗ trợ điều trị ung thư, khớp, tim mạch, gan, phổi, hỗ trợ trí não… Chống oxy hoá cơ thể, ngăn ngừa lão hoá.</span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tcb-flex-col">
                                            <div class="tcb-col tve_empty_dropzone">
                                                <div class="thrv_wrapper thrv_text_element tve_empty_dropzone">
                                                    <p><span style="font-size: 100%;"><strong>Thành Phần</strong>: Curcumin tinh khiết, tinh bột nghệ đỏ nguyên chất, Piperine và&nbsp;<strong>Nano Curcumin</strong>.</span>
                                                    </p>
                                                    <p>
                                                        <span style="font-size: 100%;"><strong>Hàm Lượng Curcumin</strong>: 40 mg/g (gấp 20 lần TBN vàng)</span>
                                                    </p>
                                                    <p><span style="font-size: 100%;">Sự kết hợp hoàn hảo&nbsp;<strong>Piperine&nbsp;</strong>và&nbsp;<strong>Curcumin&nbsp;</strong>tinh khiết giúp tăng khả năng hấp thu và giảm khả năng đào thải Curcumin trong máu. Tặng khả năng hấp thu so với tinh bột nghệ thường lên đến&nbsp;<strong>2000%</strong></span>
                                                    </p>
                                                    <p><span style="font-size: 100%;"><strong>+ Giá niêm yết&nbsp;<s>1,500,000</s>&nbsp;nay khuyến mãi chỉ<span
                                                                        style="color: #ed1c24;">&nbsp;</span></strong><span
                                                                    style="color: #ed1c24;"><strong>800,000đ</strong></span><strong>&nbsp;hộp<span
                                                                        style="color: #ed1c24;">&nbsp;250g.</span></strong></span>
                                                    </p>
                                                    <p><span style="font-size: 100%;">​<strong>+&nbsp;Mua 2 lon :<span
                                                                        style="color: #ed1c24;">&nbsp;1,600,000đ&nbsp;</span></strong>
                                                    </span>
                                                    </p>
                                                    <p data-css="tve-u-160d17df403"><span
                                                                style="font-size: 100%;"><strong>+&nbsp;Mua 3 lon :&nbsp;<span
                                                                        style="color: #ed1c24;">2,300,000đ</span></strong>
                                                    </span>
                                                    </p>
                                                    <p><span style="font-size: 100%;">​<strong>+ Mua 4 lon :&nbsp;<span
                                                                        style="color: #ed1c24;"
                                                                        data-css="tve-u-160d17dc37a">2,990,000đ</span></strong>
                                                    </span>
                                                    </p>
                                                    <p><span style="font-size: 100%;"><strong>+ MIỄN PHÍ vận chuyển toàn quốc</strong></span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row" id="row-67932661">
                                            <div class="col small-12 large-12">
                                                <div class="col-inner text-center">
                                                    <a href="#spu-144" target="_self" class="button alert spu-clickable"
                                                       style="border-radius: 99px; cursor: pointer;">
                                                        <span>Đặt hàng ngay</span>
                                                    </a>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- .section-content -->

            <style scope="scope">
                #section_1842207680 {
                    padding-top: 30px;
                    padding-bottom: 30px;
                }
            </style>
        </section>
        <section class="section section-ly-do dark" id="section_1783525081">
            <div class="bg section-bg fill bg-fill  bg-loaded">

            </div>
            <!-- .section-bg -->

            <div class="section-content relative">

                <div class="row" id="row-1440421334">
                    <div class="col small-12 large-12">
                        <div class="col-inner">
                            <div class="thrv_wrapper thrv_text_element tve_empty_dropzone" data-css="tve-u-15f6ca3d964">
                                <h3 style="text-align: center;" data-css="tve-u-15f6ca36bc6"><span
                                            style="font-size: 150%;"><strong>✹LÝ DO NÊN MUA HÀNG TẠI TINH BỘT NGHỆ Hà Anh Shop✹</strong></span>
                                </h3>
                            </div>
                            <div class="list-li-do" data-icon-code="icon-check">
                                <ul class="tcb-styled-list">
                                    <li class="thrv-styled-list-item">
                                        <p>
                                            <span class="tve_editable tcb-styled-list-icon-text tcb-no-delete thrv-advanced-inline-text"
                                                  data-css="tve-u-15f6cdb0ba9"><strong>Tinh bột nghệ Hà Anh Shop – Sạch , Nguyên Chất 100%: tinh bột nghệ Hà Anh Shop&nbsp;</strong>được sản xuất khép kín với thiết bị hiện đại với yêu cầu khắt khe về<strong>&nbsp;VSATTP.&nbsp;</strong>Được phòng thí nghiệm<strong>&nbsp;Đại Học Khoa Học Tự Nhiên&nbsp;</strong>chứng nhận<strong>&nbsp;nguyên chất 100% và không có tạp chất có hại&nbsp;</strong>cho cơ thể.</span>
                                        </p>
                                    </li>
                                    <li class="thrv-styled-list-item">
                                        <p>
                                            <span class="tve_editable tcb-styled-list-icon-text tcb-no-delete thrv-advanced-inline-text"
                                                  data-css="tve-u-15f6cdb012d"><strong>Sử dụng Tinh Bột Nghệ Hà Anh Shop không bị nó<span
                                                            data-css="tve-u-15f6cd70a30">n</span>g</strong>&nbsp;: TBN Hà Anh Shop loại bỏ hoàn toàn dầu nghệ ( một chất có hại cho gan), loại bỏ hoàn toàn nhựa và tạp chất nên khi uống sẽ không bị nóng.</span>
                                        </p>
                                    </li>
                                    <li class="thrv-styled-list-item">
                                        <p>
                                            <span class="tve_editable tcb-styled-list-icon-text tcb-no-delete thrv-advanced-inline-text"
                                                  data-css="tve-u-15f6cdab69a"><strong>Tinh Bột Nghệ Hà Anh Shop có giá rẻ nhất thị trường hiện nay</strong>: Curcumin chính là thành phần quan trọng nhất trong tinh bột nghệ, tinh bột nghệ Hà Anh Shop có hàm lượng Curcumin đến 8mg/g (TBN đỏ) 40mg/g (Nano Curcumin) cao gấp 10 lần so với tinh bột nghệ ngoài thị trường. Với giả chỉ bằng 1/5 tinh bột nghệ thông thường có cùng hàm lượng Curcumin.</span>
                                        </p>
                                    </li>
                                    <li class="thrv-styled-list-item">
                                        <p>
                                            <span class="tve_editable tcb-styled-list-icon-text tcb-no-delete thrv-advanced-inline-text"
                                                  data-css="tve-u-15f6cdac461"><strong>An Toàn cho Sức Khoẻ</strong>&nbsp;: Tinh bột nghệ Hà Anh Shop được Viện ICOME chúng nhận Curcumin tự nhiên nguyên chất 100%, được ĐH KHTN chứng nhận sản phẩm không chứa tạp chất, hàm lượng Curcumin cao.</span>
                                        </p>
                                    </li>
                                    <li class="thrv-styled-list-item">
                                        <p>
                                            <span class="tve_editable tcb-styled-list-icon-text tcb-no-delete thrv-advanced-inline-text"
                                                  data-css="tve-u-15f6cdadc56"><strong>Bảo Quản Tốt Nhất&nbsp;</strong>: Curcumin sẽ bị phân huỷ dưới ánh nắng mặt trời làm giảm tác dụng đáng kể của tinh bột nghệ. Chính vì thế Hà Anh Shop đã sử dụng lon thiết trong khâu đóng gói sản phẩm nhằm giữ được hàm lượng Curcumin cao nhất và bảo quản lâu nhất.</span>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- .section-content -->

            <style scope="scope">
                #section_1783525081 {
                    padding-top: 30px;
                    padding-bottom: 30px;
                    background-color: #7a9c59;
                }
            </style>
        </section>

        <section class="section" id="section_301679453">
            <div class="bg section-bg fill bg-fill  bg-loaded">

            </div>
            <!-- .section-bg -->

            <div class="section-content relative">

                <div class="row" id="row-993516375">
                    <div class="col medium-6 small-12 large-6">
                        <div class="col-inner">
                            <div class="box has-hover has-hover box-text-bottom">

                                <div class="box-image" style="width:81%;">
                                    <div class="">
                                        <img width="1000" height="750"
                                             src="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/nguyen-lieu-tinh-bot-nghe.jpg"
                                             class="attachment- size-" alt=""
                                             srcset="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/nguyen-lieu-tinh-bot-nghe.jpg 1000w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/nguyen-lieu-tinh-bot-nghe-533x400.jpg 533w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/nguyen-lieu-tinh-bot-nghe-768x576.jpg 768w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/nguyen-lieu-tinh-bot-nghe-600x450.jpg 600w"
                                             sizes="(max-width: 1000px) 100vw, 1000px"></div>
                                </div>
                                <!-- box-image -->

                                <div class="box-text text-center">
                                    <div class="box-text-inner">

                                        <h3 class="tve_p_center bold_text ttfm1" style="text-align: center;"
                                            data-unit="px"><span class="tve_custom_font_size"><span
                                                        style="color: #f57e20;">NGUYÊN LIỆU NGOẠI HẠNG</span></span>
                                        </h3>
                                        <p class="ttfm1" data-unit="px">Nguyên liệu sản xuất THƯỢNG HẠNG từ vùng núi
                                            Đăklak, Hưng Yên, Nghệ An,…</p>
                                    </div>
                                    <!-- box-text-inner -->
                                </div>
                                <!-- box-text -->
                            </div>
                            <!-- .box  -->

                        </div>
                    </div>
                    <div class="col medium-6 small-12 large-6">
                        <div class="col-inner">
                            <div class="box has-hover has-hover box-text-bottom">

                                <div class="box-image" style="width:81%;">
                                    <div class="">
                                        <img width="1000" height="750"
                                             src="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/nguyen-lieu-tinh-bot-nghe.jpg"
                                             class="attachment- size-" alt=""
                                             srcset="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/nguyen-lieu-tinh-bot-nghe.jpg 1000w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/nguyen-lieu-tinh-bot-nghe-533x400.jpg 533w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/nguyen-lieu-tinh-bot-nghe-768x576.jpg 768w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/nguyen-lieu-tinh-bot-nghe-600x450.jpg 600w"
                                             sizes="(max-width: 1000px) 100vw, 1000px"></div>
                                </div>
                                <!-- box-image -->

                                <div class="box-text text-center">
                                    <div class="box-text-inner">

                                        <h3 class="tve_p_center bold_text ttfm1" style="text-align: center;"
                                            data-unit="px"><span class="tve_custom_font_size"><span
                                                        style="color: #f57e20;">NGUYÊN LIỆU NGOẠI HẠNG</span></span>
                                        </h3>
                                        <p class="ttfm1" data-unit="px">Nguyên liệu sản xuất THƯỢNG HẠNG từ vùng núi
                                            Đăklak, Hưng Yên, Nghệ An,…</p>
                                    </div>
                                    <!-- box-text-inner -->
                                </div>
                                <!-- box-text -->
                            </div>
                            <!-- .box  -->

                        </div>
                    </div>
                </div>
                <div class="row" id="row-2029095148">
                    <div class="col medium-6 small-12 large-6">
                        <div class="col-inner">
                            <div class="thrv_wrapper thrv_text_element tve_empty_dropzone">
                                <h3 class="tve_p_center ttfm1" style="text-align: center;" data-unit="px"><span
                                            class="bold_text ttfm1"><span class="tve_custom_font_sizerft"><span
                                                    style="color: #f57e20;">Quy trình sản xuất khép kín</span></span></span>
                                </h3>
                                <p data-unit="px"><span class="tve_custom_font_size">Quy trình sản xuất khép kín, sử dụng công nghệ cao nhằm kiểm soát chất lượng thành phẩm, đảm bảo lượng Curcumin và an toàn cho người sử dụng.</span>
                                </p>
                            </div>
                            <div class="thrv_wrapper thrv_bullets_shortcode thrv_text_element tve_empty_dropzone">
                                <ul class="tve_ul tve_ul2 tve_orange">
                                    <li class="" data-unit="px"><span class="tve_custom_font_size">Máy nghiền giúp tinh bột nghệ siêu mịn như phấn</span>
                                    </li>
                                    <li class="" data-unit="px"><span class="tve_custom_font_size">Máy ly tâm loại bỏ tập chất, kim loại nặng có hại cho sức khoẻ</span>
                                    </li>
                                    <li class="" data-unit="px"><span class="tve_custom_font_size">Phòng lạnh sấy khô giúp bảo quản tinh bột nghệ được lâu hơn</span>
                                    </li>
                                </ul>
                            </div>
                            <div class="thrv_wrapper thrv_text_element tve_empty_dropzone">
                                <p data-unit="px"><span class="tve_custom_font_size">Quy trình luôn được Dược Sỹ kiểm tra chặt chẽ</span>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col medium-6 small-12 large-6">
                        <div class="col-inner">
                            <div class="img has-hover x md-x lg-x y md-y lg-y" id="image_806980489">
                                <div class="img-inner dark">
                                    <img width="1000" height="667"
                                         src="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/may-lam-lanh.jpg"
                                         class="attachment-large size-large" alt=""
                                         srcset="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/may-lam-lanh.jpg 1000w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/may-lam-lanh-600x400.jpg 600w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/may-lam-lanh-768x512.jpg 768w"
                                         sizes="(max-width: 1000px) 100vw, 1000px">
                                </div>

                                <style scope="scope">
                                    #image_806980489 {
                                        width: 100%;
                                    }
                                </style>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!-- .section-content -->

            <style scope="scope">
                #section_301679453 {
                    padding-top: 30px;
                    padding-bottom: 30px;
                    background-color: rgb(244, 244, 218);
                }
            </style>
        </section>

        <section class="section" id="section_1961432482">
            <div class="bg section-bg fill bg-fill  bg-loaded">

            </div>
            <!-- .section-bg -->

            <div class="section-content relative">
                <div class="row" id="row-1863885879">
                    <div class="col small-12 large-12">
                        <div class="col-inner text-center">
                            <h3 style="text-align: center;"><span style="font-size: 150%; color: #f36f21;">ĐẶC BIỆT CHỈ CÒN 38 SUẤT TRONG TUẦN NÀY</span>
                            </h3>
                            <div class="img has-hover x md-x lg-x y md-y lg-y" id="image_1690075444">
                                <div class="img-inner dark">
                                    <img width="800" height="500"
                                         src="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/tinh-bot-nghe-an-binh-khuyen-mai-tet.jpg"
                                         class="attachment-original size-original" alt=""
                                         srcset="http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/tinh-bot-nghe-an-binh-khuyen-mai-tet.jpg 800w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/tinh-bot-nghe-an-binh-khuyen-mai-tet-640x400.jpg 640w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/tinh-bot-nghe-an-binh-khuyen-mai-tet-768x480.jpg 768w, http://tinhbotnghe.giaodienwebmau.com/wp-content/uploads/2018/05/tinh-bot-nghe-an-binh-khuyen-mai-tet-600x375.jpg 600w"
                                         sizes="(max-width: 800px) 100vw, 800px">
                                </div>

                                <style scope="scope">
                                    #image_1690075444 {
                                        width: 82%;
                                    }
                                </style>
                            </div>

                            <div class="row row-dem-nguoc" id="row-384933021">
                                <div class="col medium-4 small-12 large-4">
                                    <div class="col-inner">
                                        <div id="timer-118439733" class="ux-timer dark" data-text-plural="s"
                                             data-text-hour="giờ" data-text-day="Ngày" data-text-week="week"
                                             data-text-min="Phút" data-text-sec="giây" data-text-hour-p="Giờ"
                                             data-text-day-p="Ngày" data-text-week-p="" data-text-min-p="Phút"
                                             data-text-sec-p="Giây" data-countdown="2018/5/27 18:00">
                                            <span>0<strong>Giờ</strong></span><span>0<strong>Phút</strong></span><span>0<strong>Giây</strong></span>
                                        </div>
                                        <style scope="scope">
                                            #timer-118439733 {
                                                font-size: 224%;
                                            }
                                        </style>

                                        <a href="#spu-144" target="_self" class="button primary spu-clickable"
                                           style="cursor: pointer;">
                                            <span>ĐẶT HÀNG NGAY</span>
                                        </a>

                                    </div>
                                </div>

                                <style scope="scope">

                                </style>
                            </div>
                            <div class="row row-collapse row-divided row-gia-ca" id="row-1216301677">
                                <div class="col medium-4 small-12 large-4">
                                    <div class="col-inner">
                                        <div class="pricing-table-wrapper">
                                            <div class="pricing-table ux_price_table text-center box-shadow-3-hover">
                                                <div class="pricing-table-header">
                                                    <div class="title uppercase strong">Title</div>
                                                    <div class="price is-xxlarge">$99.99</div>
                                                </div>
                                                <div class="pricing-table-items items">

                                                    <p><span style="font-size: 130%;">TINH BỘT NGHỆ VÀNG</span></p>
                                                    <p style="text-align: center;"><span style="font-size: 140%;">335,000đ/500g</span>
                                                    </p>
                                                    <p class="gia-goc">Giá gốc: 610,000 đ/500gr</p>
                                                    <a href="#spu-144" target="_self" class="button alert spu-clickable"
                                                       style="cursor: pointer;">
                                                        <span>Đặt mua ngay</span>
                                                    </a>

                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="col div-gia-giua medium-4 small-12 large-4">
                                    <div class="col-inner">
                                        <div class="pricing-table-wrapper">
                                            <div class="pricing-table ux_price_table text-center box-shadow-1 box-shadow-3-hover">
                                                <div class="pricing-table-header">
                                                    <div class="title uppercase strong">Title</div>
                                                    <div class="price is-xxlarge">$99.99</div>
                                                </div>
                                                <div class="pricing-table-items items">

                                                    <p><span style="font-size: 130%;">TINH BỘT NGHỆ ĐỎ</span></p>
                                                    <p><span style="font-size: 130%;">(Khuyên dùng)</span></p>
                                                    <p><span style="font-size: 140%;">550,000đ/500g</span></p>
                                                    <p class="gia-goc">Giá gốc: 1,110,000 đ/500gr</p>
                                                    <a href="#spu-144" target="_self" class="button alert spu-clickable"
                                                       style="cursor: pointer;">
                                                        <span>Đặt mua ngay</span>
                                                    </a>

                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="col medium-4 small-12 large-4">
                                    <div class="col-inner">
                                        <div class="pricing-table-wrapper">
                                            <div class="pricing-table ux_price_table text-center box-shadow-3-hover">
                                                <div class="pricing-table-header">
                                                    <div class="title uppercase strong">Title</div>
                                                    <div class="price is-xxlarge">$99.99</div>
                                                </div>
                                                <div class="pricing-table-items items">

                                                    <p><span style="font-size: 130%;">TBN SIÊU HẤP THỤ</span></p>
                                                    <p><span style="font-size: 140%;">800,000đ/250g</span></p>
                                                    <p class="gia-goc">Giá gốc: 1,500,000 đ/250gr</p>
                                                    <a href="#spu-144" target="_self" class="button alert spu-clickable"
                                                       style="cursor: pointer;">
                                                        <span>Đặt mua ngay</span>
                                                    </a>

                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <style scope="scope">

                                </style>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row row-ban-do row-box-shadow-1-hover" id="row-1741406174">
                    <div class="col small-12 large-12">
                        <div class="col-inner">
                            <p>
                                <iframe src="{{ $configsGlobal['google_map'] }}"
                                        width="100%" height="450" frameborder="0" style="border:0"
                                        allowfullscreen=""></iframe>
                            </p>
                        </div>
                    </div>

                    <style scope="scope">

                    </style>
                </div>
            </div>
            <!-- .section-content -->
        </section>
    </div>


@endsection



@push('styles')
@endpush

@push('scripts')

@endpush
