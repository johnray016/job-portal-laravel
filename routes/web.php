<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Auth::routes();

// Page Controller

Route::get('/', 'PageController@index');


// Job Controller

Route::resource('/jobs', 'JobController');


// Freelancer Controller

Route::get('/userdashboard', 'FreelancerController@index');

Route::post('/profile/store', 'FreelancerController@storeProfile');

Route::post('/profile/edit', 'FreelancerController@updateProfile');

Route::post('/profile/uploadphoto', 'FreelancerController@uploadPhoto');

Route::post('/profile/updatephoto', 'FreelancerController@updatePhoto');

Route::get('/profile/{name}', 'FreelancerController@profile');

Route::get('/my-jobs', 'FreelancerController@myJobs');


// Skill Controller

Route::post('/profile/skills/store', 'SkillController@storeSkill');

Route::post('/profile/skills/edit', 'SkillController@editSkill');

// Education Controller

Route::post('/profile/education/store', 'EducationController@storeEducation');

Route::post('/profile/education/update', 'EducationController@updateEducation');

Route::post('/profile/education/delete', 'EducationController@deleteEducation');

// Client Controller

Route::get('/dashboard', 'ClientController@dashboard');

Route::get('/shortlist/{id}', 'ClientController@shortlist');

Route::get('/proposal/{id}/{user_id}', 'ClientController@proposal');

Route::get('/proposal/{id}/{user}/hire', 'ClientController@hire');

Route::get('/proposal/{id}/{user}/reject', 'ClientController@reject');

// Work Controller

Route::post('/profile/work/store', 'WorkController@storeWork');

Route::post('/profile/work/update', 'WorkController@updateWork');

Route::post('/profile/work/delete', 'WorkController@deleteWork');

// Applicant Controller

Route::get('/job/application/{id}', 'ApplicantController@show');

Route::post('/job/application/{id}/store', 'ApplicantController@store');

Route::get('/applicant/profile/{id}', 'ApplicantController@view');

// Admin Controller

Route::get('/panel/freelancer', 'AdminController@showFreelancers');

Route::post('/panel/users/ban', 'AdminController@banFreelancer');

Route::post('/panel/freelancer/unban', 'AdminController@unbanFreelancer');

Route::get('/panel/clients', 'AdminController@showClients');

Route::post('/panel/client/unban', 'AdminController@unbanClient');

Route::get('/panel/jobs', 'AdminController@showJobs');

Route::get('/panel/jobs/delete/{id}', 'AdminController@deleteJob');

Route::get('/panel/categories', 'AdminController@showCategories');

Route::post('/panel/categories/add', 'AdminController@addCategories');


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
