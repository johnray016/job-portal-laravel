<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Work extends Model
{
	
    function user() {
    	return $this->belongsTo('App\User');
   }
}
