@extends('layouts.app')


@section('title')
    Dashboard - Client
@endsection


@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10 my-5">            
            @include('partials.alert')
            <div class="card card-default">  
                <div class="card-header"><h3 class="h3 d-inline-block text-info">Client Dashboard</h3><span class="float-right"><a href="/jobs/create"><button class="btn btn-info">Post a Job</button></a></span></div>
                <div class="card-body pt-0 table-responsive">
                   @if(count($jobs) > 0)
                      <table class="table table-striped " id="jobTable">
                          <thead>
                            <tr>
                              <th>Job</th>
                              <th>Date Posted</th>
                              <th>Posted By</th>                  
                              <th></th>
                              <th></th>
                            </tr>
                          </thead>
                      <tbody>
                         @foreach ($jobs as $job)
                          <tr>
                            <th scope="row"><h5 class="h5"><a href="jobs/{{$job->id}}" class="text-success">{{$job->title}}</a></h5 ></th>
                            <td><small>{{$job->created_at->diffForHumans()}}</small></td>
                            <td>{{$job->user->name}}</td>
                            <td>
                              <i class="far fa-edit text-info" id="editJob" data-id="{{$job->id}}"></i>
                            </td>
                            <td>
                                 <i class="far fa-trash-alt text-danger" id="deleteJob" data-id="{{$job->id}}">
                            </td>
                          </tr>
                          @endforeach
                        @else
                            <p class="mt-5 text-center mb-5">You don't have any job post</p>
                        @endif
                      </tbody>
                    </table>
                    {{$jobs->links()}}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


