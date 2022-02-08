<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\UserModel;


class UserController extends Controller
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
        $data = UserModel::orderBy('created_at', 'DESC')->search()->paginate($perPage);
        return view('backend.modules.user.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.modules.user.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $message = "";
        $type_alert = "";
        $id  = $request->has('id') ? $request->id : 0;
        $name = $request->has('name') ? $request->name : "";
        $email = $request->has('email') ? $request->email : "";
        $pass = $request->has('pass') ? $request->pass : "";
        $role = $request->has('role') ? $request->role : 0;
        if (!$id) {
            $user = UserModel::create([
                'name' => $name,
                'email' => $email,
                'password' => $pass,
                'role' => $role
            ]);
            if ($user) {
                $message = "Thêm mới thành công thành viên:" . $user->name;
                $type_alert = "success";
            } else {
                $message = "Lỗi khi thêm mới";
                $type_alert = "error";
            }
        }
        else {
            $user_edit = UserModel::find($id);
            if ($user_edit) {
                $user_edit->update([
                    'name' => $name,
                    'email' => $email,
                    'password' => bcrypt($pass),
                    'role' => $role
                ]);
                $check = $user_edit->save();
                if ($check) {
                    $message = "Cập nhật thành công: " . $user_edit->name;
                    $type_alert = "success";
                } else {
                    $message = "Cập nhật thất bại: " . $user_edit->name;
                    $type_alert = "error";
                }
            } else {
                $message = "Không tồn tại bản ghi có id: " . $id;
                $type_alert = "warning";
            }
        }
        return redirect()->route('user.index')
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
        $item = UserModel::find($id);
        return view('backend.modules.user.edit', compact('item'));
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
        //
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
        $data = UserModel::find($id);
        $check = $data->delete();
        
        if ($check) {
            $message = "Xóa thành công bản ghi ";
            $type_alert = 'success';
        } else {
            $message = "Có lỗi hệ thống !";
            $type_alert = 'warning';
        }
        return redirect()->route('user.index')
            ->with('message', $message)
            ->with('type_alert', $type_alert);
    }
}
