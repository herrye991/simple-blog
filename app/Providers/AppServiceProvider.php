<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use App\Models\Configs;
use App\Models\User;
use Illuminate\Pagination\Paginator;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $config = Configs::first();
        $user = User::first();
        if ($config) {
            $app_name = $config->app_name;
            $app_sub_name = $config->app_sub_name;
        } else {
            $app_name = config('app.name');
            $app_sub_name = config('app.sub_name');
        }

        if ($user) {
            $instagram = $user->instagram;
            $facebook = $user->facebook;
            $github = $user->github;
        } else {
            $instagram = config('instagram');
            $facebook = config('facebook');
            $github = config('github');
        }
        
        View::share([
            'app_name' => $app_name,
            'app_sub_name' => $app_sub_name,
            'instagram' => $instagram,
            'facebook' => $facebook,
            'github' => $github,
        ]);
        Paginator::useBootstrap();
    }
}
