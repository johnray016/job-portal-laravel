<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Job;
use App\Skill;

class AdminController extends Controller
{
   
    public function showFreelancers() {
    	$freelancers = User::where(function ($query) {
                        $query->where('role', '1')
                              ->orWhere('role', '4');
               			 })
		    	->orderBy('created_at', 'desc')
		    	->paginate(5);
    	return view('admin.freelancers', compact('freelancers'));
    }

    public function banFreelancer(Request $request) {
    	$id = $request->id;
    	$user = User::find($id);
    	$user->role = '4';
    	$user->save();
    }

    public function unbanFreelancer(Request $request) {
    	$id = $request->id;
    	$user = User::find($id);
    	$user->role = '1';
    	$user->save();
    }

    public function showClients() {
    	$clients = User::where(function ($query) {
                        $query->where('role', '2')
                              ->orWhere('role', '4');
               			 })
		    	->orderBy('created_at', 'desc')
		    	->paginate(5);
    	return view('admin.clients', compact('clients'));
    }
		
	 public function unbanClient(Request $request) {
    	$id = $request->id;
    	$user = User::find($id);
    	$user->role = '2';
    	$user->save();
    }		
    public function showJobs() {
    	$jobs = Job::orderBy('created_at', 'desc')
		    	->paginate(5);
    	return view('admin.jobs', compact('jobs'));
    }

    public function deleteJob($id)
    {
       $job = Job::findOrFail($id);    
       $job->delete();
    }

    public function showCategories() {
        return view('admin.categories');
    }

    public function addCategories(Request $request) {
        $categories = new Skill;
        $categories->skill = $request->input('add_categories');
        $categories->save();
        return view('admin.categories');
    }   
}
