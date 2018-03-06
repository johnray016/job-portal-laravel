@extends('layouts.app')

@section('title')
    Proposals
@endsection

@section('content')
<div class="container">
    <div class="row justify-content-center">
       <div class="col-md-10 my-5">            
            @include('partials.alert')
            <div class="card card-default">  
                <div class="card-header">
                	<h4 class="h4 text-info">PROPOSAL</h4>
                </div>
                <div class="card-body pt-0 table-responsive py-3">
                	<div class="row">
                		<div class="col-sm-8">                			
                			<div>{!! nl2br(e($applicant->application_letter)) !!}</div>
                		</div>
                		<div class="col-sm-4">
                			 <ul class="list-unstyled">
                                    <li class="mb-2">
                                        @if(!empty($applicant->photo))
                                           <p class="text-center"><img src="/storage/photo/{{$applicant->photo}}" class="img-fluid w-50 h-50 rounded-circle"></p> 
                                        @else 
                                           <p class="text-center"><i class="fas fa-user-circle fa-6x text-muted"></i></p>
                                        @endif 
                                    </li>
                                    <li class="mb-2">
                                       <p class="h4 text-info text-center">{{ $applicant->name }}</p>
                                       <p class="h6">{{$applicant->job_title}}</p>
                                    </li>
                                    <li class="mb-2">
                                    	<i class="fas fa-map-marker-alt"></i> <span>{{$applicant->city}}, {{$applicant->province}} {{$applicant->country}}</span>
                                    </li>
                                    <li class="mb-2">
                                    	<i class="fas fa-envelope"></i> Received: {{$job->created_at->diffForHumans()}}
                                    </li>
                                    <li class="mb-2">
                                        <a href="/applicant/profile/{{$applicant->user_id}}" class="btn btn-info w-100">View Profile</a>
                                    </li>
                                     @if ($applicant->status == 'hired')
                                        <td class="text-center">
                                          <h4 class="text-center"><span class="badge badge-success w-100"><i class="fas fa-check"></i> <strong>HIRED</span></h4>
                                       </td>
                                     @elseif ($applicant->status == 'rejected')
                                          <td class="text-center">
                                          <h4 class="text-center"><span class="badge badge-danger w-100"><i class="fas fa-times"></i> <strong>REJECTED</span></h4>
                                       </td>
                                     @else
                                        <li>
                                        <a href="{{$applicant->id}}/hire" class="btn btn-success w-100 mb-2">HIRE</a>
                                        </li>
                                        <li>
                                            <a href="{{$applicant->id}}/reject" class="btn btn-danger w-100">REJECT</a>
                                        </li>
                                      @endif   
                                  
                                </ul>
                		</div>
                	</div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection



