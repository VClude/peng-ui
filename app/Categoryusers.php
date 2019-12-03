<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Kordy\Ticketit\Models\Ticket;
class Categoryusers extends Model
{
    protected $table = 'ticketit_categories_users';
    //
    public function details()
    {
        return $this->BelongsTo('Kordy\Ticketit\Models\Category', 'category_id');
    }
    public function useres()
    {
        return $this->BelongsTo('App\User', 'user_id');
    }
    public function tickets()
    {
        return $this->hasMany('Kordy\Ticketit\Models\Ticket', 'category_id');
    }
}
