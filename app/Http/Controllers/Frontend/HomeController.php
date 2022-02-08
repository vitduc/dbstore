<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\ArticleModel;
use App\Models\Order_detail_Model;
use App\Models\OrderModel;
use App\Models\ProductModel;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $data = ProductModel::orderByDesc('created_at')->take(2)->get();
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
        $sp_hot = $data = ProductModel::where('sp_hot', 1)->search()->get();
        $article = ArticleModel::orderByDesc('created_at')->take(3)->get();
        $phone = DB::table('cat as c')
            ->join('products as p', 'p.id_cat', '=', 'c.id')
            ->where('c.id_parent', 41)
            ->select([
                'p.id',
                'p.name_product',
                'p.price',
                'p.price_sale',
                'p.image'
            ])
            ->get();
        return view('frontend.home', compact('data', 'data_pk', 'sp_hot', 'article', 'phone'));
    }

    public function register()
    {
        return view('frontend.modules.register');
    }

    public function post_register(Request $request)
    {
        $this->validate(
            $request,
            [
                'name' => 'required',
                'email' => 'required|unique:users',
                'password' => 'required'
            ],
            [
                'name.required' => 'Bạn hãy nhập tên',
                'email.required' => 'Bạn hãy nhập email',
                'email.unique' => 'Mỗi Email chỉ tại được một tài khoản',
                'password.required' => 'Bạn hãy nhập mật khẩu'
            ]
        );
        $message = "";
        $type_alert = "";
        $name = $request->has('name') ? $request->name : "";
        $email = $request->has('email') ? $request->email : "";
        $password = $request->has('password') ? $request->password : "";

        $user = User::create([
            'name' => $name,
            'email' => $email,
            'password' => bcrypt($password),
            'admin' => 0
        ]);
        if ($user) {
            $message = "Đăng ký tài khoản thành công. Hãy đăng nhập";
            $type_alert = "success";
        } else {
            $message = "Lỗi khi thêm mới";
            $type_alert = "error";
        }
        return redirect()->route('register')
            ->with('message', $message)
            ->with('type_alert', $type_alert);
    }

    public function login()
    {
        return view('frontend.modules.login');
    }

    public function post_login(Request $request)
    {
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            if (Auth::user()->admin == 1) {
                return redirect()->route('home');
            } else {
                return redirect()->route('index');
            }
        } else {
            return redirect()->route('login')
                ->with('message', 'Email hoặc mặt khẩu của bạn không đúng!!!');
        }
    }

    public function logout()
    {
        Auth::logout();
        return redirect()->route('index');
    }

    public function cart()
    {
        $carts = session()->get('cart');
        return view('frontend.modules.shopping-cart', compact('carts'));
    }

    public function cart_store(Request $request){
        $this->validate(
            $request,
            [
                'phone_number' => 'required',
                'address' => 'required'
            ],
            [
                'phone_number.required' => 'Lỗi. Hãy nhập số điện thoại của bạn!!!',
                'address.required' => 'Lỗi. Hãy nhập địa chỉ nhận hàng!!!'
            ]
        );
        $message = "";
        $type_alert = "";
        $id_user  = $request->has('id_user') ? $request->id_user : 0;
        $phone_number = $request->has('phone_number') ? $request->phone_number : "";
        $address = $request->has('address') ? $request->address : "";
        $order = OrderModel::create([
            'id_customer' => $id_user,
            'phone' => $phone_number,
            'address' => $address,
            'status' => 1
        ]);
        $id_order = $order->id;
        $cart = session()->get('cart');
        foreach ($cart as $id => $item){
            Order_detail_Model::create([
                'id_order' => $id_order,
                'id_sp' => $id,
                'qty' => $item['quantity']
            ]);
        }
        if ($order) {
            $message = "Bạn đã đặt hàng thành công";
            $type_alert = "success";
        } else {
            $message = "Lỗi";
            $type_alert = "error";
        }
        return redirect()->route('cart')
        ->with('message', $message)
        ->with('type_alert', $type_alert);
    }
    public function search(Request $request)
    {
        $data_search = ProductModel::where('name_product', 'like', '%' . $request->key . '%')
            ->orWhere('price_sale', $request->key)
            ->paginate(8);
        return view('frontend.modules.search', compact('data_search'));
    }

    public function addToCart($id)
    {
        $product = ProductModel::find($id);
        $cart = session()->get('cart');
        if (isset($cart[$id])) {
            $cart[$id]['quantity'] = $cart[$id]['quantity'] + 1;
        } else {
            $cart[$id] = [
                'id' => $product->id,
                'image' => $product->image,
                'name' => $product->name_product,
                'price' => $product->price_sale,
                'quantity' => 1
            ];
        }
        session()->put('cart', $cart);
        return response()->json([
            'code' => 200,
            'message' => 'succsess'
        ], status: 200);
    }

    public function updateCart(Request $request)
    {
        if ($request->id && $request->quantity)
        {
            $carts = session()->get('cart');
            if ($request->quantity == -99) 
            {
                unset($carts[$request->id]);
            } 
            else 
            {
                $carts[$request->id]['quantity'] = $request->quantity;
            }
            session()->put('cart', $carts);
            $carts = session()->get('cart');
            $cart = view('frontend.modules.shopping-cart', compact('carts'))->render();
            return response()->json([
                'code' => 200
            ], status: 200);
        }
    }
}
