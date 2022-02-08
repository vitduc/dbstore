<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\ArticleModel;
use Facade\FlareClient\Stacktrace\File;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $perPage = $request->has('perPage') ? $request->perPage : 6;
        $data = ArticleModel::orderBy('created_at', 'DESC')->search()->paginate($perPage);
        return view('backend.modules.article.index', ['listAr' => $data])
        ->with('title', 'Danh sach danh muc san pham' );
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('backend.modules.article.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate(
            $request,
            [
                'name' => 'required|unique:blog',
                'preview' => 'required',
                'content' => 'required',
            ],
            [
                'name.required' => 'Bạn chưa nhập tiêu đề bài viết!',
                'preview.required' => 'Bạn chưa nhập mô tả bài viết!',
                'content.required' => 'Bạn chưa nhập nội dung bài viết',
                'name.unique' => 'Tiêu đề bài viết đẫ tồn tại',
            ]
        );
        $message = "";
        $type_alert = "";
        $id  = $request->has('id') ? $request->id : 0;
        $name = $request->has('name') ? $request->name : "";
        $preview = $request->has('preview') ? $request->preview : "";
        $content = $request->has('content') ? $request->content : "";

        if ($request->has('file_upload')) {
            $file = $request->file_upload;
            $ext = $request->file_upload->extension();
            $file_name = time() . '-' . 'article.' . $ext;
            $file->move(public_path('upload'), $file_name);
            $request->merge(['image' => $file_name]);
        }
        if (!$id) {
            $article = ArticleModel::create([
                'name' => $name,
                'img' => $file_name,
                'content' => $content,
                'preview_text' => $preview
            ]);
            if ($article) {
                $message = "Thêm mới thành công bài viết ";
                $type_alert = "success";
            } else {
                $message = "Lỗi khi thêm mới";
                $type_alert = "error";
            }
        }
        return redirect()->route('article.index')
            ->with('message', $message)
            ->with('type_alert', $type_alert);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $item = ArticleModel::find($id);
        return view('backend.modules.article.update', compact('item'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $article = ArticleModel::find($id);
        $message = "";
        $type_alert = "";
        $id  = $request->has('id') ? $request->id : 0;
        $name = $request->has('name') ? $request->name : "";
        $preview = $request->has('preview') ? $request->preview : "";
        $content = $request->has('content') ? $request->content : "";

        $this->validate(
            $request,
            [
                'name' => 'required',
                'preview' => 'required',
                'content' => 'required',
            ],
            [
                'name.required' => 'Bạn chưa nhập tiêu đề bài viết!',
                'preview.required' => 'Bạn chưa nhập mô tả bài viết!',
                'content.required' => 'Bạn chưa nhập nội dung bài viết',
            ]
        );
        if ($request->hasFile('file_upload')) {
            $this->validate(
                $request,
                [
                    'file_upload' => 'mimes:jpg,jpeg,png,gif|max:2048',
                ],
                [
                    'file_upload.mimes' => 'Chỉ chấp nhận hình thẻ với đuôi .jpg .jpeg .png .gif',
                    'file_upload.max' => 'Hình thẻ giới hạn dung lượng không quá 2M',
                ]
            );
            $file = $request->file_upload;
            $ext = $request->file_upload->extension();
            $file_name = time() . '-' . 'article.' . $ext;
            $file->move(public_path('upload'), $file_name);
            $request->merge(['image' => $file_name]);
            
        }else{
            $file_name = $article->img;
        }
        if ($article) {
            $file_name_old = $article->img ;
            $article->update([
                'name' => $name,
                'img' => $file_name,
                'content' => $content,
                'preview_text' => $preview
            ]);
            $check = $article->save();
            if($file_name_old != $file_name) {
                $path = public_path()."/upload/". $file_name_old;
                unlink($path);
            }
            if ($check) {
                $message = "Cập nhật thành công bản ghi ";
                $type_alert = "success";
            } else {
                $message = "Cập nhật thất bại bản ghi ";
                $type_alert = "error";
            }
        } else {
            $message = "Không tồn tại bản ghi có id: " . $id;
            $type_alert = "warning";
        }
        return redirect()->route('article.index')
            ->with('message', $message)
            ->with('type_alert', $type_alert);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $message = "";
        $type_alert = 'success';
        $data = ArticleModel::find($id);
        $file_name_old = $data->img ;
        $check = $data->delete();
        //  Xóa ảnh khi xóa bài viết
        $path = public_path()."/upload/". $file_name_old;
        unlink($path);

        if ($check) {
            $message = "Xóa thành công bản ghi ";
            $type_alert = 'success';
        } else {
            $message = "Có lỗi hệ thống !";
            $type_alert = 'warning';
        }
        return redirect()->route('article.index')
            ->with('message', $message)
            ->with('type_alert', $type_alert);
    }
}
