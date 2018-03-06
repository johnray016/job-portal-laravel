<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Auth;
use App\Profile;
use App\Education;
use App\Work;

class PageController extends Controller
{
   public function index() {
	 	
		return view('index');
	}  

}
