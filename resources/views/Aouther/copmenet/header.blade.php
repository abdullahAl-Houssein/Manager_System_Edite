<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Etrain</title>
    <link rel="icon" href="{{asset('uploads/settings/' .$sett->favicon) }}">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{asset('Aouther/css')}}/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="{{asset('Aouther/css')}}/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="{{asset('Aouther/css')}}/owl.carousel.min.css">
    <!-- themify CSS -->
    <link rel="stylesheet" href="{{asset('Aouther/css')}}/themify-icons.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="{{asset('Aouther/css')}}/flaticon.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="{{asset('Aouther/css')}}/magnific-popup.css">
    <!-- swiper CSS -->
    <link rel="stylesheet" href="{{asset('Aouther/css')}}/slick.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="{{asset('Aouther/css')}}/style.css">
    @yield('styles')
</head>

<body>
<!--::header part start::-->
<header class="main_menu @if(Route::currentRouteName() == 'Aouther.homepage') home_menu @else single_page_menu @endif">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-12">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="navbar-brand" href="{{route('Aouther.homepage')}}"> <img src="{{asset('uploads/settings/' .$sett->logo) }}" alt="logo"> </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse main-menu-item justify-content-end"
                         id="navbarSupportedContent">
                        <ul class="navbar-nav align-items-center">
                            <li class="nav-item active">
                                <a class="nav-link" href="{{route('Aouther.homepage')}}">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.html">About</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Courses
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    @foreach($cats as $c)
                                    <a class="dropdown-item" href="{{route('Aouther.cats',$c->id)}}">{{$c->name}}</a>
                                    @endforeach
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="{{route('Aouther.contact')}}">Contact</a>
                            </li>
                            <li class="d-none d-lg-block">
                                <a class="btn_1" href="#">Get a Quote</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- Header part end-->
