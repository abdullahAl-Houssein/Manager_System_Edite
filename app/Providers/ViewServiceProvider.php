<?php

namespace App\Providers;

use App\Models\Category;
use App\Models\Setting;
use Illuminate\Support\ServiceProvider;

class ViewServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    public function register(): void
    {
        view()->composer('Aouther.copmenet.header' , function ($view){
           $view->with('cats', Category::select('id','name')->get());
           $view->with('sett', Setting::select('logo','favicon')->first());
        });
        view()->composer('Aouther.copmenet.footer' , function ($view){
            $view->with('sett', Setting::first());
        });
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
        //
    }
}
