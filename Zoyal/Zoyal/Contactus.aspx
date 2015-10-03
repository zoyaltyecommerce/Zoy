﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="Zoyal.Contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8">
	<meta name="keywords" content="Zoyalty" />
	<meta name="description" content="Zoyalty">
	<meta name="author" content="konnectsu.com">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Zoyalty</title>

	<!-- Google Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Raleway:400,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,700,300' rel='stylesheet' type='text/css'>

	<!-- Bootstrap -->
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Bootstrap datetimepicker -->
	<link href="bootstrap/datetimepicker/css/bootstrap-datetimepicker.css" rel="stylesheet">

	<!-- Icon Fonts -->
	<link href="css/fonts/font-awesome/css/font-awesome.css" rel="stylesheet">

	<!-- Owl Carousel Assets -->
	<link href="vendor/owl-carousel/owl.carousel.css" rel="stylesheet">
	<link href="vendor/owl-carousel/owl.theme.css" rel="stylesheet">
	<link href="vendor/owl-carousel/owl.transitions.css" rel="stylesheet">
	
	<!-- bxslider -->
	<link href="vendor/bxslider/jquery.bxslider.css" rel="stylesheet">
	<!-- flexslider -->
	<link rel="stylesheet" href="vendor/flexslider/flexslider.css" media="screen">

	<!-- Theme -->
	<link href="css/theme-animate.css" rel="stylesheet">
	<link href="css/theme-elements.css" rel="stylesheet">
	<link href="css/theme-blog.css" rel="stylesheet">
	<link href="css/theme-shop.css" rel="stylesheet">
	<link href="css/theme.css" rel="stylesheet">
	
	<!-- Datetimepicker -->
	<link href="css/datetimepicker.css" rel="stylesheet">
	
	<!-- Style Switcher-->
	<link rel="stylesheet" href="style-switcher/css/style-switcher.css">
	<link href="css/colors/cyan/style.html" rel="stylesheet" id="layoutstyle">

	<!-- Theme Responsive-->
	<link href="css/theme-responsive.css" rel="stylesheet">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
    <form runat="server">
	<div id="page">
        <header>
            <div id="top">
                <div class="container">
                    <p class="pull-left text-note">FREE SHIPPING ON ALL ORDERS over RS.50</p>
                    <ul class="nav nav-pills nav-top navbar-right">
                        <!--<li class="dropdown langs">
                        <a href="#" class="dropdown-toggle" data-toggle="drospdown">HYDERABAD <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#" class="awhite">HYDERABAD</a></li>
                            <li><a href="#" class="awhite">KARIMNAGAR</a></li>
                            <li><a href="#" class="awhite">WARANGAL</a></li>

                        </ul>
                    </li>-->
                        <li class="dropdown my-account">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Hyderabad<span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Hyderabad</a></li>
                                <li><a href="#">Warangal</a></li>
                                <li><a href="#">Karimnagar</a></li>

                            </ul>
                        </li>

                        <li class="dropdown my-account" style="display:none">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">My Account <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">My Orders</a></li>
                                <li><a href="#">Account Information</a></li>
                                <li><a href="#">Logout</a></li>

                            </ul>
                        </li>
                        <li class="dropdown menu-shop">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-shopping-cart"></i> <span class="shopping-bag">9</span></a>
                            <div class="dropdown-menu">
                                <h3>Recently added item(s)</h3>
                                <ul class="list-unstyled list-thumbs-pro">
                                    <li class="product">
                                        <div class="product-thumb-info">
                                            <a href="#" class="product-remove"><i class="fa fa-trash-o"></i></a>
                                            <div class="product-thumb-info-image">
                                                <a href="shop-product-detail1.html"><img alt="" width="60" src="images/content/products/product-1.jpg"></a>
                                            </div>

                                            <div class="product-thumb-info-content">
                                                <h4><a href="shop-product-detail2.html">Denim shirts</a></h4>
                                                <span class="item-cat"><small><a href="#">Jackets</a></small></span>
                                                <span class="price">29.99 USD</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="product">
                                        <div class="product-thumb-info">
                                            <a href="#" class="product-remove"><i class="fa fa-trash-o"></i></a>
                                            <div class="product-thumb-info-image">
                                                <a href="shop-product-detail1.html"><img alt="" width="60" src="images/content/products/product-2.jpg"></a>
                                            </div>

                                            <div class="product-thumb-info-content">
                                                <h4><a href="shop-product-detail2.html">Poplin shirt with fine pleated bands</a></h4>
                                                <span class="item-cat"><small><a href="#">Jackets</a></small></span>
                                                <span class="price">29.999 USD</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="product">
                                        <div class="product-thumb-info">
                                            <a href="#" class="product-remove"><i class="fa fa-trash-o"></i></a>
                                            <div class="product-thumb-info-image">
                                                <a href="shop-product-detail1.html"><img alt="" width="60" src="images/content/products/product-3.jpg"></a>
                                            </div>

                                            <div class="product-thumb-info-content">
                                                <h4><a href="shop-product-detail2.html">Contrasting shirt</a></h4>
                                                <span class="item-cat"><small><a href="#">Jackets</a></small></span>
                                                <span class="price">29.9999 USD</span>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                                <ul class="list-inline cart-subtotals text-right">
                                    <li class="cart-subtotal"><strong>Subtotal</strong></li>
                                    <li class="price"><span class="amount"><strong>RS431</strong></span></li>
                                </ul>
                                <div class="cart-buttons text-right">
                                    <button class="btn btn-white">View Cart</button>
                                    <button class="btn btn-primary">Checkout</button>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <nav class="navbar navbar-default navbar-main navbar-main-slide" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                        <a class="logo" href="index.html"><img src="images/logo.png" alt="Flatize"></a>
                    </div>
                    <ul class="nav navbar-nav navbar-act pull-right">
                        <li class="login"><a href="javascript:void(0);">Login</a></li>

                    </ul>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav pull-right">
                            <li>
                                <a href="index.html">Home</a>

                            </li>

                            <li>
                                <a href="Aboutus.html">About Us</a>

                            </li>

                            <li>
                                <a href="Partnerwithus.html">Patner with us</a>

                            </li>
                            <li >
                                <a href="blog.html">Blog</a>

                            </li>
                            <li>
                                <a href="Careers.html">Careers</a>

                            </li>

                            <li class="active">
                                <a href="Contact.html">Contact Us</a>

                            </li>
                        </ul>
                    </div><!--/.nav-collapse -->
                </div><!--/.container-fluid -->
            </nav>
        </header>
		
		<!-- Begin Login -->
		<div class="login-wrapper">
			<div id="form-login" >
				<h4>Login</h4>
				<p>If you're a member, login here.</p>
				<div class="form-group">
					<label for="inputusername">Username</label>
					<input type="text" class="form-control input-lg" id="inputusername" placeholder="Username">
				</div>
				<div class="form-group">
					<label for="inputpassword">Password</label>
					<input type="password" class="form-control input-lg" id="inputpassword" placeholder="Password">
				</div>
				<ul class="list-inline">
					<li><a href="#">Create new account</a></li>
					<li><a href="#">Request new password</a></li>
				</ul>
				<button type="submit" class="btn btn-white">Log in</button>
			</div>
		</div>
		<!-- End Login -->
		
		
		<!-- Begin Main -->
		<div  class="main">
		
			<!-- Begin page top -->
			<section class="page-top">
				<div class="container">
					<div class="page-top-in">
						<h2><span>Get In Touch</span></h2>
					</div>
				</div>
			</section>
			<!-- End page top -->
			<div class="container">
				<div class="row">
					<div class="col-sm-6 animation">
						<div class="contact-content">
							
							<h4>Contact Form</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br>Nam scelerisque faucibus risus non iaculis.</p>
                            <div id="contact-form" name="form1">

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <label for="name">Your Name*</label>
                                            <asp:TextBox runat="server" ID="txt_yourname" class="form-control" placeholder="Please enter your name."></asp:TextBox>
                                           
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                        ControlToValidate="txt_yourname" ErrorMessage="Please enter your name" Display="Dynamic" SetFocusOnError="true" ForeColor="Red">
                                            </asp:RequiredFieldValidator>
 
                                        </div>
                                        <div class="col-xs-6">
                                            <label for="customer_mail">Your Email*</label>
                                            <asp:TextBox runat="server" ID="txt_email" class="form-control" placeholder="Please enter your Email Address."></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                        ControlToValidate="txt_email" ErrorMessage="Please enter a valid email address" Display="Dynamic" ForeColor="Red" SetFocusOnError="true">
                                            </asp:RequiredFieldValidator>
       
 <asp:RegularExpressionValidator ID="TxtEmailRegEx" runat="server" 
       ErrorMessage="Enter a valid email address"
       ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
       ControlToValidate="txt_email" ForeColor="Red" >
 </asp:RegularExpressionValidator>

                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <label for="subject">Subject*</label>
                                            <asp:TextBox runat="server" ID="txt_subject" class="form-control" placeholder="Please enter the subject"></asp:TextBox>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                                        ControlToValidate="txt_subject" ErrorMessage="Please enter the subject" Display="Dynamic" ForeColor="Red" SetFocusOnError="true">
                                            </asp:RequiredFieldValidator>
                          
                                    
                                        </div>
                                        <div class="col-xs-6">
                                            <label for="website">Phone number</label>
                                            <asp:TextBox runat="server" ID="txt_phonenumber" class="form-control" placeholder="Please enter your Phone number."></asp:TextBox>
                                         
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                                        ControlToValidate="txt_phonenumber" ErrorMessage="Please enter phone-number" Display="Dynamic" ForeColor="Red" SetFocusOnError="true">
                                            </asp:RequiredFieldValidator>
                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ForeColor="Red"
                                                    ControlToValidate="txt_phonenumber" ErrorMessage="Enter the valid phone number"  
                                                        ValidationExpression="[0-9]{10}">
                                             </asp:RegularExpressionValidator>
                                            
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="comments">Your Message*</label>
                                    <asp:TextBox TextMode="MultiLine" ID="txt_comments" runat="server" class="form-control" rows="3" placeholder="Please enter subject"></asp:TextBox> 
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                                        ControlToValidate="txt_comments" ErrorMessage="Please enter your message" Display="Dynamic" ForeColor="Red" SetFocusOnError="true">
                                            </asp:RequiredFieldValidator>
                              
                                </div>
                                <div class="form-group">
                                    <asp:Button runat="server" ID="btn_submit" OnClick="btn_submit_Click" class="btn btn-primary"  Text="submit"/>
                                   
                                </div>
                            </div>
						</div>
					</div>
					<div class="col-sm-6 animation">
						<div class="contact-content">
							<h4>Get in touch</h4>
							<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto.</p>
							<address>
								<i class="fa fa-map-marker"></i> Begumpet, hyderabad<br>
								V6A 1E1 Canada<br><i class="fa fa-phone"></i>9059132905<br>
								<i class="fa fa-print"></i> 8885629019<br>
								<i class="fa fa-envelope"></i> <a href="mailto:info@zoyalty.in">info@zoyalty.in</a>
							</address>
						</div>
					</div>
				</div>
			</div>
			<!-- Google Map -->
			<div class="animation" id="googlemaps"></div>
		</div>
		<!-- End Main -->
		
		<!-- Begin footer -->
		<footer class="footer">
			<div class="container">
				<div class="upper-foot">
					<div class="row">
						<div class="col-xs-6 col-sm-3">
							<h2>Contact detail</h2>
							<address>
								<i class="fa fa-map-marker"></i> No.123 Pellentesque nec erat.<br>
								Aenean semper, neque non faucibus.<br>
								<i class="fa fa-phone"></i> Phone. (123) 456-7890<br>
								<i class="fa fa-fax"></i> Fax. (123) 456-7890<br>
								<i class="fa fa-envelope"></i> E-mail. <a href="mailto:#">first.last@example.com</a>
							</address>
						</div>
						<div class="col-xs-6 col-sm-3">
							<h2>Useful links</h2>
							<ul class="list-unstyled">
								<li><a href="#">Track Orders</a></li>
								<li><a href="#">FAQs</a></li>
								<li><a href="#">Services</a></li>
								<li><a href="#">Free Credit Report</a></li>
								<li><a href="#">Terms and Conditions</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Community Guidelines</a></li>
							</ul>
						</div>
						<div class="col-xs-6 col-sm-3">
							<h2>Tags</h2>
							<ul class="list-inline tagclouds">
								<li><a href="#">Image</a></li>
								<li><a href="#">Features</a></li>
								<li><a href="#">Gallery</a></li>
								<li><a href="#">Post Formats</a></li>
								<li><a href="#">Typography</a></li>
								<li><a href="#">WooCommerce</a></li>
								<li><a href="#">Shortcodes</a></li>
								<li><a href="#">Best Sellers</a></li>
								<li><a href="#">Slideshow</a></li>
							</ul>
						</div>
						<div class="col-xs-6 col-sm-3">
							<h2>Don’t miss out</h2>
							<p>In venenatis neque a eros laoreet eu placerat erat suscipit. Fusce cursus, erat ut scelerisque.</p>
							<div class="form-inline form-newsletter" >
								<div class="form-group">
									<label class="sr-only" for="exampleInputEmail2">Email address</label>
									<input type="email" class="form-control" id="exampleInputEmail2" placeholder="Enter your email here">
								</div>
								<button type="submit" class="btn"><i class="fa fa-caret-right"></i></button>
							</div>
						</div>
					</div>
				</div>
				<div class="below-foot">
					<div class="row">
						<div class="col-xs-6 copyrights">
							<p>Copyright © 2013 Flatize. Designed by <a href="http://pixelgeeklab.com/">PixelGeekLab</a><br>
							All rights reserved.</p>
						</div>
						<div class="col-xs-6 text-right">
							<ul class="list-inline social-list">
								<li><a data-toggle="tooltip" data-placement="top" title="Facebook" href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a data-toggle="tooltip" data-placement="top" title="Twitter" href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a data-toggle="tooltip" data-placement="top" title="Google+" href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a data-toggle="tooltip" data-placement="top" title="Pinterest" href="#"><i class="fa fa-pinterest"></i></a></li>
								<li><a data-toggle="tooltip" data-placement="top" title="RSS" href="#"><i class="fa fa-rss"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- End footer -->
			
	</div>

		<!-- Begin Quickview -->
	<div class="modal fade quickview-wrapper" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
				<div class="product-detail">
				<div class="row">
					<div class="col-sm-6">
						<div class="product-preview">
							<ul class="bxslider" id="slider1">
								<li><img alt="" class="img-responsive" src="images/content/products/product-1.jpg"></li>
								<li><img alt="" class="img-responsive" src="images/content/products/product-1-1.jpg"></li>
								<li><img alt="" class="img-responsive" src="images/content/products/product-1-2.jpg"></li>
								<li><img alt="" class="img-responsive" src="images/content/products/product-1-3.jpg"></li>
								<li><img alt="" class="img-responsive" src="images/content/products/product-1-4.jpg"></li>
							</ul>

							<ul class="list-inline bx-pager">
								<li><a data-slide-index="0" href="#"><img alt="" class="img-responsive" src="images/content/products/product-thumb.jpg"></a></li>
								<li><a data-slide-index="1" href="#"><img alt="" class="img-responsive" src="images/content/products/product-thumb-1.jpg"></a></li>
								<li><a data-slide-index="2" href="#"><img alt="" class="img-responsive" src="images/content/products/product-thumb-2.jpg"></a></li>
								<li><a data-slide-index="3" href="#"><img alt="" class="img-responsive" src="images/content/products/product-thumb-3.jpg"></a></li>
								<li><a data-slide-index="4" href="#"><img alt="" class="img-responsive" src="images/content/products/product-thumb-4.jpg"></a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="summary entry-summary">

							<h3>Denim Trousers with faux leather details</h3>
							
							<div class="reviews-counter clearfix">
								<div class="rating five-stars pull-left">
									<div class="star-rating"></div>
									<div class="star-bg"></div>
								</div>
								<span>3 Reviews</span>
							</div>

							<p class="price">
								<span class="amount">$29.99</span>
							</p>
							
							<ul class="list-inline list-select clearfix">
								<li>
									<div class="list-sort">
										<select class="formDropdown">
											<option>Select Size</option>
											<option>XS</option>
											<option>S</option>
											<option>M</option>
											<option>L</option>
											<option>XL</option>
											<option>XXL</option>
										</select>
									</div>
								</li>
								<li class="color"><a href="#" class="color1"></a></li>
								<li class="color"><a href="#" class="color2"></a></li>
								<li class="color"><a href="#" class="color3"></a></li>
								<li class="color"><a href="#" class="color4"></a></li>
							</ul>

							<div  class="cart">
								<div class="quantity pull-left">
									<input type="button" class="minus" value="-">
									<input type="text" class="input-text qty" title="Qty" value="1" name="quantity" min="1" step="1">
									<input type="button" class="plus" value="+">
								</div>
								<a href="#" class="btn btn-grey">
									<span><i class="fa fa-heart"></i></span>
								</a>
								<button href="#" class="btn btn-primary btn-icon"><i class="fa fa-shopping-cart"></i> Add to cart</button>
							</div>
							
							<ul class="list-unstyled product-meta">
								<li>Sku: 54329843</li>
								<li>Categories: <a href="#">Leather</a> <a href="#">Jeans</a> <a href="#">Men</a></li>
								<li>Tags: <a href="#">Shoes</a> <a href="#">Jeans</a> <a href="#">Men</a> <a href="#">T-shirt</a></li>
							</ul>
							
							<div class="panel-group" id="accordion">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Description</a> </h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse in">
										<div class="panel-body"> 
											<p>Korem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
											<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. qui dolorem ipsum quia dolor sit amet.</p>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Addition Information</a> </h4>
									</div>
									<div id="collapseTwo" class="panel-collapse collapse">
										<div class="panel-body"> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</p> </div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Reviews (3)</a> </h4>
									</div>
									<div id="collapseThree" class="panel-collapse collapse">
										<div class="panel-body post-comments">
											<ul class="comments">
												<li>
													<div class="comment">
														<div class="img-circle"> <img class="avatar" width="50" alt="" src="images/content/blog/avatar.png"> </div>
														<div class="comment-block">
															<span class="comment-by"> <strong>Frank Reman</strong></span>
															<span class="date"><small><i class="fa fa-clock-o"></i> January 12, 2013</small></span>
															<p>Lorem ipsum dolor sit amet.</p>
														</div>
													</div>
												</li>
												<li>
													<div class="comment">
														<div class="img-circle"> <img class="avatar" width="50" alt="" src="images/content/blog/avatar.png"> </div>
														<div class="comment-block">
															<span class="comment-by"> <strong>Frank Reman</strong></span>
															<span class="date"><small><i class="fa fa-clock-o"></i> July 11, 2014</small></span>
															<p>Nam viverra euismod odio, gravida pellentesque urna varius vitae, gravida pellentesque urna varius vitae</p>
														</div>
													</div>
												</li>
												<li>
													<div class="comment">
														<div class="img-circle"> <img class="avatar" width="50" alt="" src="images/content/blog/avatar.png"> </div>
														<div class="comment-block">
															<span class="comment-by"> <strong>Frank Reman</strong></span>
															<span class="date"><small><i class="fa fa-clock-o"></i> July 11, 2014</small></span>
															<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
														</div>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Quickview -->
	
	<!-- Begin Search -->
	<div class="modal fade bs-example-modal-lg search-wrapper" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<p class="clearfix"><button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button></p>
				<div class="form-inline form-search" >
					<div class="form-group">
						<label class="sr-only" for="textsearch">Enter text search</label>
						<input type="text" class="form-control input-lg" id="textsearch" placeholder="Enter text search">
					</div>
					<button type="submit" class="btn btn-white">Search</button>
				</form>
			</div>
		</div>
	</div>
	<!-- End Search -->
	
	</form>
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="vendor/jquery.min.js"></script> 
	<!-- Include all compiled plugins (below), or include individual files as needed --> 
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="bootstrap/js/bootstrap-hover-dropdown.min.js"></script>
	<script src="vendor/owl-carousel/owl.carousel.js"></script>
	<script src="vendor/modernizr.custom.js"></script>
	<script src="vendor/jquery.stellar.js"></script>
	<script src="vendor/imagesloaded.pkgd.min.js"></script>
	<script src="vendor/masonry.pkgd.min.js"></script>
	<script src="vendor/jquery.pricefilter.js"></script>
	<script src="vendor/bxslider/jquery.bxslider.min.js"></script>
	<script src="vendor/mediaelement-and-player.js"></script>
	<script src="vendor/waypoints.min.js"></script>
	<script src="vendor/flexslider/jquery.flexslider-min.js"></script>
	<script src="vendor/jquery.validation/jquery.validation.js"></script>
	<script src="bootstrap/datetimepicker/js/moment.js"></script>
	<script src="bootstrap/datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
	
	<script src="js/contact.js"></script>
	
	<!-- Theme Initializer -->
	<script src="js/theme.plugins.js"></script>
	<script src="js/theme.js"></script>
	
	<!-- Style Switcher -->
	<script type="text/javascript" src="style-switcher/js/switcher.js"></script>
	
	<script type="text/javascript">
		$(function () {
			$('#datetimepicker1').datetimepicker();
			$('#datetimepicker4').datetimepicker({
				pickDate: false
			});
		});
	</script>
	
	<!-- Google Map -->
    <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<script src="vendor/jquery.gmap.js"></script>
	<script>

		/*
		Map Settings

			Find the Latitude and Longitude of your address:
				- http://universimmedia.pagesperso-orange.fr/geo/loc.htm
				- http://www.findlatitudeandlongitude.com/find-address-from-latitude-and-longitude/

		*/

		// Map Markers
		var mapMarkers = [{
			address: "1234 Pine Shade Pl, Salt Lake City, UT 84118",
			html: "<strong>Flatize Shop</strong><br>123 Name Ave, Suite 600, Salt Lake City, UT 84118<br><br>",
			popup: false,
			icon: {
				image: "images/maker.png",
				iconsize: [28, 42],
				iconanchor: [28, 32]
			}
		}];

		// Map Initial Location
		var initLatitude = 40.65610;
		var initLongitude = -112.02586;

		// Map Extended Settings
		var mapSettings = {
			controls: {
				panControl: true,
				zoomControl: true,
				mapTypeControl: true,
				scaleControl: true,
				streetViewControl: true,
				overviewMapControl: true
			},
			scrollwheel: false,
			markers: mapMarkers,
			latitude: initLatitude,
			longitude: initLongitude,
			zoom: 15
		};

		var map = $("#googlemaps").gMap(mapSettings);

		// Map Center At
		var mapCenterAt = function(options, e) {
			e.preventDefault();
			$("#googlemaps").gMap("centerAt", options);
		}

	</script>
	
</body>
</html>
