@extends('layouts.app2')

@section('content')
<div class="container">
    <div class="row justify-content-center">
    	 @if(count($errors)>0)
				<div class="alert alert-danger w-50 mx-auto mt-3 text-center">
					<ul>
						@foreach($errors->all() as $error)
							<li style="list-style: none;">{{$error}}</li>
						@endforeach
					</ul>
				</div>
			@endif
        {{-- Fill Work History --}}
        <div class="col-md-10 my-5" id="FillWorkContainer">           
              <form action="{{url("/fillworkhistory/store")}}" method="post">
                {{ csrf_field() }}
                <div class="row mb-3">
                <h3>Work History</h3>
                  <div class="input-group mb-3">
                     <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <span class="input-group-text"><i class="fas fa-user"></i>&nbsp;Position</span>
                        </div>
                        <input type="text" name="position" class="form-control">
                      </div>
                      <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <span class="input-group-text"><i class="far fa-building"></i>&nbsp;Company</span>
                        </div>
                        <input type="text" name="company" class="form-control">
                      </div>
                      <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <span class="input-group-text"><i class="far fa-calendar"></i>&nbsp;Year</span>
                        </div>
                        <input type="text" name="year" class="form-control">
                      </div>
                      <div class="form-group w-100">
                        <span class="input-group-text"><i class="fas fa-briefcase"></i>&nbsp;Description</span>
                        <textarea class="form-control"  rows="8" name="description"></textarea>
                      </div>
                    <button type="submit" class="btn btn-info float-right px-5">Save</button>
                </div>  
              </form>
        </div>
    </div>
</div>

@endsection