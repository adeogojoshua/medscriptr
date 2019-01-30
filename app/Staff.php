<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Staff extends Model
{
    protected $table = 'staffs';
    protected $fillable = [
        'first_name', 'last_name', 'email', 'role',
    ];
}
