<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Configs;
use Illuminate\Support\Facades\Hash;
use Auth;

class SettingsController extends Controller
{
    public function profile(Request $request)
    {
        if ($request->ajax()) {
            $user = User::first();
            $user->update([
                'name' => $request->name,
                'instagram' => $request->instagram,
                'facebook' => $request->facebook,
                'github' => $request->github,
            ]);
        }
    }

    public function setting(Request $request)
    {
        if ($request->ajax()) {
            $user = User::first();
            if (Hash::check($request->old_password, $user->password)) {
                $user->update([
                    'password' => Hash::make($request->new_password),
                ]);
            } else {
                return response()->json(['msg' => 'Wrong Password'], 401);
            }
        }
    }

    public function config(Request $request)
    {
        if ($request->ajax()) {
            Configs::first()->update([
                'app_name' => $request->app_name,
                'app_sub_name' => $request->app_sub_name,
            ]);
        }
    }
}
