@extends('layouts.app3')

@section('title')
Manage Clients
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
              <h2 class="h2 text-info">Manage Clients</h2>
               <div class="card card-default text-white">

                  <div class="tab-content text-muted p-3">
                      <div class="tab-pane active" id="admin-tabs-1" role="tabpanel">
                          <div class="row">
                                <div class="col-sm-5 col-xs-12 mt-2">
                                  <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Search Clients" name="search_client" id="searchclient">
                                  </div>
                                </div>
                                <div class="col-sm-3 col-xs-6 mt-2">
                                  <select class="form-control" id="filterclient">
                                    <option selected disabled>Filter By</option>
                                    <option value="name">Name</option>
                                    <option value="email">Email</option>
                                    <option value="created_at">Date Registered</option>
                                  </select>
                                </div>
                                 <div class="col-sm-2 col-xs-6 mt-2">
                                  <select class="form-control" id="sortclient">
                                    <option selected disabled>Sort By</option>
                                    <option value="asc">ASC</option>
                                    <option value="desc">DESC</option>
                                  </select>
                                </div>
                                <div class="col-sm-2 col-xs-6 mt-2">
                                  <button type="submit" class="btn btn-primary searchclient w-100">Search</button>
                                </div>
                          </div>
                          <div class="row table-responsive clientTable">
                            <table class="table table-striped">
                              <thead>
                                <tr>
                                  <th>Name</th>
                                  <th>Email</th>
                                  <th>Member Since</th>                                  
                                  <th></th>    
                                </tr>
                              </thead>
                              <tbody>
                                @foreach($clients as $client)
                                <tr>
                                  <td> {{ $client->name }} </td>
                                  <td> {{ $client->email }} </td>
                                  <td> {{ $client->created_at->format('M j, Y') }} </td>
                                  <td><h4>
                                    @if($client->role == '2')
                                    <button class="btn btn-danger banUsers" data-id="{{$client->id}}">BAN</button>
                                    @elseif($client->role == '4')
                                     <button class="btn btn-default unbanClient" data-id="{{$client->id}}">UNBAN</button>
                                    @endif
                                  </h4></td>
                                </tr>
                                @endforeach
                              </tbody>
                            </table>
                             <div class="ml-3"> {{$clients->links()}}</div>
                          </div>
                      </div>
                  </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
