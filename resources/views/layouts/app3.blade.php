<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>@yield('title')</title>
    
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Spinnaker" rel="stylesheet">

    <!-- Fontawesome -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/style.css') }}" rel="stylesheet"> 
    <!-- Toastr CSS-->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">

     <!-- jQuery CDN -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
    <div id="app">
         <nav class="navbar navbar-expand-sm navbar-light navbar-laravel">
                <a class="navbar-brand" href="{{ url('/') }}">
                   <img src="/storage/assets/iconnect.png" id="mylogo">
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
             <!-- Left Side Of Navbar -->
                  <ul class="navbar-nav mr-auto">
                     <li class="nav-item">
                        <a class="nav-link list-group-item list-group-item-action flex-column align-items-end" href="/panel/freelancer">FREELANCERS<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link list-group-item list-group-item-action flex-column align-items-end" href="/panel/clients">CLIENTS</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link list-group-item list-group-item-action flex-column align-items-end" href="/panel/jobs">JOBS</a>
                    </li>
                  </ul>  
                    <!-- Right Side Of Navbar -->
            <ul class="navbar-nav ml-auto list-group">
                <!-- Authentication Links -->
                
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        {{ Auth::user()->name }} <span class="caret"></span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="{{ route('logout') }}"
                           onclick="event.preventDefault();
                                         document.getElementById('logout-form').submit();">
                            Logout
                        </a>

                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            @csrf
                        </form>
                    </div>
                </li>
            </ul>
                </div>
        </nav>
        <main style="min-height: 580px">           
            @yield('content')
            <div class="loading">
                <i class="fas fa-spinner fa-pulse fa-3x fa-fw"></i><br/>
                <span>Loading</span>
            </div>
        </main>
        @include('admin.partials.footer')
    </div>   
    <script src="{{asset('js/app.js')}}"></script>
    <script src="{{asset('js/script.js')}}"></script>

    <!-- toastr JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

</body>
</html>
