<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class Login extends Controller
{
    public function login()
    {
        return view('backend.modules.login');
    }

    public function post_login(Request $request)
    {
        if(Auth::attempt(['email' => $request->email, 'password' => $request->password]) ){

            if(Auth::user()->admin == 1)
            {
                return redirect()->route('home');
            }
            else{
                return redirect()->route('index');
            }
        }
        else
        {
            return redirect()->route('login')
            ->with('message', 'Email hoặc mặt khẩu của bạn không đúng!!!');
        }
    }

    public function out(){
        Auth::logout();
        return redirect()->route('login-admin');
    }
}
