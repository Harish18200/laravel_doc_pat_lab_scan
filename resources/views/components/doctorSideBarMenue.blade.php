<div class="bg-dark p-3" id="sideBarMenue">
    <div class="d-flex align-items-center justify-content-between" id="loginUserProfile">
        <div class="bg-info" id="userProfilePic">
            <i class="fa-solid fa-user-tie fs-2 text-white"></i>
        </div>
        <div id="loginUserInfo">
            <h6 id="name"></h6>
            <p id="role">Welcome, {{ session('user_name') }}</p>
        </div>
    </div>
    <nav class="menu">
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="collapse"
                    aria-expanded="false">
                    <i class="fa-solid fa-users"></i>&nbsp;&nbsp;Doctor Management </i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ Route::currentRouteName() === 'dashboard.import.users.show' ? 'fw-bold text-white' : '' }} " href="{{route('dashboard')}}">Dashboard</a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ Route::currentRouteName() === 'dashboard.import.users.show' ? 'fw-bold text-white' : '' }} " href="{{route('PatientList')}}">Search Patient</a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ Route::currentRouteName() === 'dashboard.import.nsapScheme.show' ? 'fw-bold text-white' : '' }}" href="{{route('viewAppointment')}}">View Appointment</a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ Route::currentRouteName() === 'dashboard.import.nsapScheme.show' ? 'fw-bold text-white' : '' }}" href="{{route('diseasesView')}}">Diseases</a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ Route::currentRouteName() === 'dashboard.import.nsapScheme.show' ? 'fw-bold text-white' : '' }}" href="{{route('promptSearch')}}">Prompt</a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ Route::currentRouteName() === 'dashboard.import.nsapScheme.show' ? 'fw-bold text-white' : '' }}" href="{{route('expensesView')}}">Expenses</a>
            </li>
          
            <li class="nav-item">
                <a class="nav-link {{ Route::currentRouteName() === 'dashboard.import.users.show' ? 'fw-bold text-white' : '' }}" href="{{route('pharmaView')}}">Pharma</a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ Route::currentRouteName() === 'dashboard.import.users.show' ? 'fw-bold text-white' : '' }}" href="{{route('LabView')}}">Lab</a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ Route::currentRouteName() === 'dashboard.import.nsapScheme.show' ? 'fw-bold text-white' : '' }}" href="{{route('userView')}}">User Management</a>
            </li>




        </ul>
    </nav>





</div>