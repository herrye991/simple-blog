<?php

namespace App\Http\Controllers;
use Auth;
use Redirect;
use App\Models\User;

use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function login()
    {
        $user = User::first();
        if (!$user) {
            User::create([
                'name' => 'Admin',
                'email' => 'admin@simple-blog.com',
                'password' => bcrypt('admin')
            ]);
        }
        return view('layouts.admin.login');
    }

    public function loginPost(Request $request)
    {
        $credentials = [
			'email' => $request->email,
			'password' => $request->password,
		];
		$remember_me = (!empty($request->remember_me)) ? true : false;
		if(Auth::guard('web')->attempt($credentials)){
			$user = User::where(['email' => $credentials['email']])->first();
			Auth::login($user, $remember_me);
            $notification = array(
                'message' => 'Login Success', 
                'alert-type' => 'success',
			);
			return Redirect::to(route('admin.index'))->with($notification);
        }else{
            $notification = array(
                'message' => 'Login Failed', 
                'alert-type' => 'error',
            );
            return Redirect::back()->with($notification);
        }
    }

    public function logout()
    {
        $notification = array(
			'message' => 'Logout Success', 
			'alert-type' => 'info',
		);
		Auth::logout();
		return Redirect::to(route('login'))->with($notification);
    }
}
