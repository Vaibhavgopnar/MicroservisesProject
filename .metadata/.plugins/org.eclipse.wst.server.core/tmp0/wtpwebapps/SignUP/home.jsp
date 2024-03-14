
<%
if (session.getAttribute("name") == null) {
	response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Swag of India</title>
<link rel="icon" type="images/png" href="images/flavicon.png">
<!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- <link rel="stylesheet" href="css/font-awesome.min.css"> -->
<script src="https://kit.fontawesome.com/ebd8283d0b.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/style1.css">

</head>

<body>
	<header class="">
		<div class="header-top top-bg">
			<div class="container-fluid">
				<div class="row d-flex justify-content-between align-items-center">

					<div class="header-info-left d-flex">
						<img src="images1/india.jpg" id="flag-icon" alt="flag"
							height="20px" width="25px">
						<form action="#">
							<select name="select" id="nation-select"
								aria-labelledby="select-box">
								<option value="india">India</option>
								<option value="usa">USA</option>
								<option value="canada">Canada</option>
								<option value="germany">Germany</option>
							</select>
						</form>
						<ul>
							<li><a href=""><span id="ph-number">+914567823456</span></a></li>
						</ul>
					</div>
					<div class="search-box" role='search' id="search-box">
						<input type="search" name="searchbox" role="form" id="searchbox"
							placeholder="Search Products and Brands"
							aria-labelledby="search-box"> <i class="fa fa-search"></i>
					</div>
					<div class="header-info-right">
						<ul>
							<li><a href="">My Account</a></li>
							<li><a href="">Wishlist</a></li>
							<li><a href="">Shopping</a></li>
							<li><a href="">Cart</a></li>
							<li><a href="">Checkout</a></li>
						</ul>
					</div>

				</div>
			</div>
		</div>

		<div class="header-bottom" id="header-sticky">
			<div class="container-fluid">
				<div
					class="row align-items-center d-flex sticky-bar-wrapper sticky-shadow sticky">

					<div class="col-xl-1 col-lg-1 col-md-1 col-sm-3">
						<a href="index.html"><img src="images1/logo.png" alt="logo"></a>
					</div>
					<div class="input-group d-xl-none d-lg-none"
						id="search-box-container">
						<input type="search" id="search-box-hidden" class=""
							placeholder="Search products and Brands" aria-label="search box"
							aria-describedby="basic-addon1"> <i class="fa fa-search"></i>
					</div>

					<div class="col-xl-6 col-lg-8 col-md-7 col-sm-5">
						<div class="main-menu f-right d-none d-lg-block">
							<nav>
								<ul id="navigation d-flex">
									<li><a class="nav-item nav-link active" href="">Home</a></li>
									<li class="dropdown mt-2"><a href="#categories">Categories</a>
										<div class="submenu">
											<a href="">Men</a> <a href="">Women</a> <a href="">Children</a>
											<a href="">Ethnic</a> <a href="">Winter</a>
										</div></li>
									<li class="dropdown mt-2"><a href="">Latest</a>
										<div class="submenu">
											<a href="">Product List</a> <a href="">Product details</a>
										</div></li>
									<li><a href="">Cart</a></li>
									<li><a href="">WishList</a></li>
									<li><a href="">Contact</a></li>
								</ul>
							</nav>
						</div>
					</div>

					<div class="col-xl-5 col-lg-3 col-md-3 col-sm-3">
						<ul
							class="header-right f-right d-none d-lg-block d-flex justify-content-between">
							<li><i class="far fa-heart"></i></li>
							<li><i class="fas fa-shopping-cart"></i></li>
							
							<li class="nav-item mx-0 mx-lg-1"><a
								class="nav-link py-3 px-0 px-lg-3 btn" href="logout"><%=session.getAttribute("name")%></a></li>
						</ul>
					</div>

				</div>
			</div>
		</div>
	</header>

	<main>
		<div class="container">
			<div class="row d-flex align-items-center justify-content-between">

				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
					<div id="carouselExampleSlidesOnly" class="carousel slide"
						data-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img class="d-block w-100" src="images1/mainimg.jpg"
									alt="mainimg" height="450px" width="399px">
							</div>
							<div class="carousel-item ">
								<img class="d-block w-100" src="images1/view2.jpg" alt="mainimg"
									height="450px" width="399px">
							</div>
							<div class="carousel-item ">
								<img class="d-block w-100" src="images1/Offer.jpg" alt="mainimg"
									height="450px" width="399px">
							</div>
						</div>
					</div>
				</div>

				<div class="col-xl-5 col-lg-5 col-md-5 col-sm-8">
					<div class="herocaption">
						<span>60% discount</span>
						<h1>Ethnic Collection</h1>
						<p>Best Cloth Collection of 2023!</p>
						<button class="btn">Sign In</button>
					</div>
				</div>

			</div>
		</div>

		<!-- shop by category section -->
		<section class="category-area section-padding30">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="text-center title">
							<h2>Shop By Category</h2>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-xl-4 col-lg-6">
					<div class="">
						<div class="category-img">
							<img src="images1/cat1.jpg" alt="">
							<div class="category-caption">
								<h2>Womens</h2>
								<span class="best"><a href="#">Best New Deals</a></span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-4 col-lg-6">
					<div class="">
						<div class="category-img text-center">
							<img src="images1/cat2.jpg" alt="">
							<div class="category-caption">
								<h2>Ethnic Wear</h2>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-4 col-lg-6">
					<div class="">
						<div class="category-img">
							<img src="images1/cat3.jpg" alt="">
							<div class="category-caption">
								<h2>Mans Cloths</h2>
								<span class="best"><a href="#">Best New Deals</a></span>
							</div>
						</div>
					</div>
				</div>
			</div>

		</section>

		<section class="latest-product-area padding-bootom">
			<div class="container">
				<div
					class="row product-btn d-flex justify-content-end align-items-end">
					<!-- section title -->
					<div class="col-xl-4 col-lg-5 col-md-5">
						<div class="">
							<h2>Latest Products</h2>
						</div>
					</div>
					<nav>
						<div class="nav nav-tabs" id="nav-tabs" role="tablist">
							<a class="nav-item nav-link active" id="nav-home-tab"
								data-toggle="tab" href="#nav-home" role="tab"
								aria-controls="nav-hame" aria-selected="true">All</a> <a
								class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab"
								href="#nav-profile" role="tab" aria-controls="nav-profile"
								aria-selected="false">New</a> <a class="nav-item nav-link"
								id="nav-contact-tab" data-toggle="tab" href="#nav-home"
								role="tab" aria-controls="nav-contacts" aria-selected="false">Featured</a>
							<a class="nav-item nav-link" id="nav-last-tab" data-toggle="tab"
								href="#nav-profile" role="tab" aria-controls="nav-contacts"
								aria-selected="false"> Offer</a>
						</div>
					</nav>
				</div>

				<!-- new card -->
				<div class="tab-content" id="nav-Content">
					<div class="tab-pane fade show active" id="nav-home"
						role="tabpanel" aria-labelledby="nav-home-tab">
						<div class="row products">

							<div class="col-xl-4 col-lg-4 col-md-6">
								<div class="single-product mb-60">
									<div class="product-img">
										<img src="images1/product1.png" alt="">
										<div class="new-product bg-danger">
											<span>New</span>
										</div>
										<div class="icons d-flex justify-content-center">
											<a href=""><i class="fa fa-heart" aria-hidden="true"></i></a>
											<a href=""><i class="fa fa-eye" aria-hidden="true"></i></a> <a
												href=""><i class="fa fa-shopping-cart"
												aria-hidden="true"></i></a>
										</div>
									</div>
									<div class="product-caption">
										<div class="product-ratting">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="far fa-star"></i> <i
												class="far fa-star"></i>
										</div>
										<h4>
											<a href="#">Green dress with details</a>
										</h4>
										<div class="price">
											<ul>
												<li>$40.00</li>
												<li class="discount">$60.00</li>
											</ul>
										</div>
									</div>
								</div>
							</div>

							<div class="col-xl-4 col-lg-4 col-md-6">
								<div class="single-product mb-60">
									<div class="product-img">
										<img src="images1/product2.png" alt="">
										<div class="new-product">
											<span>New</span>
										</div>
										<div class="icons d-flex justify-content-center">
											<a href=""><i class="fa fa-heart" aria-hidden="true"></i></a>
											<a href=""><i class="fa fa-eye" aria-hidden="true"></i></a> <a
												href=""><i class="fa fa-shopping-cart"
												aria-hidden="true"></i></a>
										</div>
									</div>
									<div class="product-caption">
										<div class="product-ratting">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="far fa-star low-star"></i>
											<i class="far fa-star low-star"></i>
										</div>
										<h4>
											<a href="#">Green dress with details</a>
										</h4>
										<div class="price">
											<ul>
												<li>$40.00</li>
												<li class="discount">$60.00</li>
											</ul>
										</div>
									</div>
								</div>
							</div>

							<div class="col-xl-4 col-lg-4 col-md-6">
								<div class="single-product mb-60">
									<div class="product-img">
										<img src="images1/product3.png" alt="">
										<div class="new-product  bg-danger">
											<span>New</span>
										</div>
										<div class="icons d-flex justify-content-center">
											<a href=""><i class="fa fa-heart" aria-hidden="true"></i></a>
											<a href=""><i class="fa fa-eye" aria-hidden="true"></i></a> <a
												href=""><i class="fa fa-shopping-cart"
												aria-hidden="true"></i></a>
										</div>
									</div>
									<div class="product-caption">
										<div class="product-ratting">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="far fa-star low-star"></i>
											<i class="far fa-star low-star"></i>
										</div>
										<h4>
											<a href="#">Green dress with details</a>
										</h4>
										<div class="price">
											<ul>
												<li>$40.00</li>
												<li class="discount">$60.00</li>
											</ul>
										</div>
									</div>
								</div>
							</div>

							<div class="col-xl-4 col-lg-4 col-md-6">
								<div class="single-product mb-60">
									<div class="product-img">
										<img src="images1/product4.png" alt="">
										<div class="new-product  bg-danger">
											<span>New</span>
										</div>
										<div class="icons d-flex justify-content-center">
											<a href=""><i class="fa fa-heart" aria-hidden="true"></i></a>
											<a href=""><i class="fa fa-eye" aria-hidden="true"></i></a> <a
												href=""><i class="fa fa-shopping-cart"
												aria-hidden="true"></i></a>
										</div>
									</div>
									<div class="product-caption">
										<div class="product-ratting">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="far fa-star low-star"></i>
											<i class="far fa-star low-star"></i>
										</div>
										<h4>
											<a href="#">Green dress with details</a>
										</h4>
										<div class="price">
											<ul>
												<li>$40.00</li>
												<li class="discount">$60.00</li>
											</ul>
										</div>
									</div>
								</div>
							</div>

							<div class="col-xl-4 col-lg-4 col-md-6">
								<div class="single-product mb-60">
									<div class="product-img">
										<img src="images1/product5.png" alt="">
										<div class="new-product">
											<span>New</span>
										</div>
										<div class="icons d-flex justify-content-center">
											<a href=""><i class="fa fa-heart" aria-hidden="true"></i></a>
											<a href=""><i class="fa fa-eye" aria-hidden="true"></i></a> <a
												href=""><i class="fa fa-shopping-cart"
												aria-hidden="true"></i></a>
										</div>
									</div>
									<div class="product-caption">
										<div class="product-ratting">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="far fa-star low-star"></i>
											<i class="far fa-star low-star"></i>
										</div>
										<h4>
											<a href="#">Green dress with details</a>
										</h4>
										<div class="price">
											<ul>
												<li>$40.00</li>
												<li class="discount">$60.00</li>
											</ul>
										</div>
									</div>
								</div>
							</div>

							<div class="col-xl-4 col-lg-4 col-md-6">
								<div class="single-product mb-60">
									<div class="product-img">
										<img src="images1/product6.png" alt="">
										<div class="new-product">
											<span>New</span>
										</div>
										<div class="icons d-flex justify-content-center">
											<a href=""><i class="fa fa-heart" aria-hidden="true"></i></a>
											<a href=""><i class="fa fa-eye" aria-hidden="true"></i></a> <a
												href=""><i class="fa fa-shopping-cart"
												aria-hidden="true"></i></a>
										</div>
									</div>
									<div class="product-caption">
										<div class="product-ratting">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="far fa-star low-star"></i>
											<i class="far fa-star low-star"></i>
										</div>
										<h4>
											<a href="#">Green dress with details</a>
										</h4>
										<div class="price">
											<ul>
												<li>$40.00</li>
												<li class="discount">$60.00</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="tab-pane fade" id="nav-profile" role="tabpanel"
						aria-labelledby="nav-home-tab">
						<div class="row products">

							<div class="col-xl-4 col-lg-4 col-md-6" id="nav-profile">
								<div class="single-product mb-60">
									<div class="product-img">
										<img src="images1/product5.png" alt="">
										<div class="new-product bg-danger">
											<span>New</span>
										</div>
										<div class="icons d-flex justify-content-center">
											<a href=""><i class="fa fa-heart" aria-hidden="true"></i></a>
											<a href=""><i class="fa fa-eye" aria-hidden="true"></i></a> <a
												href=""><i class="fa fa-shopping-cart"
												aria-hidden="true"></i></a>
										</div>
									</div>
									<div class="product-caption">
										<div class="product-ratting">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="far fa-star low-star"></i>
											<i class="far fa-star low-star"></i>
										</div>
										<h4>
											<a href="#">Green dress with details</a>
										</h4>
										<div class="price">
											<ul>
												<li>$40.00</li>
												<li class="discount">$60.00</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-4 col-lg-4 col-md-6">
								<div class="single-product mb-60">
									<div class="product-img">
										<img src="images1/product6.png" alt="">
										<div class="new-product">
											<span>New</span>
										</div>
										<div class="icons d-flex justify-content-center">
											<a href=""><i class="fa fa-heart" aria-hidden="true"></i></a>
											<a href=""><i class="fa fa-eye" aria-hidden="true"></i></a> <a
												href=""><i class="fa fa-shopping-cart"
												aria-hidden="true"></i></a>
										</div>
									</div>
									<div class="product-caption">
										<div class="product-ratting">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="far fa-star low-star"></i>
											<i class="far fa-star low-star"></i>
										</div>
										<h4>
											<a href="#">Green dress with details</a>
										</h4>
										<div class="price">
											<ul>
												<li>$40.00</li>
												<li class="discount">$60.00</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-4 col-lg-4 col-md-6">
								<div class="single-product mb-60">
									<div class="product-img">
										<img src="images1/product1.png" alt="">
										<div class="new-product bg-danger">
											<span>New</span>
										</div>
										<div class="icons d-flex justify-content-center">
											<a href=""><i class="fa fa-heart" aria-hidden="true"></i></a>
											<a href=""><i class="fa fa-eye" aria-hidden="true"></i></a> <a
												href=""><i class="fa fa-shopping-cart"
												aria-hidden="true"></i></a>
										</div>
									</div>
									<div class="product-caption">
										<div class="product-ratting">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="fas fa-star low-star"></i>
											<i class="fas fa-star low-star"></i>
										</div>
										<h4>
											<a href="#">Green dress with details</a>
										</h4>
										<div class="price">
											<ul>
												<li>$40.00</li>
												<li class="discount">$60.00</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-4 col-lg-4 col-md-6">
								<div class="single-product mb-60">
									<div class="product-img">
										<img src="images1/product3.png" alt="">
										<div class="new-product bg-danger">
											<span>New</span>
										</div>
										<div class="icons d-flex justify-content-center">
											<a href=""><i class="fa fa-heart" aria-hidden="true"></i></a>
											<a href=""><i class="fa fa-eye" aria-hidden="true"></i></a> <a
												href=""><i class="fa fa-shopping-cart"
												aria-hidden="true"></i></a>
										</div>
									</div>
									<div class="product-caption">
										<div class="product-ratting">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="far fa-star low-star"></i>
											<i class="far fa-star low-star"></i>
										</div>
										<h4>
											<a href="#">Green dress with details</a>
										</h4>
										<div class="price">
											<ul>
												<li>$40.00</li>
												<li class="discount">$60.00</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-4 col-lg-4 col-md-6">
								<div class="single-product mb-60">
									<div class="product-img">
										<img src="images1/product2.png" alt="">
										<div class="new-product">
											<span>New</span>
										</div>
										<div class="icons d-flex justify-content-center">
											<a href=""><i class="fa fa-heart" aria-hidden="true"></i></a>
											<a href=""><i class="fa fa-eye" aria-hidden="true"></i></a> <a
												href=""><i class="fa fa-shopping-cart"
												aria-hidden="true"></i></a>
										</div>
									</div>
									<div class="product-caption">
										<div class="product-ratting">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="far fa-star low-star"></i>
											<i class="far fa-star low-star"></i>
										</div>
										<h4>
											<a href="#">Green dress with details</a>
										</h4>
										<div class="price">
											<ul>
												<li>$40.00</li>
												<li class="discount">$60.00</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-4 col-lg-4 col-md-6">
								<div class="single-product mb-60">
									<div class="product-img">
										<img src="images1/product4.png" alt="">
										<div class="new-product">
											<span>New</span>
										</div>
										<div class="icons d-flex justify-content-center">
											<a href=""><i class="fa fa-heart" aria-hidden="true"></i></a>
											<a href=""><i class="fa fa-eye" aria-hidden="true"></i></a> <a
												href=""><i class="fa fa-shopping-cart"
												aria-hidden="true"></i></a>
										</div>
									</div>
									<div class="product-caption">
										<div class="product-ratting">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="far fa-star low-star"></i>
											<i class="far fa-star low-star"></i>
										</div>
										<h4>
											<a href="#">Green dress with details</a>
										</h4>
										<div class="price">
											<ul>
												<li>$40.00</li>
												<li class="discount">$60.00</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</section>

		<!-- shop method area -->
		<div class="container">
			<div class="row mt-5 mb-5">

				<div
					class="col-xl-4 col-lg-4 col-md-6 payment align-items-center justify-content-between">
					<i class="fa-sharp fa-solid fa-credit-card"></i>
					<h6>Free Shipping Method</h6>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Lorem ipsum dolor sit.</p>
				</div>
				<div class="col-xl-4 col-lg-4 col-md-6 payment">
					<i class="fa-solid fa-money-check-dollar"></i>
					<h6>Secure Payment System</h6>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Lorem ipsum dolor sit.</p>
				</div>
				<div class="col-xl-4 col-lg-4 col-md-6 payment">
					<i class="fa-sharp fa-solid fa-cash-register"></i>
					<h6>Secure Payment System</h6>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Lorem ipsum dolor sit.</p>
				</div>

			</div>


			<div class="row">
				<div class="col-xl-2 col-lg-2.5 col-md-4 col-sm-1">
					<h4>POLICY INFO</h4>
					<p>Privacy Policy</p>
					<p>Terms of Sale</p>
					<p>Terms of Use</p>
					<p>Report Abuse</p>
					<p>Takedown Policy</p>
				</div>
				<div class="col-xl-2 col-lg-2.5 col-md-4 col-sm-1">
					<h4>COMPANY</h4>
					<p>About Us</p>
					<p>Core Values</p>
					<p>Careers</p>
					<p>Blog</p>
					<p>Sitemap</p>
				</div>
				<div class="col-xl-2 col-lg-2.5 col-md-4 col-sm-1">
					<h4>SNAPDEAL BUSINESS</h4>
					<p>About Us</p>
					<p>Core Values</p>
					<p>Careers</p>
					<p>Blog</p>
					<p>Sitemap</p>
				</div>
				<div class="col-xl-2 col-lg-2.5 col-md-4 col-sm-1">
					<h4>NEED HELP</h4>
					<p>About Us</p>
					<p>Core Values</p>
					<p>Careers</p>
					<p>Blog</p>
					<p>Sitemap</p>
				</div>
				<div class="col-xl-2 col-lg-2.5 col-md-4 col-sm-1">
					<h4>SUBSCRIBE</h4>
					<p>About Us</p>
					<p>Core Values</p>
					<p>Careers</p>
					<p>Blog</p>
					<p>Sitemap</p>
				</div>
			</div>
		</div>
		<!-- shop method area end -->
	</main>
	<hr>

	<!-- Footer start  -->
	<footer class="container-fluid w-75">
		<div class="row">
			<div class="col d-flex flex-row justify-content-between">
				<div class="box-1">
					<p>Copyrights &copy; All rights reserved</p>
				</div>
				<div class="box-2 footer-social">
					<a href="#" class="bg-sucess"><i class="fa fa-twitter"></i></a> <a
						href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
						class="fa fa-behance"></i></a> <a href="#"><i class="fa fa-globe"></i></a>
				</div>
			</div>
		</div>
	</footer>

	<!-- Footer End  -->

	<a id="scrollUp"><i class="fa fa-arrow-up"></i></a>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js">
		
	</script>

	<script src="js/scripts.js"></script>

	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

	<script src="js/index.js"></script>


	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous">
		
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
		crossorigin="anonymous">
		
	</script>
</body>

</html>