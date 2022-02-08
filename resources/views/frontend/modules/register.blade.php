@extends('frontend.layouts.master')
@section('Content')


<section class="main-container col1-layout">
    <div class="main container">
        <div class="account-login">
            <div class="page-title">
                <h2>Đăng ký</h2>
                @if (session('message'))
                <div class="alert alert-{{session('type_alert')}} alert-dismissible" role="alert">
                    {{session('message')}}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                @endif
                {{-- thông báo ngoại lệ --}}
                @if ($errors->any())
                <div class="alert alert-danger alert-dismissible" role="alert">
                    <ul>
                        @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        <span class="sr-only">Close</span>
                    </button>
                </div>
                @endif
            </div>
            <fieldset class="col2-set">
                <div class="col-1 new-users"><strong>KHÁCH HÀNG MÓI</strong>
                    <div class="content">
                        <p>Bằng cách tạo tài khoản với cửa hàng của chúng tôi, bạn sẽ có thể thực hiện quy trình thanh toán nhanh hơn, lưu trữ nhiều địa chỉ giao hàng, xem và theo dõi đơn đặt hàng trong tài khoản của bạn và hơn thế nữa.</p>
                        <form action="" method="post">
                            @csrf
                            <ul class="form-list">
                                <li>
                                    <label for="email">Tên hiển thị<span class="required">*</span></label>
                                    <br>
                                    <input type="text" name="name" class="input-text required-entry validate-password" required="">
                                </li>
                                <li>
                                    <label for="email">Email <span class="required">*</span></label>
                                    <br>
                                    <input type="email" name="email" class="input-text required-entry validate-password" required="">
                                </li>
                                <li>
                                    <label for="pass">Mật khẩu<span class="required">*</span></label>
                                    <br>
                                    <input type="password" name="password" class="input-text required-entry validate-password" required="">
                                </li>
                            </ul>
                            <div class="buttons-set">
                                <button type="submit" class="button login"><span>Đăng ký</span></button>
                            </div>
                        </form>
                    </div>
                </div>
                    <div class="col-2 registered-users"><strong>KHÁCH HÀNG ĐÃ ĐĂNG KÝ</strong>
                        <div class="content">
                            <div class="buttons-set">
                                <p>Nếu bạn có tài khoản với chúng tôi, vui lòng đăng nhập.</p> <br>
                                <a href="{{route('login')}}" class="button create-account" type="button"><span>ĐĂNG NHẬP NGAY</span></a>
                            </div>
                        </div>
                    </div>
            </fieldset>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
    </div>
</section>

@endsection
