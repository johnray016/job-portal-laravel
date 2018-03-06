@extends('layouts.app')


@section('title')
    Profile - {{$user->name}}
@endsection

@section('select2css')
   <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
@endsection


@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8 my-5">
            @include('partials.alert')
            <div class="row mb-3">
                <div class="col-md-2 text-center">
                    @if(!empty($profile->photo))
                      <img class="p-0 profilepicture rounded-circle" src="/storage/photo/{{$profile->photo}}"   data-toggle="modal" data-target="#uploadphoto{{$user->id}}">   
                    @else 
                       <i class="fas fa-user-circle fa-10x text-muted"></i>
                    @endif  
                </div>
                <div class="col-md-10 pl-5">
                    <h3 class="h3 text-info d-inline-block">{{$user->name}}</h3>
                    <h5 class="h5">{{$profile !== null ? $profile->job_title : ''}}</h5>
                    <small class="h6 text-muted"><i class="fas fa-map-marker-alt"></i>  {{$profile !== null ? $profile->city.', '.$profile->province.', '.$profile->country : ''}}</small>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-12">
                  <h4 class="h5 text-info">Overview</h4>
                  <p>{!! $profile !== null ? nl2br(e($profile->overview)) : '' !!}</p>
                </div>
            </div>      
              <div class="card mb-0">
                  <div class="card-header">
                      <a class="card-title">
                         <h5 class="d-inline-block h5 text-success font-weight-bold mb-0">Skills</h5>
                      </a>
                  </div>
                  <div class="card-body">
                    @foreach($user->skills as $skill)
                     <button type="button" class="btn btn-sm btn-info mt-1">{{$skill->skill}}</button>
                    @endforeach
                  </div>
                  <div class="card-header">
                      <a class="card-title">
                        <h5 class="d-inline-block h5 text-success font-weight-bold mb-0">Educational Background</h5> 
                      </a>
                  </div>
                  <div class="card-body educationBackgroundBody">                      
                      @foreach($educations as $education)
                      <div>                          
                         <h5 class="h5 text-info">{{$education->course}}</h5>                            
                         <h6 class="h6 text-black">{{$education->school}}</h6> 
                         <small class="h6 mb-2 text-muted">{{ $education->year }}</small>
                         <div class="mt-3 text-info">{!! $education->achievement !!}</div>
                         <hr>
                      </div>
                      @endforeach
                  </div>
                  <div class="card-header">
                      <a class="card-title">
                        <h5 class="d-inline-block h5 text-success font-weight-bold mb-0">Work History</h5>
                      </a>
                  </div>
                  <div>
                      <div class="card-body workBackgroundBody">
                       @foreach($works as $work)
                        <div>
                           <h5 class="h5 text-info">{{$work->position}}</h5>                            
                           <h6 class="h6 text-black">{{$work->company}}</h6> 
                           <small class="h6 mb-2 text-muted">{{ $work->year }}</small>
                           <div class="mt-3 text-muted">{!! nl2br(e($work->description)) !!}</div>
                           <hr>
                         </div>
                      @endforeach
                      </div>
                  </div>
              </div>  
        </div>
    </div>
</div>
@endsection