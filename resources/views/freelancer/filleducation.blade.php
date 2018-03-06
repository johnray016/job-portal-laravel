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
        {{-- Fill Education Background --}}
        <div class="col-md-10 my-5" id="FillEducationContainer">           
              <form action="{{url("filleducation/store")}}" method="post">
                {{ csrf_field() }}
                <div class="row mb-3">
                <h3>Educational Background</h3>
                  <div class="input-group mb-3">
                            <div class="input-group-prepend">
                              <span class="input-group-text"><i class="fas fa-graduation-cap"></i>&nbsp;Course</span>
                            </div>
                            <input type="text" class="form-control" name="course">
                          </div>
                          <div class="input-group mb-3">
                            <div class="input-group-prepend">
                              <span class="input-group-text"><i class="far fa-building"></i>&nbsp;School</span>
                            </div>
                            <input type="text" class="form-control" name="school">
                          </div>
                          <div class="input-group mb-3">
                            <div class="input-group-prepend">
                              <span class="input-group-text"><i class="far fa-calendar"></i>&nbsp;Year</span>
                            </div>
                            <input type="text" class="form-control" name="year">
                          </div>
                          <div class="input-group mb-3">
                            <div class="input-group-prepend">
                              <span class="input-group-text"><i class="fas fa-trophy"></i>&nbsp;Achievement</span>
                            </div>
                            <input type="text" class="form-control" name="achievement">
                          </div>
                    <button type="submit" class="btn btn-info float-right px-5">Next</button>
                </div>  
              </form>
        </div>

    </div>
</div>

@endsection