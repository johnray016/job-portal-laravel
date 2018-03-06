@extends('layouts.app2')

@section('content')
<div class="container">
    <div class="row justify-content-center fillinformation">
    	 @if(count($errors)>0)
				<div class="alert alert-danger w-50 mx-auto mt-3 text-center">
					<ul>
						@foreach($errors->all() as $error)
							<li style="list-style: none;">{{$error}}</li>
						@endforeach
					</ul>
				</div>
			@endif
        <div class="col-md-10 my-5" id="FillInformationContainer">           
            	<form action="/fillinformation/store" method="post" id="work">
            		{{ csrf_field() }}
            		<div class="row mb-3">
            		<h3>Personal Information</h3>
	            	<div class="input-group mb-3">
	                  <div class="input-group-prepend">
	                    <span class="input-group-text"><i class="fas fa-briefcase"></i>&nbsp;Title</span>
	                  </div>
	                  <input type="text" name="job_title" class="form-control" placeholder="Example: Web Developer | Article Writer | Virtual Assistant"><br>
	                </div>
	                <div class="input-group mb-3">
	                  <div class="input-group-prepend">
	                    <span class="input-group-text"><i class="fas fa-map-marker-alt" va></i>&nbsp;City</span>
	                  </div>
	                  <input type="text" name="city" class="form-control">
	                </div>
	                <div class="input-group mb-3">
	                  <div class="input-group-prepend">
	                    <span class="input-group-text"><i class="fas fa-map-marker-alt"></i>&nbsp;Province</span>
	                  </div>
	                  <input type="text" name="province" class="form-control">
	                </div>
	                <div class="input-group mb-3">
	                  <div class="input-group-prepend">
	                    <span class="input-group-text"><i class="fas fa-map-marker-alt"></i>&nbsp;Country</span>
	                  </div>
	                  <input type="text" name="country" class="form-control">
	                </div>
	                <div class="form-group w-100">
	                  <span class="input-group-text"><i class="fas fa-briefcase"></i>&nbsp;Overview</span>
	                  <textarea class="form-control" name="overview"  rows="8	" placeholder="Tell something about yourself..."></textarea>
	                </div>
	                <button type="submit" class="btn btn-info float-right px-5">Next</button>
            	</div> 	
              </form>
        </div>


       

        

    </div>
</div>

@endsection