<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
   function category() {
    	return $this->belongsTo('App\JobCategory');
   }
   function user() {
    	return $this->belongsTo('App\User');
   }

   function applicants() {
        return $this->belongsToMany('App\Applicant', 'applicant_job', 'job_id', 'applicant_user_id');
    }
}
