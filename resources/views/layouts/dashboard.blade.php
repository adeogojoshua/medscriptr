<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="icon" type="image/png" href="{{ asset('img/favicon.ico') }}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Dashboard</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link rel="stylesheet" href={{ asset('font-awesome/latest/css/font-awesome.min.css') }} />
    <!-- CSS Files -->
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('css/light-bootstrap-dashboard.css?v=2.0.1') }}" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="{{ asset('css/demo.css') }}" rel="stylesheet" />
</head>

<body>
    <div class="wrapper">
        <div class="sidebar" data-image="{{ asset('img/sidebar-1.jpg') }}" data-color="blue">

            <div class="sidebar-wrapper">
                <div class="logo">
                    <a href="#" class="simple-text">
                        Dashboard
                    </a>
                </div>
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="{{route('dashboard.index')}}">
                            <i class="nc-icon nc-chart-pie-35"></i>
                            <p>Dashboard</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="{{route('dashboard.create')}}">
                            <i class="nc-icon nc-circle-09"></i>
                            <p>Add Staff</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="{{route('dashboard.staffs')}}">
                            <i class="nc-icon nc-app"></i>
                            <p>All Staffs</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="{{route('dashboard.filter', 'administrator')}}">
                            <i class="nc-icon nc-app"></i>
                            <p>Administrators</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="{{route('dashboard.filter', 'doctor')}}">
                            <i class="nc-icon nc-app"></i>
                            <p>Doctors</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="{{route('dashboard.filter', 'nurse')}}">
                            <i class="nc-icon nc-app"></i>
                            <p>Nurses</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-panel">
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg " color-on-scroll="500">
                <div class=" container-fluid  ">
                    <a class="navbar-brand" href="#"> Dashboard </a>
                    <button href="" class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-bar burger-lines"></span>
                        <span class="navbar-toggler-bar burger-lines"></span>
                        <span class="navbar-toggler-bar burger-lines"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navigation">
                        <ul class="nav navbar-nav mr-auto">
                            <li class="nav-item">
                                <a href="#" class="nav-link" data-toggle="dropdown">
                                    <i class=""></i>
                                    <span class="d-lg-none">Dashboard</span>
                                </a>
                            </li>

                        </ul>
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('logout') }}"                                             onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            Logout</a>
                                                                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->
            <div class="content">
                <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12 col-md-6 offset-md-3">@include('components.messages')</div>
                </div>
                    @yield('content')
                </div>
            </div>
            <footer class="footer">
                <div class="container">
                    <nav>
                        <ul class="footer-menu">
                            <li>
                                <a href="/dashboard">
                                    Dashboard
                                </a>
                            </li>
                        </ul>
                        <p class="copyright text-center">
                            ©
                            <script>
                                document.write(new Date().getFullYear())
                            </script>
                            <a href="#">Creative</a>, made with love.
                        </p>
                    </nav>
                </div>
            </footer>
        </div>
    </div>
</body>
<!--   Core JS Files   -->
<script src="{{ asset('js/core/jquery.3.2.1.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('js/core/popper.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('js/core/bootstrap.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('js/light-bootstrap-dashboard.js?v=2.0.1') }}" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function() {
        // Javascript method's body can be found in assets/js/demos.js
        demo.initDashboardPageCharts();

        demo.showNotification();

    });
</script>

</html>