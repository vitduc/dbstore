@extends('backend.layouts.master')
@section('Content')

<div class="invoice p-3 mb-3">
    <div class="row">
      <div class="col-12">
        <h4>
          <i class="fas fa-globe"></i> XÁC NHẬN ĐƠN HÀNG
        </h4>
      </div>
    </div>
    <div class="row invoice-info">
      <div class="col-sm-4 invoice-col">
        <Strong>CỬA HÀNG</Strong>
        <address>
          <strong>DStore, Inc.</strong><br>
          Thanh Hóa<br>
          Việt Nam<br>
          Phone: 0123456789<br>
          Email: ngovietduc.nc@gmail.com
        </address>
      </div>
      <div class="col-sm-4 invoice-col">
        <Strong>KHÁCH HÀNG</Strong>
        <address>
          Tên: <strong>{{$data[0]->customer_name}}</strong><br>
          Địa chỉ: {{$data[0]->order_address}}<br>
          Phone: {{$data[0]->customer_phone}}<br>
          Email: {{$data[0]->customer_mail}}
        </address>
      </div>
      <div class="col-sm-4 invoice-col">
        <b>HÓA ĐƠN</b><br>
        Mã đơn hàng: {{$data[0]->order_id}}<br>
        Đặt hàng ngày: {{$data[0]->order_created_at}}<br>
        Tài khoản:
      </div>
    </div>
    <div class="row">
      <div class="col-12 table-responsive">
        <table class="table table-striped">
          <thead>
          <tr>
            <th>STT</th>
            <th>Tên sản phẩm</th>
            <th>Số lượng</th>
            <th>Đơn giá</th>
            <th>Mô tả</th>
            <th>Tổng</th>
          </tr>
          </thead>
          <tbody>
            @php
            $stt=1;
            @endphp
            @foreach ($data as $item)
            <tr>
              <td>{{$stt++}}</td>
              <td>{{$item->product_name}}</td>
              <td>{{$item->product_qty}}</td>
              <td>{{number_format($item->product_price)}} đ</td>
              <td>{!!$item->product_preview!!}</td>
              <td>{{number_format($item->product_qty * $item->product_price)}}.đ</td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
    </div>
    <div class="row">
      <div class="col-6">
        <p class="lead">Hình thức thanh toán:</p>
      </div>
      <div class="col-6">
        <div id="date" class="lead"></div>
        <div class="table-responsive">
          <table class="table">
            <tbody><tr>
              <th style="width:50%">Tổng hàng:</th>
              @php
                  $sum = 0 ;
                  foreach($data as $item) {
                    $sum = $sum + $item->product_qty * $item->product_price ;
                  }
              @endphp
              <td>{{number_format($sum)}}đ</td>
            </tr>
            <tr>
              <th>VAT(10%)</th>
              @php
                  $sum_vat = 0 ;
                  foreach($data as $item) {
                    $sum_vat = $sum_vat + $item->product_qty * $item->product_price * 0.1 ;
                  }
              @endphp
              <td>{{number_format($sum_vat)}}đ</td>
            </tr>
            <tr>
              <th>Phí giao hàng:</th>
              <td>Miễn phí</td>
            </tr>
            <tr>
              <th>Tổng thanh toán:</th>
              <td>{{number_format($sum + $sum_vat)}}đ</td>
            </tr>
          </tbody></table>
        </div>
      </div>
    </div>
    <div class="row no-print">
      <div class="col-12">
          <div class="float-right">
            <input type="checkbox" id="vehicle1" name="vehicle1" value="0" >
            <label for="vehicle1">Chốt đơn</label><br>
          </div>
          <br>
          <br>
        <a href="invoice-print.html" rel="noopener" target="_blank" class="btn btn-default"><i class="fas fa-print"></i> Print</a>
        <button type="button" class="btn btn-success float-right"><i class="far fa-credit-card"></i>
            Hoàn thành
        </button>
        <button type="button" class="btn btn-primary float-right" style="margin-right: 5px;">
          <i class="fas fa-download"></i> Generate PDF
        </button>
      </div>
    </div>
  </div>
@endsection

@push('my_js')
  <script>
    var date = document.getElementById("date");
    var d = new Date();
    var ngay = ["Chủ nhật", "Thứ 2", "Thứ 3", "Thứ 4", "Thứ 5", "Thứ 6", "Thứ 7"];
    var thang = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"];
    document.getElementById("date").innerHTML = ngay[d.getDay()] + ", " + d.getDate() + "/" + thang[d.getMonth()]
        + "/" + d.getFullYear();
  </script>
@endpush