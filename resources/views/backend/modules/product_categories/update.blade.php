@extends('backend.layouts.master')
@section('Content')


<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title" style="font-weight:bold">Cập nhật sản phẩm</h3>
            </div>

            <form action="{{Route('product-category.store')}}" method="POST">
              @csrf
              <div class="card-body">
                <div class="form-group">
                  <input type="hidden" name="id" value="{{$item->id}}">
                  <label for="exampleInputEmail1">Tên loại sản phẩm</label>
                  <input type="text" class="form-control" id="category_name" name="cat_name" value="{{$item->name}}" placeholder="Nhập vào tên loại sản phẩm">
                  <label for="exampleInputEmail1">Danh mục cha</label>
                  <select name="cat_parent_id" class="form-control">
                    <option value="0">--Chọn danh mục cha--</option>
                    @foreach ($parent_items as $parent_item)
                    <option value="{{$parent_item->id}}"  {{ $item->id_parent == $parent_item->id ? "selected" : "" }} >{{$parent_item->name}}</option>
                    @endforeach
                  </select>
                </div>
              </div>
              <div class="card-footer">
                <button type="submit" class="btn btn-primary">Cập nhật</button>
              </div>
            </form>


          </div>
        </div>
  </div>
</section>

@endsection