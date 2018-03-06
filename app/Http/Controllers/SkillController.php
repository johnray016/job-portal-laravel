<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Skill;
use App\User;

class SkillController extends Controller
{

	/**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */

  public function storeSkill(Request $request) {
     $id = Auth()->user()->id;
     $user = User::find($id);
     $user->skills()->sync($request->skills, false);
     return redirect('userdashboard');
  }




  public function editSkill(Request $request) {
      $id = Auth()->user()->id;
     $user = User::find($id);
     $user->skills()->sync($request->skills);
     return redirect('userdashboard');
    
  }

}
