@extends('backend.layouts.master')
@section('Content')
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Danh sách danh mục sản phẩm</h1>
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
    </div>
</section>
<section class="content">
    <div class="container-fluid">

        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Bảng danh mục</h3>
                        <a href="{{Route('product-category.create')}}" class="btn btn-success float-right">+ Thêm</a>
                    </div>

                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Tên loại</th>
                                <th>Danh mục cha</th>
                                <th>Tổng SP hoặc DM</th>
                                <th>Thao tác</th>
                            </tr>
                        </thead>
                        <tbody id="load">
                            @php
                            $stt = ($cats->currentPage() - 1) * $cats->perPage() ;
                            @endphp
                            @foreach ($cats as $item)
                            @php
                            $stt = $stt + 1 ;
                            @endphp
                            <tr>
                                <td>{{ $stt }}</td>
                                <td>{{ $item->name }}</td>
                                <td>
                                    @if ($item->id_parent == 0)
                                    <span class="badge badge-success">
                                        <i class="fa fa-check" aria-hidden="true"></i>
                                    </span>
                                    @endif
                                </td>
                                <td>
                                    @if ($item->id_parent == 0)
                                        {{ $item->cat_children ? $item->cat_children->count() : 0}}
                                    
                                    @else
                                        {{ $item->product ? $item->product->count() : 0}}
                                    
                                    @endif
                                
                                </td>
                                <td>
                                    <form action="{{Route('product-category.destroy', $item->id)}}" method="POST">
                                        <a href="{{Route('product-category.edit', $item->id)}}" class="btn btn-success">Sửa</a>
                                        @csrf
                                        @method("DELETE")
                                        <button type="submit" class="btn btn-danger">Xóa</button>
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="card-footer clearfix">
                        {!! $cats->appends(Request::all())->links() !!}
                    </div>
                </div>
            </div>
        </div>
</section>
@endsection
