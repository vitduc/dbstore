<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\ArticleModel;
use App\Models\CategoryModel;
use App\Models\CommentModel;
use App\Models\ProductModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProController extends Controller
{
    public function product_detail($id){
        $data = ProductModel::find($id);
        $id_parent = $data->id_cat;
        $data_detail = DB::table('products as p')
        ->join('img_products as ip','p.id','=','ip.id_sp')
        ->where('p.id',$id)
        ->select([
            'ip.img'
        ])->get();
        $cat_parent = ProductModel::where('id_cat', $id_parent)->get();
        return view('frontend.modules.product-detail', compact('data','data_detail', 'cat_parent'));
    }

    public function product(Request $request){
        $blog_new = ArticleModel::orderByDesc('created_at')
            ->take(4)
            ->get();
            $data_pk = DB::table('cat as c')
            ->join('products as p', 'p.id_cat', '=', 'c.id')
            ->where('c.id_parent', 43)
            ->select([
                'p.id',
                'p.name_product',
                'p.price',
                'p.price_sale',
                'p.image',
                'p.created_at'
            ])
            ->orderByDesc('p.created_at')
            ->take(3)
            ->get();
        $cat_id = $request->has('cat_id') ? $request->cat_id : 0 ;
        $list_cat_children_id = [] ;
        $list_cat_children = CategoryModel::where('id_parent', $cat_id)->get() ;
        if(count($list_cat_children) > 1) {
            foreach($list_cat_children as $item)
            array_push($list_cat_children_id,$item->id) ;
        }
        else {
            array_push($list_cat_children_id,$cat_id) ;
        };
        $data = ProductModel::where(function($query) use($list_cat_children_id,$cat_id) {
            if(count($list_cat_children_id) > 0 && $cat_id > 0) {
                $query->whereIn('id_cat',$list_cat_children_id) ;
            }
        })->paginate(12) ;
        $cat_parent = CategoryModel::where('id_parent', 0)->get();
        $cat_current = CategoryModel::find($cat_id) ;
        $cat_current_name = $cat_current ? $cat_current->name : "Tất cả" ;
        $cat_children = CategoryModel::where('id_parent','!=', 0)->get();
        return view('frontend.modules.product', compact('data', 'cat_parent', 'cat_children','cat_current_name', 'blog_new', 'data_pk'));
    }
}