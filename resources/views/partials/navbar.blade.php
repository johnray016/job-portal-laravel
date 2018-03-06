 <nav class="navbar navbar-expand-sm navbar-light navbar-laravel">
        <a class="navbar-brand" href="{{ url('/') }}">
           <img src="{{ asset('storage/assets/iconnect.png') }}" id="mylogo">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            @guest
            <!-- Left Side Of Navbar -->
              <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link list-group-item list-group-item-action flex-column align-items-end" href="/userdashboard">FIND WORK<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link list-group-item list-group-item-action flex-column align-items-end" href="/how-it-works">HOW IT WORKS</a>
                </li>
              </ul>
            @else
            @if(Auth::user()->role == 1)
                <!-- Left Side Of Navbar -->
                  <ul class="navbar-nav mr-auto">
                     <li class="nav-item">
                        <a class="nav-link list-group-item list-group-item-action flex-column align-items-end" href="/userdashboard">FIND WORK<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link list-group-item list-group-item-action flex-column align-items-end" href="/profile/{{str_slug(strtolower(Auth::user()->name), '-')}}">PROFILE</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link list-group-item list-group-item-action flex-column align-items-end" href="/my-jobs">MY JOBS</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link list-group-item list-group-item-action flex-column align-items-end" href="">MESSAGES</a>
                    </li>
                  </ul>                      
             @endif  

             @if(Auth::user()->role == 2)
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link list-group-item list-group-item-action flex-column align-items-end" href="/jobs">JOBS<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link list-group-item list-group-item-action flex-column align-items-end" href="/dashboard">DASHBOARD</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link list-group-item list-group-item-action flex-column align-items-end" href="">MESSAGES</a>
                    </li> 
                 </ul>                      
             @endif     
             @if(Auth::user()->role == 3)    
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
              @endif  
            @endguest      
            <!-- Right Side Of Navbar -->
            <ul class="navbar-nav ml-auto list-group">
                <!-- Authentication Links -->
                @guest
                    <li><a class="nav-link list-group-item list-group-item-action flex-column align-items-end" href="{{ route('login') }}">LOGIN</a></li>
                    <li><a class="nav-link list-group-item list-group-item-action flex-column align-items-end" href="{{ route('register') }}">SIGN UP</a></li>
                    <li><a class="nav-link" href=""><button class="btn btn-sm align-middle btn-info" type="button">POST A JOB</button></a></li>
                @else
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            @if(Auth::user()->role == 1)
                                <a href="/dashboard" class="dropdown-item" >Account Settings</a>
                            @endif  
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
                @endguest
            </ul>
        </div>
</nav>