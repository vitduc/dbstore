<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\CategoryModel;
use App\Models\ProductModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class CategoryController extends Controller
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
        $perPage = $request->has('perPage') ? $request->perPage : 8 ;
        $data = CategoryModel::orderBy('created_at', 'DESC')->paginate($perPage) ;
        return view('backend.modules.product_categories.index', ['cats' => $data]) ;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $parent_items = CategoryModel::where('id_parent',0)->get();
        return view('backend.modules.product_categories.add',compact('parent_items')) ;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $message ="" ;
        $type_alert = "";
        $id  = $request->has('id') ? $request->id : 0 ;
        $cat_name = $request->has('cat_name') ? $request->cat_name : "" ;
        $cat_parent_id = $request->has('cat_parent_id') ? $request->cat_parent_id : "" ;
        if(!$id) {
            $cat = CategoryModel::create([
                'name' => $cat_name,
                'id_parent' => $cat_parent_id
            ]);
            if($cat) {
                $message = "Thêm mới thành công bản ghi: " . $cat_name ;
                $type_alert = "success" ;
            }
            else {
                $message ="Lỗi khi thêm mới bản ghi: " . $cat_name ;
                    $type_alert = "error" ;
            }
        }
        else {
            $cat = CategoryModel::find($id) ;
            if($cat) {
                $cat->update([
                    'name' => $cat_name,
                    'id_parent' => $cat_parent_id
                ]);
                $check = $cat->save();
                if($check) {
                    $message ="Cập nhật thành công bản ghi: " . $cat->name ;
                    $type_alert = "success" ;
                }
                else {
                    $message ="Cập nhật thất bại bản ghi: " . $cat->name ;
                    $type_alert = "error" ;
                }
            }
            else {
                $message ="Không tồn tại bản ghi có id: " . $id ;
                $type_alert = "warning" ;
            }
            
        }
        return redirect()->route('product-category.index')
        ->with('message',$message)
        ->with('type_alert',$type_alert);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
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
        $item = CategoryModel::find($id);
        $parent_items = CategoryModel::where('id_parent',0)->get();
        return view('backend.modules.product_categories.update', compact('item','parent_items'));
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
        $type_alert = 'success' ;
        $data=CategoryModel::find($id);
        $name = $data->name ;
        $data_children = CategoryModel::where('id_parent',$id)->get();
        $data_pro = ProductModel::where('id_cat', $id)->get();
        if(count($data_children) > 0 || count($data_pro) > 0) {
            $message = "Lỗi ! Đang còn danh mục con hoặc sản phẩm thuộc danh mục này." ;
            $type_alert = 'danger' ;
        }
        else {

            // Không thể xóa danh mục có sản phẩm
            $check = $data->delete();
            if($check) {
                $message ="Xóa thành công bản ghi: " . $name;
                $type_alert = 'success' ;
            }
            else {
                $message ="Có lỗi hệ thống !";
                $type_alert = 'warning' ;
            }
        }
        return redirect()->route('product-category.index')
        ->with('message',$message)
        ->with('type_alert',$type_alert);
    }
}
