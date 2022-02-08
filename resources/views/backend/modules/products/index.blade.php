@extends('backend.layouts.master')
@section('Content')
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Danh sách sản phẩm</h1>
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
    </div>
</section>
<section class="content">
    <div class="container-fluid">

        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Bảng sản phẩm</h3>
                        <a href="{{Route('product.create')}}" class="btn btn-success float-right">+ Thêm</a>

                    </div>

                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Tên</th>
                                <th>Danh mục</th>
                                <th>Ảnh</th>
                                <th>Giá gốc</th>
                                <th>Giá sale</th>
                                <th>Chi tiết SP</th>
                                <th>Thao tác</th>
                            </tr>
                        </thead>
                        <tbody id="load">

                            @php
                            $stt = ($listPro->currentPage() - 1) * $listPro->perPage() ;
                            @endphp

                            @foreach ($listPro as $item)

                            @php
                            $stt = $stt + 1 ;
                            @endphp
                            <tr>
                                <td>{{$stt}}</td>
                                <td>{{ $item->name_product }}</td>
                                <td>
                                    @php
                                    echo \App\Models\CategoryModel::find($item->id_cat)->name
                                    @endphp
                                </td>
                                <td><img src="{{url('upload')}}/{{$item->image}}" width="80"></td>
                                <td>{{number_format($item->price)}}</td>
                                <td>{{ number_format($item->price_sale) }}</td>
                                <td>{!!$item->preview!!}</td>
                                <td>
                                    <a href="{{Route('product.edit', $item->id)}}" class="btn btn-success">Sửa</a>
                                    <a href="{{Route('product.destroy', $item->id)}}" class="btn btn-danger btn-delete">Xóa</a>
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
                        {!! $listPro->appends(Request::all())->links() !!}
                    </div>
                </div>
            </div>
        </div>
</section>
@endsection

@section('js')
<script>
    $('.btn-delete').click(function(ev){
        ev.preventDefault();
        var _herf = $(this).attr('href');
        $('form#form-delete').attr('action', _herf);
        if(confirm('Bạn có muốn xóa bài viết này không?')){
            $('form#form-delete').submit();
        }
    })
</script>
@endsection
