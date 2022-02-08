<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\ProductModel;
use App\Models\CategoryModel;
use App\Models\Image_pro_Model;
use Illuminate\Http\Request;

class ProductController extends Controller
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
        $perPage = $request->has('perPage') ? $request->perPage : 5;
        $data = ProductModel::orderBy('created_at', 'DESC')->search()->paginate($perPage);
        return view('backend.modules.products.index', ['listPro' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $cat_items = CategoryModel::where('id_parent', '!=', 0)->get();
        return view('backend.modules.products.add', compact('cat_items'));
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
                'name_product' => 'required|unique:products',
                'price' => 'required',
                'price_sale' => 'required',
                'quantity' => 'required',
                'preview_text' => 'required',
                'detail_pro' => 'required'
            ],
            [
                'name_product.required' => 'Bạn chưa nhập tên sản phẩm',
                'price.required' => 'Bạn chưa nhập giá',
                'price_sale.required' => 'Bạn chưa nhập giá khuyến mãi',
                'quantity.required' => 'Bạn chưa nhập số lượng sản phẩm',
                'preview_text.required' => 'Bạn chưa nhập mô tả sản phẩm',
                'detail_pro.required' => 'Bạn chưa nhập nội dung sản phẩm',
                'name_product.unique' => 'Tên sản phẩm đẫ tồn tại'
            ]
        );

        $message = "";
        $type_alert = "";
        $id  = $request->has('id') ? $request->id : 0;
        $name_product = $request->has('name_product') ? $request->name_product : "";
        $product_category = $request->has('product_category') ? $request->product_category : "";
        $price = $request->has('price') ? $request->price : "";
        $price_sale = $request->has('price_sale') ? $request->price_sale : "";
        $quantity = $request->has('quantity') ? $request->quantity : "";
        $preview_text = $request->has('preview_text') ? $request->preview_text : "";
        $detail_pro = $request->has('detail_pro') ? $request->detail_pro : "";
        $sp_hot = $request->has('sp_hot') ? $request->sp_hot : "";

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
            $file_name = time() . '-' . 'product.' . $ext;
            $file->move(public_path('upload'), $file_name);
            $request->merge(['image' => $file_name]);
        }
        if (!$id) {
            $product = ProductModel::create([
                'name_product' => $name_product,
                'id_cat' => $product_category,
                'image' => $file_name,
                'price' => $price,
                'price_sale' => $price_sale,
                'qty' => $quantity,
                'preview' => $preview_text,
                'detail' => $detail_pro,
                'sp_hot' => $sp_hot,
            ]);
            $id_product = $product->id;
            if ($request->hasFile('img_detail')) {
                foreach ($request->img_detail as $img_item) {
                    $file_name = time() . '-' . 'product_detail.' . '-' . $img_item->getClientOriginalName();
                    $img_item->move(public_path('upload'), $file_name);
                    Image_pro_Model::create(['id_sp' => $id_product, 'img' => $file_name]);
                }
            }
            if ($product) {
                $message = "Thêm mới thành công";
                $type_alert = "success";
            } else {
                $message = "Lỗi khi thêm mới";
                $type_alert = "error";
            }
        }
        return redirect()->route('product.index')
            ->with('message', $message)
            ->with('type_alert', $type_alert);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $item = ProductModel::find($id);
        $cat_items = CategoryModel::where('id_parent', '!=', 0)->get();
        return view('backend.modules.products.update', compact('item', 'cat_items'));
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
        $data_pro = ProductModel::find($id);
        $message = "";
        $type_alert = "";
        $name_product = $request->has('name_product') ? $request->name_product : "";
        $product_category = $request->has('product_category') ? $request->product_category : "";
        $price = $request->has('price') ? $request->price : "";
        $price_sale = $request->has('price_sale') ? $request->price_sale : "";
        $quantity = $request->has('quantity') ? $request->quantity : "";
        $preview_text = $request->has('preview_text') ? $request->preview_text : "";
        $detail_pro = $request->has('detail_pro') ? $request->detail_pro : "";
        $sp_hot = $request->has('sp_hot') ? $request->sp_hot : "";

        $this->validate(
            $request,
            [
                'name_product' => 'required',
                'price' => 'required',
                'price_sale' => 'required',
                'quantity' => 'required',
                'preview_text' => 'required',
                'detail_pro' => 'required'
            ],
            [
                'name_product.required' => 'Bạn chưa nhập tên sản phẩm',
                'price.required' => 'Bạn chưa nhập giá',
                'price_sale.required' => 'Bạn chưa nhập giá khuyến mãi',
                'quantity.required' => 'Bạn chưa nhập số lượng sản phẩm',
                'preview_text.required' => 'Bạn chưa nhập mô tả sản phẩm',
                'detail_pro.required' => 'Bạn chưa nhập nội dung sản phẩm'
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
            $file_name = time() . '-' . 'product.' . $ext;
            $file->move(public_path('upload'), $file_name);
            $request->merge(['image' => $file_name]);
            
        }else{
            $file_name = $data_pro->image;
        }
        if ($data_pro) {
            $file_name_old = $data_pro->image ;
            $data_pro->update([
                'name_product' => $name_product,
                'id_cat' => $product_category,
                'image' => $file_name,
                'price' => $price,
                'price_sale' => $price_sale,
                'qty' => $quantity,
                'preview' => $preview_text,
                'detail' => $detail_pro,
                'sp_hot' => $sp_hot
            ]);
            $check = $data_pro->save();
            if($file_name_old != $file_name) {
                $path = public_path()."/upload/". $file_name_old;
                unlink($path);
            }
            $id_product = $data_pro->id;
            if ($request->hasFile('img_detail')) {
                foreach ($request->img_detail as $img_item) {
                    $file_name = time() . '-' . 'product_detail.' . '-' . $img_item->getClientOriginalName();
                    $img_item->move(public_path('upload'), $file_name);
                    Image_pro_Model::create(['id_sp' => $id_product, 'img' => $file_name]);
                }
            }

            if ($check) {
                $message = "Cập nhật thành công sản phẩm: " . $data_pro->name_product;
                $type_alert = "success";
            } else {
                $message = "Cập nhật thất bại bản ghi: " . $data_pro->name_product;
                $type_alert = "error";
            }
        } else {
            $message = "Không tồn tại bản ghi có id: " . $id;
            $type_alert = "warning";
        }
        return redirect()->route('product.index')
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
        $data = ProductModel::find($id);
        dd($data);
        $check = $data->delete();
        if ($check) {
            $message = "Xóa thành công bản ghi ";
            $type_alert = 'success';
        } else {
            $message = "Có lỗi hệ thống !";
            $type_alert = 'warning';
        }
        return redirect()->route('product.index')
            ->with('message', $message)
            ->with('type_alert', $type_alert);
    }
}
