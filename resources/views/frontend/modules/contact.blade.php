@extends('frontend.layouts.master')
@section('Content')

<div class="main-container col2-right-layout">
    <div class="main container">
        <div class="row">
            <section class="col-main col-sm-9 wow">
                <div class="page-title">
                    <h2>Liên hệ với chúng tôi</h2>
                </div>

                @if (session('message'))
                <div class="alert alert-{{session('type_alert')}} alert-dismissible" role="alert">
                    {{session('message')}}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                @endif
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
                <div class="static-contain">
                    <form action="{{Route('contact.store')}}" method="POST">
                        @csrf
                        <div class="group-select">
                            <ul>
                                <li id="billing-new-address-form">
                                    <ul>
                                        <li>
                                            <div class="customer-name">
                                                <div class="input-box name-firstname">
                                                    <label>Tên<span class="required">*</span></label>
                                                    <br>
                                                    <input type="text" name="name" value="" class="input-text " required="">
                                                </div>
                                                <div class="input-box name-lastname">
                                                    <label> Email <span class="required">*</span> </label>
                                                    <br>
                                                    <input type="email" name="email" value="" class="input-text" required="">
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="input-box">
                                                <label>Điện thoại <span class="required">*</span></label>
                                                <br>
                                                <input type="text" name="phone" id="billing:email" value="" class="input-text validate-email" required="">
                                            </div>
                                        </li>
                                        <li class="">
                                            <label>Nội dung<em class="required">*</em></label>
                                            <br>
                                            <div style="float:none" class="">
                                                <textarea name="content" title="Viết nội dung liên hệ của bạn" class="required-entry input-text" cols="5" rows="5"></textarea>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                                <div class="buttons-set">
                                    <button type="submit" title="Submit" class="button submit"> <span> Gửi </span> </button>
                                </div>
                            </ul>
                        </div>
                    </form>
                </div>
            </section>
            <aside class="col-right sidebar col-sm-3 wow">
                <div class="block block-company">
                    <div class="block-title">Liên hệ ngay</div>
                    <div class="block-content">
                        <div class="single-head">
                            <div class="single-info">
                                <i class="fa fa-phone"></i>
                                <h4 class="title">Điện thoại:</h4>
                            </div>
                            <p>+123 696 969</p>
                            <p>+123 696 969</p>
                            <div class="single-info">
                                <i class="fa fa-envelope-open"></i>
                                <h4 class="title">Email:</h4>
                            </div>
                            <p><a href="mailto:info@yourwebsite.com">support@yourwebsite.com</a></p>
                            <div class="single-info">
                                <i class="fa fa-location-arrow"></i>
                                <h4 class="title">Địa chỉ:</h4>
                            </div>
                            <p>Hoàng Mai, Hà Nội, Việt Nam.</p>
                        </div>
                    </div>
                </div>
            </aside>
        </div>
    </div>
</div>
@endsection
