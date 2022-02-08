@extends('frontend.layouts.master')
@section('Content')
<section class="main-container col1-layout">
    <div class="main container">
        <div class="col-main" id="listCart">

            @if ($carts)
            <form action="{{Route('cart.store')}}" method="post">
                @csrf
                <div class="cart wow" id="cartx">
                    <div class="page-title">
                        <h2>Thanh Toán</h2>
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
                    </div>
                    <div class="table-responsive">
                        <table class="data-table cart-table update_cart_url" id="shopping-cart-table" data-url="{{Route('updateCart')}}">
                            <colgroup>
                                <col width="1">
                                <col>
                                <col width="1">
                                <col width="1">
                                <col width="1">
                                <col width="1">
                            </colgroup>
                            <thead>
                                <tr class="first last">
                                    <th rowspan="1">Hình ảnh</th>
                                    <th rowspan="1"><span class="nobr">Tên sản phẩm</span></th>
                                    <th colspan="1" class="a-center"><span class="nobr">Giá</span></th>
                                    <th class="a-center" rowspan="1">Số lượng</th>
                                    <th colspan="1" class="a-center">Tổng</th>
                                    <th class="a-center" rowspan="1">&nbsp;</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($carts as $id => $item)
                                <tr class="first odd">
                                    <td class="image"><a class="product-image" title="Sample Product" href="#/women"><img width="75" alt="Sample Product" src="{{url('upload')}}/{{$item['image']}}"></a></td>
                                    <td>
                                        <input type="hidden" name="id_order" value="{{$id}}">
                                        <h2 class="product-name"> <a href="#/">{{$item['name']}}</a> </h2>
                                    </td>
                                    <td class="a-right"><span class="cart-price"> <span class="price">{{number_format($item['price'])}} đ</span> </span></td>
                                    <td class="a-center movewishlist">
                                        <input maxlength="12" class="input-text qty" type="number" size="4" value="{{$item['quantity']}}" name="quantity" id="quantity_{{$id}}" min="1" max="9" onchange="updateCart({{$id}})">
                                    </td>
                                    <td class="a-right movewishlist"><span class="cart-price"> <span class="price">{{number_format($item['price']*$item['quantity'])}} đ</span> </span></td>
                                    <td class="a-center last">
                                        <a class="button remove-item" href="javascript:void(0)" onclick="deleteCart({{$id}})"></a>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                            <tfoot>
                                <tr class="first last">
                                    <td class="a-right last" colspan="50">
                                        <button class="button btn-continue" type="button"><a href="{{Route('product')}}"><span>Tiếp tục mua sắm</span></a></button>
                                    </td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                    <div class="cart-collaterals row">
                        @php
                        $sum = 0 ;
                        $sum_vat = 0 ;
                        foreach($carts as $item) {
                        $sum = $sum + $item['quantity'] * $item['price'] ;
                        $sum_vat = $sum_vat + $item['quantity'] * $item['price'] * 0.1 ;
                        }
                        @endphp
                        <div class="totals col-sm-4 ">
                            <h3>Tổng thanh toán</h3>
                            <div class="inner">
                                <table class="table shopping-cart-table-total" id="shopping-cart-totals-table">
                                    <colgroup>
                                        <col>
                                        <col width="1">
                                    </colgroup>
                                    <tfoot>
                                        <tr>
                                            <td colspan="1" class="a-left" style=""><strong>Tiền phải trả:</strong></td>
                                            <td class="a-right" style=""><strong><span class="price">{{number_format($sum + $sum_vat)}} đ</span></strong></td>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td colspan="1" class="a-left" style="font-size: 14px">Tổng hàng</td>
                                            <td class="a-right" style=""><span class="price">{{number_format($sum)}} đ</span></td>
                                        </tr>
                                        <tr>
                                            <td colspan="1" class="a-left" style="font-size: 14px">Thuế VAT (10%)</td>
                                            <td class="a-right" style=""><span class="price">{{number_format($sum_vat)}} đ</span></td>
                                        </tr>
                                        <tr>
                                            <td colspan="1" class="a-left" style="font-size: 14px">Phí vận chuyển</td>
                                            <td class="a-right" style=""><span class="price">MIỄN PHÍ</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="has-user col-sm-12">
                            @if(Auth::check())
                            <div class="shipping">
                                <h3>Điền đầy đủ thông tin</h3>
                            </div>
                            <div class="col-sm-6">
                                <div class="shipping-form">
                                    <input value="{{Auth::user()->id}}" type="hidden" name="id_user">
                                    <ul class="form-list">
                                        <li>
                                            <label for="region_id">Tên</label>
                                            <div class="input-box">
                                                <input type="text" value="{{Auth::user()->name}}" name="coupon_code" class="input-text fullwidth" required="">
                                            </div>
                                        </li>
                                        <li>
                                            <label for="region_id">Email</label>
                                            <div class="input-box">
                                                <input type="email" value="{{Auth::user()->email}}" name="coupon_code" class="input-text fullwidth">
                                            </div>
                                        </li>
                                    </ul>
                                </div>


                            </div>
                            <div class="col-sm-6">
                                <div class="shipping-form">
                                    <ul class="form-list">
                                        <li>
                                            <label for="region_id">Số điện thoại</label>
                                            <div class="input-box">
                                                <input type="text" value="" name="phone_number" class="input-text fullwidth">
                                            </div>
                                        </li>
                                        <li>
                                            <label for="region_id">Địa chỉ nhận hàng</label>
                                            <div class="input-box">
                                                <input type="text" value="" name="address" class="input-text fullwidth">
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="checkout col-md-2">
                                <button type="submit" class="button btn-proceed-checkout"><span>THANH TOÁN</span></button>
                            </div>
                            @else
                            <div class="col-sm-8 content" style="color: red; font-size: 14px">
                                <p>Vui lòng đăng nhập để tiến hành thanh toán!!!</p>
                                <div class="buttons-set">
                                    <button class="button create-account" type="button"><a href="{{Route('login')}}"><span>Đăng nhập</span></a></button>
                                </div>
                            </div>
                            @endif

                        </div>
                    </div>

            </form>
            @else
            KHÔNG CÓ SẢN PHẨM.
            @endif
        </div>
    </div>
</section>
@endsection

@push('Cart')
<script>
    function updateCart(id) {
        var quantity = $("#quantity_" + id).val();
        let urlUpdateCart = $('.update_cart_url').data('url');
        $.ajax({
            type: "GET"
            , url: urlUpdateCart
            , data: {
                id: id
                , quantity: quantity
            }
            , success: function(data) {
                if (data.code === 200) {
                    $('#listCart').load("{{Route('cart')}} #cartx");
                }
            }
            , error: function() {}
        });
    }

    function deleteCart(id) {
        let urlUpdateCart = $('.update_cart_url').data('url');
        $.ajax({
            type: "GET"
            , url: urlUpdateCart
            , data: {
                id: id
                , quantity: -99
            }
            , success: function(data) {
                if (data.code === 200) {
                    $('#listCart').load("{{Route('cart')}} #cartx");
                }
            }
            , error: function() {}
        });
    }

</script>
@endpush
