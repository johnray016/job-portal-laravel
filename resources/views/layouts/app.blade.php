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
    @yield('select2css')
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">  

    <!-- Hover CSS -->
    <link href="{{ asset('css/hover-min.css') }}" rel="stylesheet">
    <!-- Toastr CSS-->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">

     
</head>
<body>
    <div id="app">
        @include('partials.navbar')
        <main>           
            @yield('content')
            <div class="loading">
                <i class="fas fa-spinner fa-pulse fa-3x fa-fw"></i><br/>
                <span>Loading</span>
            </div>
        </main>
        @include('partials.footer')
    </div>   
    <!-- jQuery CDN -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>   
    @yield('jsplugins')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
    <script src="{{asset('js/script.js')}}"></script>

    <!-- toastr JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
</body>
</html>
