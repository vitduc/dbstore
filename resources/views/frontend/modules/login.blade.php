@extends('frontend.layouts.master')
@section('Content')

<section class="main-container col1-layout">
    <div class="main container">
        <div class="account-login">
            <div class="page-title">
                <h2>Đăng nhập</h2>
                @if (session('message'))
                <div class="alert alert-danger alert-dismissible" role="alert">
                    {{session('message')}}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                @endif
            </div>
            <fieldset class="col2-set">
                <legend>Login or Create an Account</legend>
                <div class="col-1 new-users"><strong>Khách hàng mới</strong>
                    <div class="content">
                        <p>Bằng cách tạo tài khoản với cửa hàng của chúng tôi, bạn sẽ có thể thực hiện quy trình thanh toán nhanh hơn, lưu trữ nhiều địa chỉ giao hàng, xem và theo dõi đơn đặt hàng trong tài khoản của bạn và hơn thế nữa.</p>
                        <div class="buttons-set">
                            <a href="{{route('register')}}" class="button create-account" type="button"><span>ĐĂNG KÝ NGAY</span></a>
                        </div>
                    </div>
                </div>
                <div class="col-2 registered-users"><strong>KHÁCH HÀNG ĐÃ ĐĂNG KÝ</strong>
                    <div class="content">
                        <p>Nếu bạn có tài khoản với chúng tôi, vui lòng đăng nhập.</p>
                        <form action="" method="POST">
                            @csrf
                            <ul class="form-list">
                                <li>
                                    <label for="email">Email<span class="required">*</span></label>
                                    <br>
                                    <input type="email" class="input-text required-entry"name="email">
                                </li>
                                <li>
                                    <label for="pass">Mật khẩu<span class="required">*</span></label>
                                    <br>
                                    <input type="password" class="input-text required-entry validate-password" name="password">
                                </li>
                            </ul>
                            <div class="buttons-set">
                                <button id="send2" name="send" type="submit" class="button login"><span>Đăng nhập</span></button>
                                <a class="forgot-word" href="#">Quên mật khẩu?</a>
                            </div>
                        </form>
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
