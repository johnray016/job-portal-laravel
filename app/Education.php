<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Education extends Model
{
    function user() {
    	return $this->belongsTo('App\User');
   }
}
