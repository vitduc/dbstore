@extends('frontend.layouts.master')
@section('Content')

<section class="main-container col2-left-layout">
    <div class="main container">
        <div class="row">
            <section class="col-main  col-sm-push-3 wow">
                <div class="category-title">
                    <h1>Kết quả tìm kiếm</h1>
                </div>

                <div class="category-products">
                    <div class="toolbar">
                        <div class="sorter">
                            <div class="view-mode">
                                <span title="Grid" class="button button-active button-grid">Tìm kiếm được {{count($data_search)}} sản phẩm phù hợp</span>
                            </div>
                        </div>
                        <div class="pager">
                            <div class="pages pull-right">
                                {{ $data_search->withQueryString()->links('frontend.utils.pagination') }}
                            </div>
                        </div>
                    </div>
                    <ul class="products-grid">
                        @foreach ($data_search as $item)
                        <li class="item col-lg-3">
                            <div class="col-item">
                                <div class="sale-label sale-top-right">Sale</div>
                                <div class="images-container"> <a class="product-image" title="{{$item->name_product}}" href="{{Route('product_detail', $item->id)}}"> <img src="{{url('upload')}}/{{$item->image}}" class="img-responsive" alt="a" /> </a>
                                    <div class="actions">
                                        <div class="actions-inner">
                                            <button type="button" title="Thêm sản phẩm vào giỏ hàng" class="button btn-cart add_to_cart"><span>Thêm giỏ hàng</span></button>
                                            <ul class="add-to-links">
                                                <li><a href="wishlist.html" title="Thêm vào danh sách yêu thích" class="link-wishlist"><span>Add to Wishlist</span></a></li>
                                                <li><a href="compare.html" title="Thêm vào đánh giá" class="link-compare "><span>Add to Compare</span></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="qv-button-container"> <a class="qv-e-button btn-quickview-1" href="quick_view.html"><span><span>Quick View</span></span></a> </div>
                                </div>
                                <div class="info">
                                    <div class="info-inner">
                                        <div class="item-title"> <a title="{{$item->name_product}}" href="{{Route('product_detail', $item->id)}}"> {{$item->name_product}} </a> </div>
                                        <div class="item-content">
                                            <div class="ratings">
                                                <div class="rating-box">
                                                    <div style="width:60%" class="rating"></div>
                                                </div>
                                            </div>
                                            <div class="price-box">
                                                <p class="special-price"> <span class="price">{{number_format($item->price_sale)}} đ</span> </p>
                                                <p class="old-price"> <span class="price-sep">-</span> <span class="price"> {{number_format($item->price)}} đ</span> </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </li>
                        @endforeach
                    </ul>
                </div>
            </section>
        </div>
    </div>
</section>
@endsection
