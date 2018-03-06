@extends('layouts.app3')

@section('title')
Manage Jobs
@endsection

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
             <div class="col-md-10  my-5">
              <h2 class="h2 text-info">Manage Jobs</h2>
               <div class="card card-default text-white">

                  <div class="tab-content text-muted p-3">
                      <div class="tab-pane active" id="admin-tabs-1" role="tabpanel">
                          <div class="row">
                                <div class="col-sm-5 col-xs-12 mt-2">
                                  <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Search Jobs" name="search_job" id="searchjob">
                                  </div>
                                </div>
                                <div class="col-sm-3 col-xs-6 mt-2">
                                  <select class="form-control" id="filterjob">
                                    <option selected disabled>Filter By</option>
                                    <option value="name">Title</option>
                                    <option value="email">Category</option>
                                    <option value="created_at">Date Posted</option>
                                  </select>
                                </div>
                                 <div class="col-sm-2 col-xs-6 mt-2">
                                  <select class="form-control" id="sortjob">
                                    <option selected disabled>Sort By</option>
                                    <option value="asc">ASC</option>
                                    <option value="desc">DESC</option>
                                  </select>
                                </div>
                                <div class="col-sm-2 col-xs-6 mt-2">
                                  <button type="submit" class="btn btn-primary searchjob w-100">Search</button>
                                </div>
                          </div>
                          <div class="row table-responsive jobTable">
                            <table class="table table-striped">
                              <thead>
                                <tr>
                                  <th>Title</th>
                                  <th>Category</th>
                                  <th>Member Since</th>                                  
                                  <th></th>    
                                </tr>
                              </thead>
                              <tbody>
                                @foreach($jobs as $job)
                                <tr>
                                  <td> <h5 class="h5">{{ $job->title }}</h5> </td>
                                  <td> {{ $job->category->category_name }} </td>
                                  <td> {{ $job->created_at->format('M j, Y') }} </td>
                                  <td><i class="fas fa-trash h5 text-danger deleteJobPosting" data-id="{{$job->id}}"></i></td>
                                </tr>
                                @endforeach
                              </tbody>
                            </table>
                             <div class="ml-3"> {{$jobs->links()}}</div>
                          </div>
                      </div>
                  </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
