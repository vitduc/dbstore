@extends('backend.layouts.master')
@section('Content')
<section class="content-header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                {{-- Thông báo ngoại lệ --}}
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
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title" style="font-weight:bold">Thêm mới sản phẩm</h3>
                    </div>
                    <form action="{{Route('product.update', $item->id)}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method("PUT")
                        <div class="card-body">
                            <div class="form-group">
                                <label for="">Tên sản phẩm</label>
                                <input type="text" class="form-control" name="name_product" required="" value="{{$item->name_product}}">
                            </div>
                            <div class="form-group">
                                <label for="">Danh mục</label>
                                <select name="product_category" class="form-control">
                                    @foreach ($cat_items as $cat_item)
                                    <option value="{{$cat_item->id}}"  {{ $item->id_cat == $cat_item->id ? "selected" : "" }}>{{$cat_item->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="">Ảnh đại diện</label>
                                <input type="file" class="form-control" name="file_upload">
                                @if($item->image)
                                    <img src="{{asset('upload/'.$item->image)}}" alt="" width="80">
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="">Ảnh chi tiết</label>
                                <input type="file" class="form-control" name="img_detail[]" multiple="">
                            </div>
                            <div class="form-group">
                                <label for="">Giá</label>
                                <input type="text" class="form-control" name="price" value="{{$item->price}}">
                            </div>
                            <div class="form-group">
                                <label for="">Giá khuyến mãi</label>
                                <input type="text" class="form-control" name="price_sale" value="{{$item->price_sale}}">
                            </div>
                            <div class="form-group">
                                <label for="">Số lượng</label>
                                <input type="text" class="form-control" name="quantity" value="{{$item->qty}}">
                            </div>
                            <div class="form-group">
                                <label for="">Mô tả sản phẩm</label>
                                <textarea name="preview_text" class="form-control ckeditor" cols="5" rows="5" style="visibility: hidden; display: none;">{{$item->preview}}</textarea>
                            </div>
                            <div class="form-group">
                                <label for="">Nội dung sản phẩm</label>
                                <textarea name="detail_pro" class="form-control ckeditor" cols="5" rows="5" style="visibility: hidden; display: none;">{{$item->detail}}</textarea>
                            </div>
                            <div class="form-group">
                                <label for="">Sản phẩm nổi bật</label>
                                <select name="sp_hot" class="form-control">
                                    <option value="1">Yes</option>
                                    <option value="0">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <input type="submit" name="submit" class="btn btn-success" value="Lưu">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection
