<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Http\Request;

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
     * 
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot(Request $request)
    {

        // Code starts for separate admin and front
        $path_array = $request->segments();
        //dd($path_array);
        $admin_route = config('app.admin_route');
        
        //If URL path is having "admin" then mark the current scope as Admin
        if (in_array($admin_route, $path_array)) {
            config(['app.app_scope' => 'admin']); 
        }

        $app_scope = config('app.app_scope');

        //if App scope is admin then define View/Theme folder path
        if ($app_scope == 'admin') {
            $path = resource_path('admin/views');
        } else {
            $path = resource_path('front/views');
        }

        view()->addLocation($path);
    // Code ends for separate admin and front
    
    }
}
