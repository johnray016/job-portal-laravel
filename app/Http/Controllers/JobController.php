<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Job;
Use App\JobCategory;
Use App\user;
use Illuminate\Support\Facades\DB;

class JobController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()  {
       if(Auth()->user()->role !== 2) {
            return redirect('/')->with('error', 'Unauthorize Page');
        } 
       $user_id = Auth()->user()->id;
       $user = User::find($user_id);
       $jobs = Job::where('user_id', $user->id)
               ->orderBy('created_at', 'desc')
               ->paginate(5); 
       return view('client.jobs', compact('jobs', 'user'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = JobCategory::all();
        return view('jobpost.create')->with('categories', $categories);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'body' => 'required',
            'budget' => 'required',
            'category_id' => 'required',
            'positionType' => 'required',            
            'project_duration' => 'required'
        ]);

        $job = new Job;
        $job->title = $request->input('title');
        $job->body = $request->input('body');
        $job->budget = $request->input('budget');
        $job->category_id = $request->input('category_id');
        $job->position_type = $request->input('positionType');
        $job->project_duration = $request->input('project_duration'); 
        $job->user_id = auth()->user()->id;       
        $job->save();

        return redirect('/dashboard')->with('success', "<i class='fas fa-check fa-fw'></i> Job Posting Created");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user_id = Auth()->user()->id;
        $job = Job::find($id); 
        $jobcount = Job::where('user_id', $job->user_id)->count();
        $exist = DB::table('applicants')
            ->join('jobs', 'applicants.job_id', '=', 'jobs.id')
            ->when($id, function ($query) use ($id) {
                    return $query->where('applicants.job_id', $id);
                })
            ->when($user_id, function ($query) use ($user_id) {
                    return $query->where('applicants.user_id', $user_id);
                })
            ->first();  
        if ($exist == null) {
            $result = 'not exist';          
        } else {
             $result = 'exist';
        }     

        return view('jobpost.show', compact('job', 'jobcount', 'result'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       $job = Job::find($id);
       $categories = JobCategory::all();
       if($job->user_id != auth()->user()->id) {
          return redirect('/')->with('error', 'Unauthorize Page');
       } 
       return view('jobpost.edit', compact('job','categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'title' => 'required',
            'body' => 'required',
            'budget' => 'required',
            'category_id' => 'required',
            'positionType' => 'required',            
            'project_duration' => 'required'
        ]);

        $job = Job::find($id);
        $job->title = $request->input('title');
        $job->body = $request->input('body');
        $job->budget = $request->input('budget');
        $job->category_id = $request->input('category_id');
        $job->position_type = $request->input('positionType');
        $job->project_duration = $request->input('project_duration'); 
        $job->user_id = auth()->user()->id;       
        $job->save();

        return redirect('/dashboard');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       $job = Job::findOrFail($id);

        //check for correct user
        if(Auth()->user()->id !== $job->user_id) {
            return redirect('/')->with('error', 'Unauthorize Page');
        }

        $job->delete();
    }
}
