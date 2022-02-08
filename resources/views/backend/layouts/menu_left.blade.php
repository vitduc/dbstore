<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <a href="{{Route('home')}}" class="brand-link">
        <img src="{{asset('backend/dist/img/AdminLTELogo.png')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">Quản lý website </span>
    </a>
    <div class="sidebar os-host os-theme-light os-host-overflow os-host-overflow-y os-host-resize-disabled os-host-scrollbar-horizontal-hidden os-host-transition">
        <div class="os-resize-observer-host observed">
            <div class="os-resize-observer" style="left: 0px; right: auto;"></div>
        </div>
        <div class="os-size-auto-observer observed" style="height: calc(100% + 1px); float: left;">
            <div class="os-resize-observer"></div>
        </div>
        <div class="os-content-glue" style="margin: 0px -8px; width: 249px; height: 112px;"></div>
        <div class="os-padding">
            <div class="os-viewport os-viewport-native-scrollbars-invisible" style="overflow-y: scroll;">
                <div class="os-content" style="padding: 0px 8px; height: 100%; width: 100%;">
                    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                        <div class="image">
                            <img src="{{asset('backend/dist/img/user2-160x160.jpg')}}" class="img-circle elevation-2" alt="User Image">
                        </div>
                        <div class="info">
                            @if(Auth::check())
                            <div class="d-block"><a href="#"><span>Xin chào: {{Auth::user()->name}}</span></a></div>
                            <div class="signup"><a href="{{Route('out')}}"><i class="fas fa-sign-out-alt"></i></a></div>
                            @endif
                        </div>
                    </div>
                    <div class="form-inline">
                        <div class="input-group" data-widget="sidebar-search">
                            <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                            <div class="input-group-append">
                                <button class="btn btn-sidebar">
                                    <i class="fas fa-search fa-fw"></i>
                                </button>
                            </div>
                        </div>
                        <div class="sidebar-search-results">
                            <div class="list-group"><a href="#" class="list-group-item">
                                    <div class="search-title"><strong class="text-light"></strong>N<strong class="text-light"></strong>o<strong class="text-light"></strong> <strong class="text-light"></strong>e<strong class="text-light"></strong>l<strong class="text-light"></strong>e<strong class="text-light"></strong>m<strong class="text-light"></strong>e<strong class="text-light"></strong>n<strong class="text-light"></strong>t<strong class="text-light"></strong> <strong class="text-light"></strong>f<strong class="text-light"></strong>o<strong class="text-light"></strong>u<strong class="text-light"></strong>n<strong class="text-light"></strong>d<strong class="text-light"></strong>!<strong class="text-light"></strong></div>
                                    <div class="search-path"></div>
                                </a></div>
                        </div>
                    </div>
                    <nav class="mt-2">
                        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                            <li class="nav-item menu-open">
                                <a href="#" class="nav-link {{  url()->current() == route('article.index') ||url()->current() == route('product.index') ||url()->current() == route('product-category.index')
                  ||url()->current() == route('order.index')||url()->current() == route('product-category.index')  ? 'active' : '' }}">
                                    <i class="nav-icon fas fa-edit"></i>
                                    <p>
                                        Menu quản lý
                                        <i class="right fas fa-angle-left"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-header">QUẢN LÝ NỘI DUNG</li>
                                    <li class="nav-item">
                                        <a href="{{Route('product-category.index')}}" class="nav-link {{  url()->current() == route('product-category.index')  ? 'active' : '' }}">
                                            <i class="fas fa-list-ul nav-icon"></i>
                                            <p>Danh mục sản phẩm</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="{{Route('product.index')}}" class="nav-link {{  url()->current() == route('product.index')  ? 'active' : '' }}">
                                            <i class="fab fa-product-hunt nav-icon"></i>
                                            <p>Sản phẩm</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="{{Route('article.index')}}" class="nav-link {{  url()->current() == route('article.index')  ? 'active' : '' }}">
                                            <i class="far fa-newspaper nav-icon"></i>
                                            <p>Bài viết</p>
                                        </a>
                                    </li>

                                    <li class="nav-header">QUẢN LÝ BÁN HÀNG</li>
                                    <li class="nav-item">
                                        <a href="{{Route('order.index')}}" class="nav-link {{  url()->current() == route('order.index')  ? 'active' : '' }}">
                                            <i class="fas fa-th nav-icon"></i>
                                            <p>Các đơn hàng</p>
                                        </a>
                                    </li>

                                    <li class="nav-item">
                                        <a href="#" class="nav-link">
                                            <i class="fas fa-chart-pie nav-icon"></i>
                                            <p>Thống kê</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item menu-open">
                                <a href="#" class="nav-link {{ url()->current() == route('user.index') ||  url()->current() == route('contact.index')  ? 'active' : '' }}">
                                    <i class="nav-icon fas fa-users"></i>
                                    <p>
                                        Người dùng
                                        <i class="right fas fa-angle-left"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="{{Route('contact.index')}}" class="nav-link {{ url()->current() == route('contact.index')  ? 'active' : '' }}">
                                            <i class="far fa-address-book nav-icon"></i>
                                            <p>Liên hệ</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="{{Route('user.index')}}" class="nav-link {{ url()->current() == route('user.index')  ? 'active' : '' }}">
                                            <i class="far fa-address-card nav-icon"></i>
                                            <p>Quản lý thành viên</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="os-scrollbar os-scrollbar-horizontal os-scrollbar-unusable os-scrollbar-auto-hidden">
            <div class="os-scrollbar-track">
                <div class="os-scrollbar-handle" style="width: 100%; transform: translate(0px, 0px);"></div>
            </div>
        </div>
        <div class="os-scrollbar os-scrollbar-vertical os-scrollbar-auto-hidden">
            <div class="os-scrollbar-track">
                <div class="os-scrollbar-handle" style="height: 12.5092%; transform: translate(0px, 0px);"></div>
            </div>
        </div>
        <div class="os-scrollbar-corner"></div>
    </div>
</aside>
