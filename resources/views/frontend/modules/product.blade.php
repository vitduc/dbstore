@extends('frontend.layouts.master')
@section('Content')

<section class="main-container col2-left-layout">
    <div class="main container">
        <div class="row">
            <section class="col-main col-sm-9 col-sm-push-3 wow">
                <div class="category-title">
                    <h1>Tất cả sản phẩm</h1>
                </div>
                <div class="category-products">
                    <div class="toolbar">
                        <div class="sorter">
                            <div class="view-mode">
                                <span title="Grid" class="button button-active button-grid">{{ isset($cat_current_name) ? $cat_current_name : "" }}</span>
                            </div>
                        </div>
                        <div class="pager">
                            <div class="pages pull-right">
                                {{ $data->withQueryString()->links('frontend.utils.pagination') }}
                            </div>
                        </div>
                    </div>
                    <ul class="products-grid">
                        @foreach ($data as $item)
                        <li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6">
                            <div class="col-item">
                                <div class="sale-label sale-top-right">Sale</div>
                                <div class="images-container"> <a class="product-image" title="{{$item->name_product}}" href="{{Route('product_detail', $item->id)}}"> <img src="{{url('upload')}}/{{$item->image}}" class="img-responsive" alt="a" /> </a>
                                    <div class="actions">
                                        <div class="actions-inner">
                                            <button type="button" title="Thêm sản phẩm vào giỏ hàng" class="button btn-cart add_to_cart" data-url="{{Route('addToCart', $item->id)}}">
                                                <span>Thêm giỏ hàng</span>
                                            </button>
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
            <aside class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9 wow">
                <div class="side-nav-categories">
                    <div class="block-title"> Danh mục </div>
                    <div class="box-content box-category">
                        <ul>
                            @php
                            use App\Models\CategoryModel;
                            @endphp
                            @foreach ($cat_parent as $item)
                            <li> <a class="active" href="{{Route('product')}}?cat_id={{$item->id}}">{{$item->name}}</a> <span class="subDropdown minus"></span>
                                <ul class="level0_415" style="display:block">
                                    @php
                                    $cat_children = CategoryModel::where('id_parent',$item->id )->get();
                                    @endphp
                                    @foreach ($cat_children as $item)
                                    <li> <a href="{{Route('product')}}?cat_id={{$item->id}}"> {{$item->name}} </a> <span></span></li>
                                    @endforeach
                                </ul>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="block block-layered-nav">
                    <div class="popular-posts widget widget__sidebar wow" id="recent-posts-4">
                        <h3 class="widget-title"><span>Bài viết gần đây</span></h3>
                        <div class="widget-content">
                            <ul class="posts-list unstyled clearfix">
                                @foreach ($blog_new as $item)
                                <li>
                                    <figure class="featured-thumb"> <a href="{{route('blog_detail', $item->id)}}"> <img width="80" height="53" alt="blog image" src="{{url('upload')}}/{{$item->img}}"> </a> </figure>
                                    <h4><a title="Pellentesque posuere" href="{{route('blog_detail', $item->id)}}">{{$item->name}}</a></h4>
                                    <p class="post-meta"><i class="icon-calendar"></i>
                                        <time datetime="2014-07-10T07:09:31+00:00" class="entry-date">{{$item->created_at}}</time>
                                    </p>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    <br><br>
                    <div class="popular-posts widget widget__sidebar wow" id="recent-posts-4">
                        <h3 class="widget-title"><span>Phụ kiện đáng mua</span></h3>
                        <div class="widget-content">
                            <ul class="posts-list unstyled clearfix">
                                @foreach ($data_pk as $item)
                                <li>
                                    <figure class="featured-thumb"> <a href="{{Route('product_detail', $item->id)}}"> <img width="80" height="53" alt="blog image" src="{{url('upload')}}/{{$item->image}}"> </a> </figure>
                                    <h4><a title="Pellentesque posuere" href="{{route('product_detail', $item->id)}}">{{$item->name_product}}</a></h4>
                                </li>
                                <br>
                                <br>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </aside>
        </div>
    </div>
</section>
@endsection
