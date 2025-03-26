<!DOCTYPE html>
<html>

<head>
    @include('partials.head')
    @include('partials.styles')
</head>

<body class="position-relative">
    @include('partials.loader')
    @unless (Request::is('auth/login') || Request::is('auth/register'))
    @include('components.header')

    @if(session('viewId') == 1)
    @include('components.doctorSideBarMenue')
    @endif
    @if(session('viewId') == 2)
    @include('components.patientSideBarMenue')
    @endif
    @if(session('viewId') == 3)
    @include('components.labSideBarMenue')
    @endif
    @if(session('viewId') == 4)
    @include('components.pharmaSideBarMenue')
    @endif
    @if(session('viewId') == 5)
    @include('components.scanSideBarMenue')
    @endif

    <div id="mainContent" class="p-3">

        <!-- <div class="alert alert-danger d-flex align-items-center" role="alert">
                    <div>
                        You currently do not have any roles assigned. Please contact your administrator for
                        access
                        rights.
                    </div>
                </div>
                <div class="alert alert-danger d-flex align-items-center" role="alert">
                    <div>
                        You currently do not have any permissions assigned. Please contact your administrator for
                        access
                        rights.
                    </div>
                </div> -->

        @yield('content')
    </div>
    @endunless

    @if (Request::is('auth/login') || Request::is('auth/register'))
    @yield('content')
    @endif

    @include('partials.scripts')
</body>

</html>