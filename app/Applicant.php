<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Applicant extends Model
{
	 protected $primaryKey = 'user_id';

   public $incrementing = false;
	
    function jobs() {
        return $this->belongsToMany('App\Job')->withTimeStamps();
    }

    function user() {
    	return $this->belongsTo('App\User');
   }

   function profile() {
    	return $this->hasOne('App\Profile', 'profile');
   }
}
