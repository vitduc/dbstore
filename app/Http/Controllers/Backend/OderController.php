<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Order_detail_Model;
use App\Models\OrderModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OderController extends Controller
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
        $perPage = $request->has('perPage') ? $request->perPage : 8;
        $data = DB::table('orders as o')
        ->join('users as u','o.id_customer','=','u.id')
        ->select([
            'o.id as order_id',
            'u.name as customer_name',
            'o.phone as customer_phone',
            'o.created_at as order_created_at',
            'o.status as order_status',
            'o.address as order_address'
        ])
        ->orderByDesc('o.created_at')
        ->paginate($perPage);
        return view('backend.modules.order.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = DB::table('orders as o')
        ->join('users as u','o.id_customer','=','u.id')
        ->join('order_detail as d','o.id','=','d.id_order')
        ->join('products as p','d.id_sp','=','p.id')
        ->select([
            'o.id as order_id',
            'u.name as customer_name',
            'u.email as customer_mail',
            'o.phone as customer_phone',
            'o.created_at as order_created_at',
            'o.status as order_status',
            'o.address as order_address',
            'd.id_sp as product_id',
            'd.qty as product_qty',
            'p.price_sale as product_price',
            'p.name_product as product_name',
            'p.preview as product_preview'
            
        ])
        ->where('o.id',$id)->get();
        return view('backend.modules.order.order_detail', compact('data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        
        
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
        //
    }
}
