@extends('layouts.app')

@section('title')
    Dashboard
@endsection

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10 my-5">
            @include('partials.alert')
            <div class="card card-default">
            	<div class="row">
	            	<div class="col-lg-3 p-4">
		            		<h4 class="h4 text-info">Select Category</h4>
		            		<form method="get">
			            		<div class="form-check">
								 <input class="form-check-input catFilter" type="checkbox"  value="all" id="filterall" name="cat"
								 @if($cat > 0)
									{{'unchecked'}}
								 @else 
								 	{{'checked'}}	 	
								 @endif
								 >
								  <label class="form-check-label" for="filterall">All
								  </label>
								</div>
			            		@foreach($categories as $category)
				            		<div class="form-check">
									 <input class="form-check-input catFilter" type="checkbox" value="{{$category->id}}" id="defaultCheck1{{$category->id}}" name="cat"
									 @if($cat == $category->id)
									 	{{'checked'}}
									 @endif	
									 >
									  <label class="form-check-label" for="defaultCheck1{{$category->id}}">
									   {{$category->category_name}}
									  </label>
									</div>
			            		@endforeach


			            		<input type="text" name="search" class="form-control mt-2" placeholder="Search Job" value="{{$search}}">
			            		<button class="btn btn-info mt-2" id="searchCat">Seach</button>
		            		</form>
	            	</div>
	                <div class="card-body col-lg-9">
	                    @if(count($jobs) > 0)
		                    @foreach ($jobs as $job)
		                    <div class="card mb-3">
		                        <h5 class="h5 card-header"><a href="jobs/{{$job->id}}" class="text-info">{{$job->title}}</a></h5>
		                        <div class="card-block px-3">		                         
			                        <p class="small">
			                        	<span>Budget: &#36;{{$job->budget}}</span>
			                        	<span> - </span>
			                        	<span>Posted: {{$job->created_at->diffForHumans()}}</span>
			                        </p>
			                        <p class="small">
			                        	<span><span class="text-success"><i class="fas fa-briefcase"></i> Position Type:</span> {{ ucwords($job->position_type) }}</span>	
			                        	<br>
			                        	<span><span class="text-success"><i class="fas fa-hourglass-end"></i> Project Duration:</span> {{ ucwords($job->project_duration) }}</span>
			                        	<br>
			                        	<span><span class="text-success"><i class="fas fa-tags"></i> Category:</span> {{ ucwords($job->category->category_name) }}</span>
			                        </p>
		                  	  </div>
		                    </div>	    
		                    @endforeach
		                    {{ $jobs->links() }}
		                @else 
		                	<h2 class="h2 text-muted text-center">NO RESULT FOUND</h2>
		                @endif
	                </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
