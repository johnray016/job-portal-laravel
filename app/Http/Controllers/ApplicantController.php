<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Job;
use App\Applicant;
use App\User;
use App\Skill;
use App\Education;
use App\Work;
use App\Profile;
use DB;
class ApplicantController extends Controller
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

    public function show($id)  {
       	$job = Job::find($id);
    	return view('jobpost.application')->withJob($job);
    }

    public function store(Request $request, $id) {
    	$this->validate($request, [
            'application_letter' => 'required'
        ]);

    	$applicant = new Applicant;
    	$applicant->application_letter = $request->input('application_letter');
        $applicant->job_id = $request->input('job');
    	$applicant->status = 'pending';
    	$applicant->user_id = auth()->user()->id;   
    	$applicant->save();

    	$applicant->jobs()->attach($id);

    	return redirect("userdashboard");
    }
    public function view($id)  {
        $user = User::find($id);        
        $skills = Skill::orderBy('skill', 'asc')->get();     
        $profile = Profile::where('user_id', $id)->first();
        $educations = Education::where('user_id', $id)
                    ->orderBy('created_at', 'desc')
                    ->get();
        $works = Work::where('user_id', $id)
                    ->orderBy('created_at', 'desc')
                    ->get();            
        return view('freelancer.applicant', compact('user', 'profile', 'skills', 'educations', 'works'));
    }
}
