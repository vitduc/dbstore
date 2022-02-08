@extends('frontend.layouts.master')
@section('Content')

<div class="main-container col2-right-layout">
    <div class="main container">
        <div class="row">
            <div class="col-main col-sm-9 wow">
                <div class="page-title">
                    <h2>Chi tiết bài viết</h2>
                </div>
                <div class="blog-wrapper" id="main">
                    <div class="site-content" id="primary">
                        <div role="main" id="content">
                            <article class="blog_entry clearfix" id="post-29">
                                <header class="blog_entry-header clearfix">
                                    <div class="blog_entry-header-inner">
                                        <h2 class="blog_entry-title">{{$data->name}}</h2>
                                    </div>
                                </header>
                                <div class="entry-content">
                                    <div class="featured-thumb"><a href="#"><img alt="blog-img4" src="{{url('upload')}}/{{$data->img}}" width="845px"></a></div>
                                    <div class="entry-content">
                                        <blockquote>{!!$data->preview_text!!}</blockquote>
                                        <p>{!!$data->content!!}</p>
                                    </div>
                                </div>
                                <footer class="entry-meta">Bài viết được đăng vào:
                                    <time datetime="2014-07-10T06:53:43+00:00" class="entry-date">{{$data->created_at}}</time></footer>
                            </article>
                            <div class="comment-content wow">
                                <div class="comments-wrapper">
                                    <h3> Bình luận: </h3>
                                    <ul class="commentlist">
                                        @foreach ($data_cmt as $item)
                                        <li class="comment">
                                            <div class="comment-wrapper" id="post-29">
                                                <div class="comment-author vcard">
                                                    <p class="gravatar"><a href="#"></a></p>
                                                    <span class="author">{{$item->name}}</span>
                                                </div>
                                                <div class="comment-meta">
                                                    <time datetime="2014-07-10T07:26:28+00:00" class="entry-date">{{$item->created_at}}</time>
                                                    . </div>
                                                <div class="comment-body">{{$item->comment}}.</div>
                                            </div>
                                        </li>
                                        @endforeach
                                    </ul>
                                </div>
                                <div class="comments-form-wrapper clearfix pull-left">
                                    <h3>Để lại bình luận của bạn</h3>
                                    @if (session('message'))
                                    <div class="alert alert-{{session('type_alert')}} alert-dismissible fade show" role="alert">
                                        {{session('message')}}
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    @endif
                                    <form class="comment-form" method="POST" id="postComment" action="{{Route('blog_detail.store')}}">
                                        @csrf
                                        <div class="field">
                                            <label for="name">Tên<em class="required">*</em></label>
                                            <input type="text" class="input-text" title="Name" value="" id="user" name="name" required="">
                                        </div>
                                        <div class="field">
                                            <label for="email">Email<em class="required">*</em></label>
                                            <input type="email" class="input-text validate-email" title="Email" value="" id="email" name="email">
                                        </div>
                                        <div class="clear"></div>
                                        <div class="field aw-blog-comment-area">
                                            <label for="comment">Bình luận<em class="required">*</em></label>
                                            <textarea rows="5" cols="50" class="input-text" title="Comment" id="comment" name="comment"></textarea>
                                        </div>
                                        <div style="width:96%" class="button-set">
                                            <input type="hidden" value="1" name="blog_id">
                                            <button type="submit" class="bnt-comment"><span><span>Gửi</span></span></button>
                                        </div>
                                    </form>
                                    

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-right sidebar col-sm-3">
                <div role="complementary" class="widget_wrapper13" id="secondary">
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
                    <div class="popular-posts widget widget_categories wow" id="categories-2">
                        <h3 class="widget-title"><span>Categories</span></h3>
                        <ul>
                            <li class="cat-item cat-item-19599"><a href="#/first-category">First Category</a></li>
                            <ul>
                            </ul>
                            <li class="cat-item cat-item-19599"><a href="#/second-category">Second Category</a></li>
                            <ul>
                            </ul>
                        </ul>
                    </div>
                    <div class="ad-spots widget widget__sidebar">
                        <h3 class="widget-title"><span>Ad Spots</span></h3>
                        <div class="widget-content"><a target="_self" href="#" title=""><img alt="offer banner" src="{{asset('frontend/images/RHS-banner-img.jpg')}}"></a></div>
                    </div>
                    <div class="text-widget widget widget__sidebar">
                        <h3 class="widget-title"><span>Text Widget</span></h3>
                        <div class="widget-content">Mauris at blandit erat. Nam vel tortor non quam scelerisque cursus. Praesent nunc vitae magna pellentesque auctor. Quisque id lectus.<br>
                            <br>
                            Massa, eget eleifend tellus. Proin nec ante leo ssim nunc sit amet velit malesuada pharetra. Nulla neque sapien, sollicitudin non ornare quis, malesuada.</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
