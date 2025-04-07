<div class="bg-dark p-3" id="sideBarMenue">
    <div class="d-flex align-items-center justify-content-between" id="loginUserProfile">
        <div class="bg-info" id="userProfilePic">
            <i class="fa-solid fa-user-tie fs-2 text-white"></i>
        </div>
        <div id="loginUserInfo">
            <h6 id="name"></h6>
            <p id="role">Welcome</p>
        </div>
    </div>
    <nav class="menu">
        <ul class="nav flex-column">



            <!-- User Management -->
            <li class="nav-item">
                <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="collapse"
                    aria-expanded="false">
                    <i class="fa-solid fa-users"></i>&nbsp;&nbsp;Scan Management
                </a>

            </li>
            <li class="nav-item">
                <a class="nav-link {{ Route::currentRouteName() === 'dashboard.import.nsapScheme.show' ? 'fw-bold text-white' : '' }}" href="{{route('scanInvoiceView')}}">Scan Invoice</a>
            </li>




        </ul>
    </nav>





</div>