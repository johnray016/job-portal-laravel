@extends('layouts.app')


@section('title')
    Dashboard - Client
@endsection


@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10 my-5 editFile">            
            @include('partials.alert')
            <div class="card card-default">  
                <div class="card-header"><h3 class="h3 text-center text-info">Edit Job Post</h3></div>
                <div class="card-body">
                  <form method="POST" id="updateJobForm" action="/jobs/{{ $job->id }}">
                  	{{ csrf_field() }}
                  	 <div class="form-group">
					    <label for="title">Title of Job Posting</label>
					    <input type="text" class="form-control" id="title" name="title" placeholder="Example: Web Developer with Ecommerce Experience" value="{{ $job->title }}">
					  </div>
					  <div class="form-group">
					    <label for="body">Job Description</label>
					    <textarea class="form-control" id="body" rows="3" name="body">{{ $job->body }}</textarea>
					  </div>
					  <div class="row">
						  <div class="form-group col-md-6">
						    <label for="budget">Propose Budget</label>
						    <input type="number" class="form-control" id="budget" name="budget" value="{{ $job->budget }}">
						  </div>
						  <div class="form-group col-md-6">
						    <label for="jobcategory">Job Category</label>
						    <select class="form-control" id="jobcategory" name="category_id">
						    	<option disabled value="0">...Select Job Category</option>
			                        @foreach ($categories as $category)
			                            <option value="{{$category->id}}" {{ $job->category_id == $category->id ? "selected" : ""}}>{{$category->category_name}}</option>
			                        @endforeach
						    </select>
						    </div>
					  </div>
					  <div class="row">
						  <div class="form-group col-md-6">
						    <label for="positionType">Position Type</label>
						    <select class="form-control" id="positionType" name="positionType" id="positionType">
						    	<option disabled value="0">...Select Job Category</option>
			                    <option value="part-time" {{ $job->position_type == "part-time" ? "selected" : ""}}>Part-Time</option>
			                   	<option value="full-time" {{ $job->position_type == "full-time" ? "selected" : ""}}>Full-Time</option>
						    </select>
						  </div>
						  <div class="form-group col-md-6">
						    <label for="project_duration">Project Duration</label>
						    <select class="form-control" id="project_duration" name="project_duration" id="project_duration">
						    	<option disabled value="0">...Select Project Duration</option>
			                    <option value="Less than 1 week" {{ $job->project_duration == "Less than 1 week" ? "selected" : ""}}>Less than 1 week</option>
			                   	<option value="Less than 1 month" {{ $job->project_duration == "Less than 1 month" ? "selected" : ""}}>Less than a month</option>
			                   	<option value="1 - 3 months" {{ $job->project_duration == "1 - 3 months" ? "selected" : ""}}>1 - 3 months</option>
			                   	<option value="3 - 6 months" {{ $job->project_duration == "3 - 6 months" ? "selected" : ""}}>3 - 6 months</option>
			                   	<option value="More than 6 months" {{ $job->project_duration == "More than 6 months" ? "selected" : ""}}>More than 6 months</option>
						    </select>
						  </div>
					  </div>
					  <input type="hidden" name="status" value="active">
					  <input type="hidden" name="_method" value="put" />
					  <button type="submit" class="btn btn-info" id="updateJobButton" data-id="{{$job->id}}">Update Job Post</button>
					  <span class="float-right"><a href="/dashboard"><button type="button" class="btn btn-success" >Back to dashboard</button></a></span>
                  </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('jsplugins') 
  <script src="/vendor/unisharp/laravel-ckeditor/ckeditor.js"></script>
  <script>
      CKEDITOR.replace( 'body' );
  </script>
  
@endsection