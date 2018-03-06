<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class JobCategory extends Model
{
    

   protected $table = 'job_categories';

    function jobs() {
    	return $this->hasMany('App\Job');
    }

}
