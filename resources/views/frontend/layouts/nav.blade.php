<nav>
    <div class="container">
        <div class="nav-inner">


            <div class="hidden-desktop" id="mobile-menu">
                <ul class="navmenu">
                    <li>
                        <div class="menutop">
                            <div class="toggle"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></div>
                            <h2>Menu</h2>
                        </div>
                        <ul style="display:none;" class="submenu">
                            <li>
                                <ul class="topnav">
                                    <li class="level0 nav-6 level-top first parent"> <a class="level-top" href="#"> <span>Trang chủ</span> </a> </li>
                                    <li class="level0 nav-6 level-top"> <a class="level-top" href="{{Route('product')}}"> <span>Sản phẩm</span> </a> </li>
                                    <li class="level0 nav-7 level-top parent"> <a class="level-top" href="#"> <span>Laptop</span> </a> </li>
                                    <li class="level0 nav-8 level-top parent"> <a class="level-top" href="#"> <span>Điện thoại</span> </a> </li>
                                    <li class="level0 parent drop-menu"><a href="#"><span>Tin tức</span> </a> </li>
                                    <li class="level0 nav-9 level-top last parent "> <a class="level-top" href="#"> <span>Liên hệ</span> </a> </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>

            <a class="logo-small" title="Magento Commerce" href="#"><img alt="Magento Commerce" src="{{asset('frontend/images/logo2.png')}}" width="100px"></a>
            <ul id="nav" class="hidden-xs">
                <li class="level0 parent drop-menu"><a href="{{Route('index')}}" class="{{url()->current() == route('index')  ? 'active' : '' }}"><span>Trang chủ</span> </a> </li>
                <li class="level0 parent drop-menu"><a href="{{Route('product')}} " class="{{url()->current() == route('product')  ? 'active' : '' }}"><span>Sản phẩm</span> </a> </li>
                @php
                use App\Models\CategoryModel;
                $cat_parent = CategoryModel::where('id_parent', 0)->get();
                @endphp
                @foreach ($cat_parent as $item)
                <li class="level0 nav-5 level-top first"> <a href="{{Route('product')}}?cat_id={{$item->id}}" class="level-top"> <span>{{$item->name}}</span> </a>
                    <div class="level0-wrapper dropdown-6col" style="display:none;">
                        <div class="level0-wrapper2">
                            <div class="nav-block nav-block-center grid12-8 itemgrid itemgrid-4col">
                                <ul class="level0">
                                    @php
                                    $cat_children = CategoryModel::where('id_parent',$item->id )->get();
                                    @endphp
                                    @foreach ($cat_children as $item)
                                    <li class="level1 nav-6-1 parent item"> <a href="{{Route('product')}}?cat_id={{$item->id}}"> {{$item->name}} </a> <span></span></li>
                                    @endforeach
                                </ul>
                                <div class="nav-add">
                                    <div class="push_item1">
                                        <div class="push_img"> <a href="#"> <img alt="women jwellery" src="{{asset('frontend/images/women-cate-banner.jpg')}}"> </a> </div>
                                    </div>
                                    <div class="push_item1">
                                        <div class="push_img"> <a href="#"> <img alt="women_jwellery" src="{{asset('frontend/images/women-cate-banner1.jpg')}}"> </a> </div>
                                    </div>
                                    <div class="push_item1 push_item1_last">
                                        <div class="push_img"> <a href="#"> <img alt="women_bag" src="{{asset('frontend/images/women-cate-banner2.jpg')}}"> </a> </div>
                                    </div>
                                    <br class="clear">
                                </div>
                            </div>
                            <div class="nav-block nav-block-right std grid12-4">
                                {{-- <p><a href="#"><img class="fade-on-hover" src="{{asset('frontend/images/nav-women-banner.jpg')}}" alt="nav img"></a></p> --}}
                            </div>
                        </div>
                    </div>
                </li>
                @endforeach
                <li class="level0 nav-5 level-top parent"><a href="{{Route('blog')}}" class="{{url()->current() == route('blog') ? 'active' : '' }}"><span>Bài viết</span> </a> </li>
                <li class="level0 parent drop-menu"><a href="{{Route('contact')}}" class="{{url()->current() == route('contact')  ? 'active' : '' }}"><span>Liên hệ</span> </a></li>
            </ul>
        </div>
    </div>
</nav>
