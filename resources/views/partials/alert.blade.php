@if(count($errors)>0)
	<div class="alert alert-danger w-50 mx-auto mt-3 text-center">
		<ul>
			@foreach($errors->all() as $error)
				<li style="list-style: none;">{{$error}}</li>
			@endforeach
		</ul>
	</div>
@endif



@if(session('error'))
	<div class="alert alert-danger w-50 mx-auto mt-3 text-center">
		{{session('error')}}
	</div>
@endif

