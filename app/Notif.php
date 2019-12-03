<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Notif extends Model
{
    protected $fillable = [
        'user_id','ticket_id','content','readed',
    ];
}
