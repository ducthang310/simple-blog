<?php

namespace App\Providers;

use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);

        \DB::listen(function($query) {
            $dbLog = new \Monolog\Logger('Query');
            $dbLog->pushHandler(new \Monolog\Handler\RotatingFileHandler(storage_path('logs/Query.log'), 5, \Monolog\Logger::DEBUG));

            $sql = $query->sql;
            $bindings = $query->bindings;
            $sql = str_replace(array('%', '?'), array('%%', '%s'), $sql);
            $sql = vsprintf($sql, $bindings);

            $dbLog->info($sql);
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
