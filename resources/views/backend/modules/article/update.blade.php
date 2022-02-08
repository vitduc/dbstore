@extends('backend.layouts.master')
@section('Content')

<section class="content-header">
</section>

<section class="content">
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
                        <h3 class="card-title" style="font-weight:bold">Cập nhật bài viết</h3>
                    </div>
                    <form action="{{Route('article.update', $item->id)}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method("PUT")
                        <div class="card-body">
                            <div class="form-group">
                                <input type="hidden" name="id" value="{{$item->id}}">
                                <label for="">Tiêu đề</label>
                                <input type="text" class="form-control" name="name" value="{{$item->name}}">
                            </div>
                            <div class="form-group">
                                <label for="">Ảnh</label>
                                <input type="file" class="form-control" name="file_upload">
                                @if($item->img)
                                    <img src="{{asset('upload/'.$item->img)}}" alt="" width="100">
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="">Mô tả</label>
                                <textarea name="preview" class="form-control ckeditor" cols="5" rows="5" style="visibility: hidden; display: none;">{{$item->preview_text}}</textarea>

                            </div>
                            <div class="form-group">
                                <label for="">Nội dung</label>
                                <textarea name="content" class="form-control ckeditor" cols="5" rows="5" style="visibility: hidden; display: none;">{{$item->content}}</textarea>
                                
                            </div>
                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary">Lưu</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
