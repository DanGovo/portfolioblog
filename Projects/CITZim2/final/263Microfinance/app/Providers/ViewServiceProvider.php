<?php

namespace App\Providers;
use App\Models\AccountManager;
use App\Models\AccountType;

use Illuminate\Support\ServiceProvider;
use View;

class ViewServiceProvider extends ServiceProvider
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
        View::composer(['blacklisted_clients.fields'], function ($view) {
            $account_managerItems = AccountManager::pluck('name','id')->toArray();
            $view->with('account_managerItems', $account_managerItems);
        });

        View::composer(['blacklisted_clients.fields'], function ($view) {
            $account_typeItems = AccountType::pluck('type','id')->toArray();
            $view->with('account_typeItems', $account_typeItems);
        });
        //
    }
}
