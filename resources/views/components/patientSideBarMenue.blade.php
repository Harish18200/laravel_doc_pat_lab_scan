<div class="bg-dark p-3" id="sideBarMenue">
    <div class="d-flex align-items-center justify-content-between" id="loginUserProfile">
        <div class="bg-info" id="userProfilePic">
            <i class="fa-solid fa-user-tie fs-2 text-white"></i>
        </div>
        <div id="loginUserInfo">
            <h6 id="name"> 
            </h6>
            <p id="role"> Welcome</p>
        </div>
    </div>
    <nav class="menu">
        <ul class="nav flex-column">
            <!-- New User (with counter) -->
          
                <!-- <li class="nav-item">
                    <a class="nav-link" href="{{ route('dashboard.user.view.new') }}">
                        <i class="fa-solid fa-user-plus"></i>&nbsp;&nbsp;New User <span class="badge badge-primary"
                            id="usersWithoutRolesCount">0</span>
                    </a>
                </li>
      -->

            <!-- User Management -->
                <li class="nav-item">
                    <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="collapse"
                        aria-expanded="false">
                        <i class="fa-solid fa-users"></i>&nbsp;&nbsp;Patient Management 
                            
                    </a>
                    <ul class="collapse list-unstyled {{ Route::currentRouteName() === 'dashboard.user.view' ? 'show' : '' }}"
                        id="userManagementSubmenu">
                       
                            <li class="nav-item">
                                <a class="nav-link {{ Route::currentRouteName() === 'dashboard.user.view' ? 'fw-bold text-white' : '' }}" href="{{ route('dashboard.user.view') }}">Home</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link {{ Route::currentRouteName() === 'dashboard.user.view' ? 'fw-bold text-white' : '' }}" href="{{ route('dashboard.user.view') }}">About Us</a>
                            </li>
                            
                           
                        
                    </ul>
                </li>

                <li class="nav-item">
    <a class="nav-link {{ Route::currentRouteName() === 'dashboard.user.view' ? 'fw-bold text-white' : '' }}" href="{{ route('home') }}">Home</a>
</li>

<li class="nav-item">
    <a class="nav-link {{ Route::currentRouteName() === 'dashboard.user.view' ? 'fw-bold text-white' : '' }}" href="{{ route('aboutUs') }}">About Us</a>
</li>

<li class="nav-item">
    <a class="nav-link {{ Route::currentRouteName() === 'dashboard.user.view' ? 'fw-bold text-white' : '' }}" href="{{ route('patientMakeAppointment') }}">Make Appointment</a>
</li>

           

            <!-- Role Management -->
                <!-- <li class="nav-item">
                    <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="collapse"
                        aria-expanded="false">
                        <i class="fa-solid fa-user-shield"></i>&nbsp;&nbsp;Role Management <i
                            class="fa-solid fa-chevron-right {{ ((Route::currentRouteName() === 'dashboard.role.create.view') || (Route::currentRouteName() === 'dashboard.role.show.view'))  ? 'fa-chevron-down' : 'fa-chevron-right' }} ml-auto"></i>
                    </a>
                    <ul class="collapse list-unstyled {{ ((Route::currentRouteName() === 'dashboard.role.create.view') || (Route::currentRouteName() === 'dashboard.role.show.view')) ? 'show' : '' }}" id="roleManagementSubmenu">
                            <li class="nav-item">
                                <a class="nav-link {{ Route::currentRouteName() === 'dashboard.role.create.view' ? 'fw-bold text-white' : '' }}" href="{{route('dashboard.role.create.view')}}">Create Role</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link {{ Route::currentRouteName() === 'dashboard.role.show.view' ? 'fw-bold text-white' : '' }}" href="{{route('dashboard.role.show.view')}}" >View All Roles</a>
                            </li>
                    </ul>
                </li> -->

            <!-- NSAP Schemes Management -->
                <!-- <li class="nav-item">
                    <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="collapse"
                        aria-expanded="false">
                        <i class="fa-brands fa-wpforms"></i>&nbsp;&nbsp;NSAP Scheme Management <i
                            class="fa-solid {{ Route::currentRouteName() === 'dashboard.nsapScheme.view' ? 'fa-chevron-down' : 'fa-chevron-right' }} ml-auto"></i>
                    </a>
                    <ul class="collapse list-unstyled {{ Route::currentRouteName() === 'dashboard.nsapScheme.view' ? 'show' : '' }}"
                        id="userManagementSubmenu">
                            <li class="nav-item">
                                <a class="nav-link {{ Route::currentRouteName() === 'dashboard.nsapScheme.view' ? 'fw-bold text-white' : '' }}" href="{{ route('dashboard.nsapScheme.view') }}">View All NSAP Schemes</a>
                            </li>
                    </ul>
                </li> -->

            <!-- Import data -->
                <!-- <li class="nav-item">
                    <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="collapse"
                        aria-expanded="false">
                        <i class="fa-solid fa-file-excel"></i>&nbsp;&nbsp;Import Bulk Data <i
                            class="fa-solid  {{ (Route::currentRouteName() === 'dashboard.import.users.show' || Route::currentRouteName() === 'dashboard.import.nsapScheme.show') ? 'fa-chevron-down' : 'fa-chevron-right' }} ml-auto"></i>
                    </a>
                    <ul class="collapse list-unstyled {{ (Route::currentRouteName() === 'dashboard.import.users.show' || Route::currentRouteName() === 'dashboard.import.nsapScheme.show') ? 'show' : '' }}" id="excelFileManagementSubmenu">
                            <li class="nav-item">
                                <a class="nav-link {{ Route::currentRouteName() === 'dashboard.import.users.show' ? 'fw-bold text-white' : '' }}" href="{{route('dashboard.import.users.show')}}">Import Bulk Users Data</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link {{ Route::currentRouteName() === 'dashboard.import.nsapScheme.show' ? 'fw-bold text-white' : '' }}" href="{{route('dashboard.import.nsapScheme.show')}}">Import Bulk NSAP Scheme Data</a>
                            </li>
                    </ul>
                </li> -->
        </ul>
    </nav>





</div>
