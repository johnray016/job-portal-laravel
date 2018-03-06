<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Skill extends Model
{
    function users() {
        return $this->belongsToMany('App\User');
    }
}
