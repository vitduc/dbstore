@extends('frontend.layouts.master')
@section('Content')

<div id="magik-slideshow" class="magik-slideshow">
    <div class="wow">
        <div id='rev_slider_4_wrapper' class='rev_slider_wrapper fullwidthbanner-container'>
            <div id='rev_slider_4' class='rev_slider fullwidthabanner'>
                <ul>
                    <li data-transition='random' data-slotamount='7' data-masterspeed='1000' data-thumb='images/slider_img_1.html'><img src='{{asset('frontend/images/slide-img11.jpg')}}' data-bgposition='left top' data-bgfit='cover' data-bgrepeat='no-repeat' alt="banner" />
                        <div class='tp-caption ExtraLargeTitle sft  tp-resizeme ' data-x='15' data-y='80' data-endspeed='500' data-speed='500' data-start='1100' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:2; white-space:nowrap;'>Giảm giá</div>
                        <div class='tp-caption LargeTitle sfl  tp-resizeme ' data-x='15' data-y='135' data-endspeed='500' data-speed='500' data-start='1300' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:3; white-space:nowrap;'>Big <span>Sale</span></div>
                        <div class='tp-caption sfb  tp-resizeme ' data-x='15' data-y='360' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;'><a href='#' class="view-more">Xem thêm</a> <a href='{{Route('product')}}' class="buy-btn">Mua sắm ngay</a></div>
                        <div class='tp-caption Title sft  tp-resizeme ' data-x='15' data-y='230' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;'>Hãy chọn một món đồ phù hợp nhất với bạn.</div>
                        <div class='tp-caption Title sft  tp-resizeme ' data-x='15' data-y='400' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;font-size:11px'>Chúng tôi cung cấp tất cả các sản phẩm điện tử chính hãng</div>
                    </li>
                    <li data-transition='random' data-slotamount='7' data-masterspeed='1000' data-thumb='images/slider_img_2.jpg' class="black-text"><img src='{{asset('frontend/images/slide-img02.jpg')}}' data-bgposition='left top' data-bgfit='cover' data-bgrepeat='no-repeat' alt="banner" />
                        <div class='tp-caption ExtraLargeTitle sft  tp-resizeme ' data-x='15' data-y='80' data-endspeed='500' data-speed='500' data-start='1100' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:2; white-space:nowrap;'>Lựa chọn</div>
                        <div class='tp-caption LargeTitle sfl  tp-resizeme ' data-x='15' data-y='135' data-endspeed='500' data-speed='500' data-start='1300' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:3; white-space:nowrap;'><span>Chiếc</span> Laptop</div>
                        <div class='tp-caption sfb  tp-resizeme ' data-x='15' data-y='360' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;'><a href='#' class="view-more">Xem thêm</a> <a href='{{Route('product')}}' class="buy-btn">Mua săm ngay</a></div>
                        <div class='tp-caption Title sft  tp-resizeme ' data-x='15' data-y='230' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;'>Hỗ trợ tốt nhất cho công việc của bạn.</div>
                        <div class='tp-caption Title sft  tp-resizeme ' data-x='15' data-y='400' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;font-size:11px'>Liên hệ với chúng tôi để được hỗ trợ tốt nhất.</div>
                    </li>
                </ul>
                <div class="tp-bannertimer"></div>
            </div>
        </div>
    </div>
</div>

<div class="header-service">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="content">
                    <div class="icon-truck">&nbsp;</div>
                    <span><strong>Miễn phí vận chuyển</strong><br> cho đơn hàng trên 2 triệu</span>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="content">
                    <div class="icon-support">&nbsp;</div>
                    <span><strong>Hỗ trợ khách hàng</strong><br>trong giờ hành chính</span>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="content">
                    <div class="icon-money">&nbsp;</div>
                    <span><strong>Đổi trả trong 30 ngày</strong><br>nếu có lỗi của nhà sản xuất</span>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="content">
                    <div class="icon-dis">&nbsp;</div>
                    <span><strong class="orange">Giảm 5% cho đơn trên 5 triệu</strong></span>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="offer-banner-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-xs-12 col-md-4 col-sm-4 wow"><a href="#"><img alt="offer banner1" src="{{asset('frontend/images/dt.jpg')}}" width="372px" height="280px"></a></div>
            <div class="col-lg-4 col-xs-12 col-md-4 col-sm-4 wow"><a href="#"><img alt="offer banner1" src="{{asset('frontend/images/aab.jpg')}}" width="372px" height="280px"></a></div>
            <div class="col-lg-4 col-xs-12 col-md-4 col-sm-4 wow"><a href="#"><img alt="offer banner1" src="{{asset('frontend/images/loa.jpg')}}" width="372px" height="280px"></a></div>
        </div>
    </div>
</div>

