@extends('backend.layouts.master')
@section('Content')

<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Danh sách đơn đặt hàng</h1>
            </div>
            <div class="col-sm-6">
                <form action="" class="form-inline">
                    <div class="form-group">
                        <input type="text" class="form-control" name="key" placeholder="Tìm kiếm theo tên...">
                    </div>
                    <button type="submit" class="btn btn-primary">
                        <i class="fas fa-search"></i>
                    </button>
                </form>
            </div>
        </div>
        @if (session('message'))
        <div class="alert alert-{{session('type_alert')}} alert-dismissible fade show" role="alert">
            {{session('message')}}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        @endif
        <hr>
    </div>
</section>
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Danh sách đơn hàng</h3>
                    </div>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Tên</th>
                                <th>SĐT</th>
                                <th>Ngày đặt</th>
                                <th>Địa chỉ</th>
                                <th>Trạng thái</th>
                                <th>Thao tác</th>
                            </tr>
                        </thead>
                        <tbody id="load">
                            @php
                            $stt = ($data->currentPage() - 1) * $data->perPage() ;
                            @endphp
                            @foreach ($data as $item)
                            @php
                            $stt = $stt + 1 ;
                            @endphp
                            <tr>
                                <td>{{$stt}}</td>
                                <td>{{$item->customer_name}}</td>
                                <td>{{$item->customer_phone}}</td>
                                <td>{{$item->order_created_at}}</td>
                                <td>{{$item->order_address}}</td>
                                <td>
                                    @if($item->order_status == 1)
                                        Chờ
                                        @else
                                        Đã chốt
                                    @endif
                                </td>
                                <td>
                                    <a href="{{Route('order.show', $item->order_id)}}" class="btn btn-success">Xem</a>
                                    <a href="{{Route('order.destroy', $item->order_id)}}" class="btn btn-danger btn-delete">Xóa</a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <form action="" method="POST" id="form-delete">
                        @csrf
                        @method("DELETE")
                    </form>
                    <div class="card-footer clearfix">
                        {!! $data->appends(Request::all())->links() !!}
                    </div>
                </div>
            </div>
        </div>
</section>

@endsection