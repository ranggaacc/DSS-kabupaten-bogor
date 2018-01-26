<!doctype html>
<html lang="en">

<head>
	<title>@yield('title')</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="{{asset('assets/vendor/bootstrap/css/bootstrap.min.css')}}">
	<link rel="stylesheet" href="{{asset('assets/vendor/font-awesome/css/font-awesome.min.css')}}">
	<link rel="stylesheet" href="{{asset('assets/vendor/linearicons/style.css')}}">
	<link rel="stylesheet" href="{{asset('assets/vendor/chartist/css/chartist-custom.css')}}">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="{{asset('assets/css/main.css')}}">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="{{asset('assets/css/demo.css')}}">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="{{asset('assets/img/apple-icon.png')}}">
	<link rel="icon" type="image/png" sizes="96x96" href="{{asset('assets/img/kab.png')}}">

@yield('header')
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="index.html"><img src="assets/img/kab.png" class="img-responsive logo" style="width: 70px;height: 70px;"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-form navbar-left">
					<h4>Kabupaten Bogor</h4>
				</div>
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>

				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								@if(Auth::user()->name=='Airlangga Visnhu Murthi')
								<img src="assets/img/rangga.jpg" class="img-circle" alt="Avatar"> 
								@else
								<img src="assets/img/david.jpg" class="img-circle" alt="Avatar">
								@endif
								<span>{{ Auth::user()->name }}</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								
								<li>
									<a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            <i class="lnr lnr-exit"></i> <span>Logout</span>
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
								<div class="profile-header">
									<div class="overlay"></div>
									<div class="profile-main">
										@if(Auth::user()->name=='Airlangga Visnhu Murthi')
										<img src="assets/img/rangga.jpg" class="img-circle" alt="Avatar" style="width: 100px;height: 100px;">
										@else
										<img src="assets/img/david.jpg" class="img-circle" alt="Avatar" style="width: 100px;height: 100px;">
										@endif
										<h3 class="name">{{Auth::user()->name}}</h3>
										<span class="online-status status-available">Available</span>
									</div>
									<div class="profile-stat">
										<div class="row">
											<div class="col-md-4 stat-item">
												21 <span>Age</span>
											</div>
											<div class="col-md-4 stat-item">
												15 <span>Awards</span>
											</div>
											<div class="col-md-4 stat-item">
												Bupati <span>Bogor</span>
											</div>
										</div>
									</div>
								</div>
								<!-- END PROFILE HEADER -->
{{-- 								<!-- PROFILE DETAIL -->
								<div class="profile-detail">
									<div class="profile-info">
										<h4 class="heading">Basic Info</h4>
										<ul class="list-unstyled list-justify">
											<li>Birthdate <span>24 Aug, 2016</span></li>
											<li>Mobile <span>(124) 823409234</span></li>
											<li>Email <span>samuel@mydomain.com</span></li>
											<li>Website <span><a href="https://www.themeineed.com">www.themeineed.com</a></span></li>
										</ul>
									</div>
									<div class="profile-info">
										<h4 class="heading">Social</h4>
										<ul class="list-inline social-icons">
											<li><a href="#" class="facebook-bg"><i class="fa fa-facebook"></i></a></li>
											<li><a href="#" class="twitter-bg"><i class="fa fa-twitter"></i></a></li>
											<li><a href="#" class="google-plus-bg"><i class="fa fa-google-plus"></i></a></li>
											<li><a href="#" class="github-bg"><i class="fa fa-github"></i></a></li>
										</ul>
									</div>
									<div class="profile-info">
										<h4 class="heading">About</h4>
										<p>Interactively fashion excellent information after distinctive outsourcing.</p>
									</div>
									<div class="text-center"><a href="#" class="btn btn-primary">Edit Profile</a></div>
								</div>
								<!-- END PROFILE DETAIL --> --}}
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="/home" class="active"><i class="lnr lnr-home"></i> <span>Dashboard</span></a></li>	
					</ul>
				</nav>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
		
		@yield('content')

		<div class="clearfix"></div>
		<footer>
			<div class="container-fluid">
				<p class="copyright">&copy; 2017 <a href="https://www.themeineed.com" target="_blank">Rangga, Azis, David</a>. All Rights Reserved.</p>
			</div>
		</footer>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="{{asset('assets/vendor/jquery/jquery.min.js')}}"></script>
	<script src="{{asset('assets/vendor/bootstrap/js/bootstrap.min.js')}}"></script>
	<script src="{{asset('assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js')}}"></script>
	<script src="{{asset('assets/scripts/klorofil-common.js')}}"></script>
</body>

</html>