<section class="main-container col1-layout home-content-container">
    <div class="container">
        <div class="row">
            <div class="std">
                <div class="col-lg-8 col-xs-12 col-sm-8 best-seller-pro wow">
                    <div class="slider-items-products">
                        <div class="new_title center">
                            <h2>Sản phẩm mới</h2>
                        </div>
                        <div id="best-seller-slider" class="product-flexslider hidden-buttons">
                            <div class="slider-items slider-width-col4">
                                @foreach ($data as $item)
                                <div class="item">
                                    <div class="col-item">
                                        <div class="images-container"> <a class="product-image" title="{{$item->name_product}}" href="{{Route('product_detail', $item->id)}}"> <img src="{{url('upload')}}/{{$item->image}}" class="img-responsive" alt="product-image" /> </a>
                                            <div class="actions">
                                                <div class="actions-inner">
                                                    <button type="button" title="Thêm sản phẩm vào giỏ hàng" class="button btn-cart"><span>Thêm giỏ hàng</span></button>
                                                    <ul class="add-to-links">
                                                        <li><a href="wishlist.html" title="Thêm vào danh sách yêu thích" class="link-wishlist"><span>Add to Wishlist</span></a></li>
                                                        <li><a href="compare.html" title="Thêm vào đánh giá" class="link-compare "><span>Add to Compare</span></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="qv-button-container"> <a href="quick_view.html" class="qv-e-button btn-quickview-1"><span><span>Xem nhanh</span></span></a> </div>
                                        </div>
                                        <div class="info">
                                            <div class="info-inner">
                                                <div class="item-title"> <a title="{{$item->name_product}}" href="product_detail.html">{{$item->name_product}}</a> </div>
                                                <div class="item-content">
                                                    <div class="ratings">
                                                        <div class="rating-box">
                                                            <div style="width:60%" class="rating"></div>
                                                        </div>
                                                    </div>
                                                    <div class="price-box">
                                                        <p class="special-price"> <span class="price">{{number_format($item->price_sale)}} đ</span> </p><br>
                                                        <p class="old-price"> <span class="price-sep">-</span> <span class="price">{{number_format($item->price)}} đ</span> </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-xs-12 col-sm-4 wow latest-pro small-pr-slider">
                    <div class="slider-items-products">
                        <div class="new_title center">
                            <h2>Phụ kiện</h2>
                        </div>
                        <div id="latest-deals-slider" class="product-flexslider hidden-buttons latest-item">
                            <div class="slider-items slider-width-col4">
                              @foreach ($data_pk as $item)
                              <div class="item">
                                  <div class="col-item">
                                      <div class="images-container"> <a class="product-image" href="{{Route('product_detail', $item->id)}}"> <img src="{{url('upload')}}/{{$item->image}}" class="img-responsive" alt="product-image" /> </a>
                                          <div class="actions">
                                              <div class="actions-inner">
                                                  <ul class="add-to-links">
                                                      <li><a href="wishlist.html" title="Thêm vào mục yêu thích" class="link-wishlist"><span>Add to Wishlist</span></a></li>
                                                      <li><a href="compare.html" title="Thêm vào đánh giá" class="link-compare "><span>Add to Compare</span></a></li>
                                                  </ul>
                                              </div>
                                          </div>
                                          <div class="qv-button-container"> <a href="#" class="qv-e-button btn-quickview-1"><span><span>Quick View</span></span></a></div>
                                      </div>
                                      <div class="info">
                                          <div class="info-inner">
                                              <div class="item-title"> <a title="{{$item->name_product}}" href="{{Route('product_detail', $item->id)}}">{{$item->name_product}}</a> </div>
                                              <div class="item-content">
                                                  <div class="ratings">
                                                      <div class="rating-box">
                                                          <div style="width:60%" class="rating"></div>
                                                      </div>
                                                  </div>
                                                  <div class="price-box">
                                                      <p class="special-price"> <span class="price">{{number_format($item->price_sale)}}</span> </p><br>
                                                      <p class="old-price"> <span class="price-sep">-</span> <span class="price"> {{number_format($item->price)}} </span> </p>
                                                  </div>
                                              </div>
                                          </div>
                                          <div class="actions">
                                              <button class="button btn-cart" title="Thêm sản phẩm vào giỏ hàng" type="button"><span>Mua</span></button>
                                          </div>
                                          <div class="clearfix"> </div>
                                      </div>
                                  </div>
                              </div>
                              @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="recommend container">
    <div class="new-pro-slider small-pr-slider" style="overflow:visible">
        <div class="slider-items-products">
            <div class="new_title center">
                <h2>Sản phẩm nổi bật</h2>
            </div>
            <div id="recommend-slider" class="product-flexslider hidden-buttons">
                <div class="slider-items slider-width-col3">
                    @foreach ($sp_hot as $item)
                    <div class="item">
                        <div class="col-item">
                            <div class="images-container"> <a class="product-image" href="{{Route('product_detail', $item->id)}}"> <img src="{{url('upload')}}/{{$item->image}}" class="img-responsive" alt="a" /> </a>
                                <div class="actions">
                                    <div class="actions-inner">
                                        <ul class="add-to-links">
                                            <li><a href="wishlist.html" title="Thêm vào mục yêu thích" class="link-wishlist"><span>Add to Wishlist</span></a></li>
                                            <li><a href="compare.html" title="Thêm vào đánh giá" class="link-compare "><span>Add to Compare</span></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="qv-button-container"> <a href="quick_view.html" class="qv-e-button btn-quickview-1"><span><span>Quick View</span></span></a> </div>
                            </div>
                            <div class="info">
                                <div class="info-inner">
                                    <div class="item-title"> <a title="{{$item->name_product}}" href="product_detail.html">{{$item->name_product}}</a> </div>
                                    <div class="item-content">
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <div style="width:60%" class="rating"></div>
                                            </div>
                                        </div>
                                        <div class="price-box">
                                            <p class="special-price"> <span class="price">{{number_format($item->price_sale)}} đ</span> </p><br>
                                            <p class="old-price"> <span class="price-sep">-</span> <span class="price">{{number_format($item->price)}} đ</span> </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="actions">
                                    <button type="button" title="Thêm sản phẩm vào giỏ hàng" class="button btn-cart"><span>Thêm giỏ hàng</span></button>
                                </div>
                                <!--actions-->
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>

