@extends('layouts.app')


@section('title')
    Homepage - Client
@endsection


@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10 my-5">
            @include('partials.alert')
            <div class="card card-default text-white">
                <div class="card-header bg-info"><h3 class="d-inline-block">CURRENT OPEN JOBS</h3></div>

                <div class="card-body text-muted">
                    @if(count($jobs) > 0)
                       <div class="table-responsive">
                            <table class="table">                              
                              <tbody>
                               @foreach($jobs as $job)
                                    <tr>
                                      <td>
                                        <h5 class="h5">
                                            <a href="/shortlist/{{$job->id}}" class="text-info">{{$job->title}}</a>
                                        </h5>
                                        <p class="small">Posted: {{$job->created_at->diffForHumans()}}</p>
                                      </td>
                                    </tr>
                                @endforeach
                              </tbody>
                            </table>
                        {{ $jobs->links() }}
                     </div>
                      </div>
                    @else
                        <p class="my-5 text-center">You currently have no open job postings</p>
                    @endif
                     
            </div>
        </div>
    </div>
</div>
@endsection
