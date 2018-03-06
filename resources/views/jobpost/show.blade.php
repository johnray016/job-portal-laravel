@extends('layouts.app')


@section('title')
    {{$job->title}}
@endsection


@section('content')
<div class="container">
    <div class="row justify-content-center my-5">
        @include('partials.alert')
        <div class="col-md-7">

           <h3 class="h3 text-info mb-4">{{$job->title}}</h3>
           <p class="h5 text-success">Budget: <i class="fas fa-dollar-sign"></i>{{number_format($job->budget)}}</p>
           {!! $job->body !!}

        </div>
        <div class="col-md-3 h6">
        	<ul class="list-unstyled">
        		<li class="mb-2">
        			<span class="text-success">
        				<i class="fas fa-clock"></i> Posted: 
        			</span>
        			{{$job->created_at->diffForHumans()}}
        		</li>
        		<li class="mb-2">
        			<span class="text-success">
        				<i class="fas fa-briefcase"></i> Position : 
        			</span>
        			{{ucwords($job->position_type)}}
        		</li>
        		<li class="mb-2">
        			<span class="text-success">
        				<i class="fas fa-hourglass-end"></i> Project Duration:  
        			</span>
        			{{ ucwords($job->project_duration) }}
        		</li>
        		<li class="mb-2">
        			<span class="text-success">
        				<i class="fas fa-tags"></i> Category: 
        			</span>
        			{{ ucwords($job->category->category_name) }}
        		</li>
        	</ul>
        	<hr>
        	<ul class="list-unstyled">
        		<li class="mb-2 h5 text-info">About the Client</li>
        		<li class="mb-2">
        			<span class="text-primary">Job Posting History: </span>{{$jobcount}} jobs posted</li>
        		<li class="mb-2">
        			<span class="text-primary">Member Since: </span>{{date("M Y", strtotime($job->user->created_at))}}
        		</li>
        	</ul>
        	@guest
        	@else
	        	@if(Auth::user()->role == 1)
                    @if ($result == 'exist')
                       <button class="btn btn-success btn-block"><i class="fas fa-check"></i>Applied</button>
                    @else
	        		<a href="{{url("/job/application/$job->id")}}"><button class="btn btn-primary btn-block"> Apply to this Job</button></a>
                    @endif
	        	@endif
         	@endguest



        </div>
    </div>
</div>
@endsection