<div class="top-offer-banner wow">
    <div class="container">
        <div class="row">
            <div class="offer-inner col-lg-12">
                <div class="left">
                    <div class="col-1">
                        <div class="block-subscribe">
                            <div class="newsletter">
                                <form>
                                    <h4><span>Theo dõi bản tin</span></h4>
                                    <h5>Nhận tin tức và cập nhật mới nhất từ DStore</h5>
                                    <input type="text" placeholder="Nhập địa chỉ email của bạn" class="input-text required-entry validate-email" title="Sign up for our newsletter" id="newsletter1" name="email">
                                    <button class="subscribe" title="Subscribe" type="submit"><span>Theo dõi</span></button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col mid">
                        <div class="inner-text">
                            <h3>Headphones</h3>
                        </div>
                        <a href="#"><img src="{{asset('frontend/images/offer-banner2.jpg')}}" alt="offer banner2"></a>
                    </div>
                    <div class="col last">
                        <div class="inner-text">
                            <h3>Camera</h3>
                        </div>
                        <a href="#"><img src="{{asset('frontend/images/offer-banner3.jpg')}}" alt="offer banner2"></a>
                    </div>
                </div>
                <div class="right">
                    <div class="col">
                        <div class="inner-text">
                            <h4>Top COLLECTION</h4>
                            <h3>Mobile</h3>
                            <a href="#" class="shop-now1">Shop now</a>
                        </div>
                        <a href="#" title=""><img src="{{asset('frontend/images/offer-banner4.jpg')}}" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="promo-banner-section container wow">
    <div class="container">
        <hr>
    </div>
</div>

<section class="latest-blog container wow">
    <div class="blog-title">
      <h2><span>Tin tức công nghệ</span></h2>
    </div>
    <div class="row">
        @foreach ($article as $item)
        <div class="col-xs-12 col-sm-4">
          <a href="{{route('blog_detail', $item->id)}}">
            <div class="blog-img"> <img src="{{url('upload')}}/{{$item->img}}" alt="Image">
            </div>
            <h3>{{$item->name}}</h3>
            <div class="post-date"><i class="icon-calendar"></i> {{$item->created_at}}</div>
          </a>
        </div>
        @endforeach
    </div>
</section>

<section class="featured-pro wow animated parallax parallax-2">
    <div class="container">
        <div class="std">
            <div class="slider-items-products">
                <div class="featured_title center">
                    <h2>Top điện thoại hot nhất hiện nay</h2>
                </div>
                <div id="featured-slider" class="product-flexslider hidden-buttons">
                    <div class="slider-items slider-width-col4">
                        @foreach ($phone as $item)
                        <div class="item">
                            <div class="col-item">
                                <div class="images-container"> <a class="product-image" title="{{$item->name_product}}" href="{{Route('product_detail', $item->id)}}"> <img src="{{url('upload')}}/{{$item->image}}" class="img-responsive" alt="a" /> </a>
                                    <div class="actions">
                                        <div class="actions-inner">
                                            <button type="button" title="Thêm sản phẩm vào giỏ hàng" class="button btn-cart"><span>Thêm giỏ hàng</span></button>
                                            <ul class="add-to-links">
                                                <li><a href="#" title="Thêm vào mục yêu thích" class="link-wishlist"><span>Add to Wishlist</span></a></li>
                                                <li><a href="#" title="Thêm vào đánh giá" class="link-compare "><span>Add to Compare</span></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="qv-button-container"> <a href="#" class="qv-e-button btn-quickview-1"><span><span>Quick View</span></span></a> </div>
                                </div>
                                <div class="info">
                                    <div class="info-inner">
                                        <div class="item-title"> <a title="{{$item->name_product}}" href="product_detail.html"> {{$item->name_product}} </a> </div>
                                        <div class="item-content">
                                            <div class="ratings">
                                                <div class="rating-box">
                                                    <div style="width:60%" class="rating"></div>
                                                </div>
                                            </div>
                                            <div class="price-box">
                                                <p class="special-price"> <span class="price"> {{number_format($item->price_sale)}} đ</span> </p><br>
                                                <p class="old-price"> <span class="price-sep">-</span> <span class="price"> {{number_format($item->price)}} đ</span> </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection
