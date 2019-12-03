<?php

namespace App\Providers;
use Kordy\Ticketit\Models\Ticket;
use Laravel\Passport\Passport;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
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
        // $this->registerPolicies();
        Passport::routes();
        Passport::tokensExpireIn(now()->addDays(7));
        Passport::refreshTokensExpireIn(now()->addDays(14));
        Schema::defaultStringLength(191);
    }
}
