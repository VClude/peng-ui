<?php

namespace App;
use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use HasApiTokens, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name','orgcode','faculty','studyprog','eduprog','email', 'identitas', 'noidentitas', 'imgurl' ,'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
    public function surveyor()
    {
        return $this->hasMany('\Kordy\Ticketit\Models\Agent', 'ticketit_categories_users', 'user_id');
    }
    public static function isAgent($id)
    {
        if (isset($id)) {
            $user = User::find($id);
            if ($user->ticketit_agent) {
                return true;
            }

            return false;
        }
        if (auth()->check()) {
            if (auth()->user()->ticketit_agent) {
                return true;
            }
        }
    }
    public static function isAdmine($id)
    {
        if (isset($id)) {
            $user = User::find($id);
            if ($user->ticketit_admin) {
                return true;
            }

            return false;
        }
        if (auth()->check()) {
            if (auth()->user()->ticketit_admin) {
                return true;
            }
        }
    }    
}
