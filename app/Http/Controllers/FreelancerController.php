<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Job;
use App\JobCategory;
use App\User;
use App\Profile;
use App\Skill;
use App\Education;
Use App\Work;
use Image;
use DB;

class FreelancerController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth', ['except' => 'index']);
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request) {
        $categories = JobCategory::all();
        $cat = $request->input('cat');
        $search = $request->input('search');


        if($request->has('cat') && $cat != 'all') {
            if($request->has('search') && $search != null) {
                $jobs = Job::where('category_id', $cat)
                ->where(function ($query) use ($search) {
                        $query->where('title', 'like', '%'.$search.'%')
                              ->orWhere('body', 'like', '%'.$search.'%');
                })->orderBy('created_at', 'desc')
                ->paginate(5)
                ->appends([
                    'cat' => request('cat'),
                    'search' => request('search')
                ]);
            } else {
                $jobs = Job::where('category_id', $cat)
                ->orderBy('created_at', 'desc')
                ->paginate(5)
                ->appends([
                    'cat' => request('cat')
                ]);
            } 
        } else {
            $jobs = Job::where('title', 'like', '%'.$search.'%')
            ->orWhere('body', 'like', '%'.$search.'%')
            ->orderby('created_at', 'desc')
            ->paginate(5)
            ->appends([
                'search' => request('search')
            ]);
        }
        
        return view('freelancer.userdashboard', compact('categories', 'jobs', 'cat', 'search'));
    }

    public function profile() {
        if(Auth()->user()->role !== 1) {
            return redirect('/')->with('error', 'Unauthorize Page');
        } 
        $user_id = Auth()->user()->id;
        $user = User::find($user_id);
        $skills = Skill::orderBy('skill', 'asc')->get();     
        $profile = Profile::where('user_id', $user->id)->first();
        $educations = Education::where('user_id', $user->id)
                    ->orderBy('created_at', 'desc')
                    ->get();
        $works = Work::where('user_id', $user->id)
                    ->orderBy('created_at', 'desc')
                    ->get(); 
        return view('freelancer.profile', compact('user', 'profile', 'skills', 'educations', 'works'));
    }

    public function storeProfile(Request $request) {
        if(Auth()->user()->role !== 1) {
            return redirect('/')->with('error', 'Unauthorize Page');
        } 

        $profile = new Profile;
        $profile->job_title = $request->title;
        $profile->city = $request->city;
        $profile->province = $request->province;
        $profile->country = $request->country;
        $profile->user_id = Auth()->user()->id;
        $profile->overview = $request->overview;        
        $profile->save();
    }

    public function updateProfile(Request $request) {
        if(Auth()->user()->role !== 1) {
            return redirect('/')->with('error', 'Unauthorize Page');
        } 
        $id = $request->id;
        $profile = Profile::where('user_id', $id)-> first();
        $profile->job_title = $request->title;
        $profile->city = $request->city;
        $profile->province = $request->province;
        $profile->country = $request->country;
        $profile->overview = $request->overview;        
        $profile->save();
    }

     public function uploadPhoto(Request $request) {
        if(Auth()->user()->role !== 1) {
            return redirect('/')->with('error', 'Unauthorize Page');
        } 
        $id = Auth()->user()->id;
        $user = User::find($id);
        $profile = Profile::where('user_id', $id)-> first();
        if($request->hasFile('profilepicture')) {
            $image = $request->file('profilepicture');
            $type = pathinfo($image, PATHINFO_EXTENSION);
            $filename = time().'.'.$image->GetClientOriginalExtension();
            $location = $request->file('profilepicture')->storeAs('public/photo', $filename);
            // $location = storage_path('photo/', $filename);
            Image::make($image->getRealPath())->resize(128, 128)->save($type, $location);
            $profile->photo = $filename;
        }
        
        $profile->save();
        return redirect('userdashboard');
    }
     public function updatePhoto(Request $request) {
        if(Auth()->user()->role !== 1) {
            return redirect('/')->with('error', 'Unauthorize Page');
        } 
        $id = Auth()->user()->id;
        $profile = Profile::where('user_id', $id)-> first();
        if($request->hasFile('profilepicture')) {
            $image = $request->file('profilepicture');
            $type = pathinfo($image, PATHINFO_EXTENSION);
            $filename = time().'.'.$image->GetClientOriginalExtension();
            $location = $request->file('profilepicture')->storeAs('public/photo', $filename);
            // $location = storage_path('photo/', $filename);
            Image::make($image->getRealPath())->resize(128, 128)->save($type, $location);
            $profile->photo = $filename;
        }
        if($request->hasFile('profilepicture')) {
            dd($profile->photo);
            // Storage::delete('public/photo/' . $profile->photo);
            // $profile->photo = $filename;
        }    
        $profile->save();
        return redirect('userdashboard');
    }

    public function myJobs() {
        if(Auth()->user()->role !== 1) {
            return redirect('/')->with('error', 'Unauthorize Page');
        } 
        $id = Auth()->user()->id;
        $user = User::find($id);
        $jobs = DB::table('applicants')
            ->join('jobs', 'applicants.job_id', '=', 'jobs.id')
            ->when($id, function ($query) use ($id) {
                    return $query->where('applicants.user_id', $id);
                })
            ->orderBy('applicants.created_at', 'desc')
            ->get();
        return view('freelancer.my_jobs')->withUser($user)->withJobs($jobs);
    }

}
