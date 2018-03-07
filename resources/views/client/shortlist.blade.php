@extends('layouts.app')


@section('title')
    Shortlist Candidate
@endsection


@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10 my-5">
            @include('partials.alert')
            <div class="card card-default text-white">
                <ul class="nav nav-tabs" role="tablist">
                    <li class="nav-item col-sm-6 p-0 text-center">
                        <a class="nav-link active py-4" data-toggle="tab" href="#tabs-1" role="tab">
                            <h3 class="m-0">Job Post</h3>
                        </a>
                    </li>
                    <li class="nav-item col-sm-6 p-0 text-center">
                        <a class="nav-link py-4" data-toggle="tab" href="#tabs-2" role="tab">
                            <h3 class="m-0">Review Proposals</h3>
                        </a>
                    </li>
                </ul>

                <div class="tab-content text-muted p-3">
                    <div class="tab-pane active" id="tabs-1" role="tabpanel">
                        <h4>Job Post</h4>
                        <div class="row">
                            <div class="col-sm-9">
                                <h5 class="text-info">{{ $job->title }}</h5>
                                <div> {!! $job->body !!}</div>
                            </div>
                            <div class="col-sm-3">
                                <ul class="list-unstyled">
                                    <li class="mb-2">
                                        <span class="text-success">
                                            <i class="fas fa-dollar-sign"></i> Budget : 
                                        </span>
                                         &#36; {{number_format($job->budget)}}
                                    </li>
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
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="tabs-2" role="tabpanel">
                        <div class="table-responsive">
                            <table class="table">                              
                              <tbody>

                               @foreach($applicants->sortByDesc('created_at') as $applicant )
                                    <tr>

                                        @if(!empty($applicant->photo))
                                         <td class="text-center" ><img src="/storage/photo/{{ $applicant->photo }}" class="p-0 rounded-circle" style="height: 80px"></td> 
                                        @else 
                                           <td class="text-center" ><i class="fas fa-user-circle fa-6x text-muted"></i></td>
                                        @endif 
                                      <td class="text-nowrap"><h5 class="h5"> <a class="text-info" href="/proposal/{{$applicant->job_id}}/{{$applicant->id}}">{{ $applicant->name }}</a></h5>
                                        <p>{{ $applicant->job_title }}</p>
                                        <p class="small"> 
                                            <span class="mr-5">
                                                <i class="fas fa-envelope"></i> Received: {{ $job->created_at->diffForHumans() }}
                                            </span>                                            
                                            <span><i class="fas fa-map-marker-alt"></i> {{ $applicant->country }}
                                            </span>
                                        </p>
                                      </td>
                                     @if ($applicant->status == 'hired')
                                        <td>
                                          <h4><span class="badge badge-success w-100"><i class="text-white fas fa-check"></i> <strong>HIRED</strong></span></h4>
                                       </td>
                                     @elseif ($applicant->status == 'rejected')
                                          <td>
                                           <h4><span class="badge badge-danger w-100"><i class="text-white fas fa-times"></i> <strong>REJECTED</strong></span></h4>
                                       </td>
                                     @else
                                        <td>
                                          <a href="/proposal/{{ $job->id }}/{{$applicant->id}}/hire" data-toggle="tooltip" data-placement="top" title="Hire Candidate">
                                             <i class="fas fa-thumbs-up fa-2x"></i>
                                          </a>
                                       </td>
                                      <td>
                                         <a href="/proposal/{{ $job->id }}/{{$applicant->id}}/reject" data-toggle="tooltip" data-placement="top" title="Reject Candidate">
                                            <i class="far fa-thumbs-down fa-2x"></i>
                                         </a>
                                      </td>
                                      @endif                                      
                                    </tr>
                                @endforeach
                              </tbody>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('jsplugins')
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script>
$(document).ready(function(){
        $('[data-toggle="tooltip"]').tooltip(); 
    });
</script>
@endsection
