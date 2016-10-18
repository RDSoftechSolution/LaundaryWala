<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="LaundaryWebApp.Index" EnableEventValidation="false" %>

<!DOCTYPE html>
<html>
<head runat="server">

    <meta charset="utf-8">
    <title>Laundary Wala</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Css Files -->
    <%--<script src="Script/bootstrap.js"></script>--%> 
    <%--<rami=u tag--%> 
    
    <link href="../Style/bootstrap.css" rel="stylesheet" />
    <link href="../Style/bootstrap.css" rel="stylesheet" type="text/css">   
    <link href="../Style/plugins.css" rel="stylesheet" type="text/css">
    <link href="../Style/homePopup.css" rel="stylesheet" type="text/css" />
    <link href="../Style/style.css" rel="stylesheet" type="text/css">
    <link href="../Style/responsive.css" rel="stylesheet" type="text/css">
    <link href="../Style/pe-icon-7-stroke.css" rel="stylesheet" type="text/css">
    <link href="../Style/animate.css" rel="stylesheet" type="text/css">
    <link href="Style/kendo/kendo.common.min.css" rel="stylesheet" />
    <script src="Script/kendo/jquery.min.js"></script>
    <script src="Scripts/angular.js"></script>

    <script src="Script/Registration/registrationModule.js"></script>
    <script src="Script/Registration/BaseController.js"></script>
       <script type="text/javascript" src="Script/Order/OrderService.js"></script>
    <script src="Script/Registration/registrationServices.js"></script>

   <%-- <script type="text/javascript" src="Script/Order/OrderModule.js"></script>
    <script type="text/javascript" src="Script/Order/OrderController.js"></script>--%>
 

    <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet'
        type='text/css'>
    <script type="text/javascript" src="../Script/jquery.min.js"></script>
    <script src="Script/kendo/kendo.all.min.js"></script>

    <script type="text/javascript">
      
        $(function () {
            $('#btn_login').click(function () {
                debugger
                $(document.body).append('<div id="sucessWindow"></div>');
                var kendoWindow = $('#sucessWindow').kendoWindow({
                    title: 'Sucess',
                    iframe: true,
                    modal: true,
                    resizable: false,
                    width: 150,
                    height: 200,
                    position: {
                        top: 150, // or "100px"
                        left: "50%"
                    }
                });
                kendoWindow.data("kendoWindow")
  .content($("#delete-confirmation").html())
  .center().open();

                kendoWindow
  .find(".delete-confirm,.delete-cancel")
      .click(function () {

          if ($(this).hasClass("delete-confirm")) {
              
          }
          kendoWindow.data("kendoWindow").close();
      })
      .end()


            });
        });

    </script>
    <script id="delete-confirmation" type="text/x-kendo-template">
   <div class="warncontainer">
	<div class="title">Success</div>
    <div style="font:9pt arial;">
    	<div class="mar30">Sucess</div>
		<div class="mar60">Continue</div>
        <div class='btnareapopup'>
        </div>
        	<input type="button" value='Ok' class="delete-confirm btn bg-alt leftbtn" />
           
        </div>
    </div>
</div> 
    </script>
</head>
<body ng-app="app">
    <form id="form1" runat="server">
        <!-- Preloader -->
        <div id="preloader">
            <div id="status">
            </div>
        </div>
        <div id="page" >
            <div id="topping">
            </div>
            <section id="top">
                <header>
                    <div class="container">
                        <!-- logo -->
                        <div id="logo" style="width: 100%;">
                            <a href="#topping">Laundary<strong>Service</strong></a>

                            <i class="fa fa-mobile" style="margin-left: 3%; color: blue;"></i>
                            <span style="color: #0066cc; font-style: italic; font-weight: bold;">9711226828</span>
                        </div>

                        <!-- menu -->
                        <nav class="navmenu">
                            <ul>
                                <li class="scrollable"><a href="#topping">Home</a></li>
                                <li class="scrollable"><a href="#about">About us</a></li>
                                <li class="scrollable"><a href="#services">Services</a></li>
                                <li class="scrollable"><a href="#pricing">Pricing</a></li>
                                <li class="scrollable"><a href="#portfolio">Gallery</a></li>
                                <li class="scrollable"><a href="#contact">Contact</a></li>
                                <li class="scrollable" runat="server" id="li_Order"><a href="#order">Order</a></li>
                                <li class="scrollable"><a href="#registration">Sign Up</a></li>
                                <li class="scrollable"><a href="#login">Login</a></li>
                            </ul>
                        </nav>
                        <!-- end menu -->
                        <div class="clear"></div>
                    </div>
                </header>
            </section>

            <section id="home">

                <!--Slider-->
                <div class="full_slider">
                    <div id="fullwidth_slider" class="flexslider">
                        <ul class="slides">
                            <li>
                                <div class="slideshow-overlay"></div>
                                <img src="images/slider/1.jpg" alt="" class="slide_bg" />
                                <div class="full_slider_caption">
                                    <div class="container">
                                        <div class="cont">
                                            Enjoy our Services
                                        <div class="title">Premium Laundry</div>
                                            <br>
                                            Wash & Iron
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="slideshow-overlay"></div>
                                <img src="images/slider/2.jpg" alt="" class="slide_bg" />
                                <div class="full_slider_caption">
                                    <div class="container">
                                        <div class="cont">
                                            Enjoy our Services
                                        <div class="title">Dry Cleaning</div>
                                            <br>
                                            Wash & Iron
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="slideshow-overlay"></div>
                                <img src="images/slider/3.jpg" alt="" class="slide_bg" />
                                <div class="full_slider_caption">
                                    <div class="container">
                                        <div class="cont">
                                            Enjoy our Services
                                        <div class="title">Steam Ironing</div>
                                            <br>
                                            Wash & Iron
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="slideshow-overlay"></div>
                                <img src="images/slider/4.jpg" alt="" class="slide_bg" />
                                <div class="full_slider_caption">
                                    <div class="container">
                                        <div class="cont">
                                            Enjoy our Services
                                        <div class="title">Blankets</div>
                                            <br>
                                            Ultimate Luxury
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="slideshow-overlay"></div>
                                <img src="images/slider/5.jpg" alt="" class="slide_bg" />
                                <div class="full_slider_caption">
                                    <div class="container">
                                        <div class="cont">
                                            Enjoy our Services
                                        <div class="title">New Look</div>
                                            <br>
                                            Ultimate Luxury
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--//Slider-->
            </section>

            <div class="color-container">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <h3>Trendy Now <small><a href="#">view all</a></small></h3>
                            <ul class="booking-list">
                                <li>
                                    <div class="booking-item booking-item-small">
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <img src="images/hotel_porto_bay_rio_internacional_de_luxe_800x600.jpg" alt="Image Alternative text"
                                                    title="hotel PORTO BAY RIO INTERNACIONAL de luxe" />
                                            </div>
                                            <div class="col-xs-5">
                                                <h5 class="booking-item-title">The London NYC</h5>
                                                <ul class="icon-group booking-item-rating-stars">
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star-half-empty"></i></li>
                                                </ul>
                                            </div>
                                            <div class="col-xs-3">
                                                <span class="booking-item-price-from">from</span>
                                                <span class="booking-item-price">$230</span>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="booking-item booking-item-small">
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <img src="images/hotel_porto_bay_serra_golf_library_800x600.jpg" alt="Image Alternative text"
                                                    title="hotel PORTO BAY SERRA GOLF library" />
                                            </div>
                                            <div class="col-xs-5">
                                                <h5 class="booking-item-title">The Benjamin</h5>
                                                <ul class="icon-group booking-item-rating-stars">
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star-o"></i></li>
                                                </ul>
                                            </div>
                                            <div class="col-xs-3">
                                                <span class="booking-item-price">$257</span>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="booking-item booking-item-small">
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <img src="images/hotel_porto_bay_rio_internacional_rooftop_pool_800x600.jpg" alt="Image Alternative text"
                                                    title="hotel PORTO BAY RIO INTERNACIONAL rooftop pool" />
                                            </div>
                                            <div class="col-xs-5">
                                                <h5 class="booking-item-title">Warwick New York Hotel</h5>
                                                <ul class="icon-group booking-item-rating-stars">
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                </ul>
                                            </div>
                                            <div class="col-xs-3">
                                                <tourtraveln class="booking-item-price-from">from</tourtraveln>
                                                <tourtraveln class="booking-item-price">$322</tourtraveln>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-4">
                            <h3>Hot Deals <small><a href="#">view all</a></small></h3>
                            <ul class="booking-list">
                                <li>
                                    <div class="booking-item booking-item-small">
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <img src="images/lhotel_porto_bay_sao_paulo_suite_lhotel_living_room_800x600.jpg"
                                                    alt="Image Alternative text" title="LHOTEL PORTO BAY SAO PAULO suite lhotel living room" />
                                            </div>
                                            <div class="col-xs-5">
                                                <h5 class="booking-item-title">Bryant Park Hotel</h5>
                                                <ul class="icon-group booking-item-rating-stars">
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star-half-empty"></i></li>
                                                </ul>
                                            </div>
                                            <div class="col-xs-3">
                                                <tourtraveln class="booking-item-price-from">from</tourtraveln>
                                                <tourtraveln class="booking-item-price">$480</tourtraveln>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="booking-item booking-item-small">
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <img src="images/hotel_porto_bay_serra_golf_suite_800x600.jpg" alt="Image Alternative text"
                                                    title="hotel PORTO BAY SERRA GOLF suite" />
                                            </div>
                                            <div class="col-xs-5">
                                                <h5 class="booking-item-title">The Kimberly Hotel</h5>
                                                <ul class="icon-group booking-item-rating-stars">
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                </ul>
                                            </div>
                                            <div class="col-xs-3">
                                                <tourtraveln class="booking-item-price-from">from</tourtraveln>
                                                <tourtraveln class="booking-item-price">$369</tourtraveln>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="booking-item booking-item-small">
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <img src="images/hotel_porto_bay_serra_golf_living_room_800x600.jpg" alt="Image Alternative text"
                                                    title="hotel PORTO BAY SERRA GOLF living room" />
                                            </div>
                                            <div class="col-xs-5">
                                                <h5 class="booking-item-title">Waldorf Astoria New York</h5>
                                                <ul class="icon-group booking-item-rating-stars">
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                </ul>
                                            </div>
                                            <div class="col-xs-3">
                                                <tourtraveln class="booking-item-price-from">from</tourtraveln>
                                                <tour traveln class="booking-item-price">
                                                $278</TourTraveln>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-4">
                            <h3>Special for You <small><a href="#">view all</a></small></h3>
                            <ul class="booking-list">
                                <li>
                                    <div class="booking-item booking-item-small">
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <img src="images/hotel_porto_bay_rio_internacional_de_luxe_800x600.jpg" alt="Image Alternative text"
                                                    title="hotel PORTO BAY RIO INTERNACIONAL de luxe" />
                                            </div>
                                            <div class="col-xs-5">
                                                <h5 class="booking-item-title">The London NYC</h5>
                                                <ul class="icon-group booking-item-rating-stars">
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star-half-empty"></i></li>
                                                    <li><i class="fa fa-star-o"></i></li>
                                                </ul>
                                            </div>
                                            <div class="col-xs-3">
                                                <tourtraveln class="booking-item-price-from">from</tourtraveln>
                                                <tourtraveln class="booking-item-price">$182</tourtraveln>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="booking-item booking-item-small">
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <img src="images/hotel_porto_bay_serra_golf_suite_800x600.jpg" alt="Image Alternative text"
                                                    title="hotel PORTO BAY SERRA GOLF suite" />
                                            </div>
                                            <div class="col-xs-5">
                                                <h5 class="booking-item-title">The Kimberly Hotel</h5>
                                                <ul class="icon-group booking-item-rating-stars">
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                </ul>
                                            </div>
                                            <div class="col-xs-3">
                                                <tourtraveln class="booking-item-price-from">from</tourtraveln>
                                                <tourtraveln class="booking-item-price">$267</tourtraveln>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="booking-item booking-item-small">
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <img src="images/hotel_porto_bay_serra_golf_library_800x600.jpg" alt="Image Alternative text"
                                                    title="hotel PORTO BAY SERRA GOLF library" />
                                            </div>
                                            <div class="col-xs-5">
                                                <h5 class="booking-item-title">The Benjamin</h5>
                                                <ul class="icon-group booking-item-rating-stars">
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star-half-empty"></i></li>
                                                </ul>
                                            </div>
                                            <div class="col-xs-3">
                                                <tourtraveln class="booking-item-price-from">from</tourtraveln>
                                                <tourtraveln class="booking-item-price">$234</tourtraveln>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <section class="page_section">
                <header class="head_section center_section">
                    <div class="container">
                        <h1>Welcome to Laundary Service</h1>
                        <div class="separator"></div>
                        <p>We are the pioneer online Dhobi (laundry) service providers in Pakistan. Quality, reliability, cost effectiveness and your satisfaction are our top priorities. Dhobionline.pk maintains your pleasing outlook and shining personality. We provide services to smart casual, formal business, leisure time wears and home items.</p>
                    </div>
                    <!-- end .container -->
                </header>
                <!-- //section header -->

                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-4">
                            <div class="icon-banner">
                                <a href="javascript:void(0);">
                                    <div class="icon">
                                        <img alt="" src="images/mal.jpg">
                                    </div>
                                    <h3>Book your next Malaysia holiday!</h3>
                                    <div class="separator"></div>
                                    <p>Whether you're taking a long vacation, working abroad or just looking for something out of the ordinary, with a multi-city ticket from STA Travel, you can travel further and discover.</p>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="icon-banner">
                                <a href="javascript:void(0);">
                                    <div class="icon">
                                        <img alt="" src="images/goa.jpg">
                                    </div>
                                    <h3>GOA Hotels</h3>
                                    <div class="separator"></div>
                                    <p>Whether you're taking a long vacation, working abroad or just looking for something out of the ordinary, with a multi-city ticket from STA Travel, you can travel further and discover more of this amazing planet.</p>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="icon-banner">
                                <a href="javascript:void(0);">
                                    <div class="icon">
                                        <img alt="" src="images/ticket book.jpg">
                                    </div>
                                    <h3>Flight Tickets</h3>
                                    <div class="separator"></div>
                                    <p>Whether you're taking a long vacation, working abroad or just looking for something out of the ordinary, with a multi-city ticket from STA Travel, you can travel further and discover more of this amazing planet.</p>
                                </a>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
                <!-- end .container -->
            </section>

            <section class="page_section" id="about">

                <div class="container wow fadeInUp">
                    <div class="about_block bg_gray mb30">
                        <div class="col_cont">
                            <div class="wrap_cont">
                                <header class="head_section">
                                    <h2>Our Service Center</h2>
                                    History
                              <div class="separator left"></div>
                                </header>
                                <p>Its works within your apartment/villa complex itself. We provide quality steam ironing equipment and trained staff to steam iron your clothes, what's more we have dedicated staff collect and deliver your clothes from your door step, at your convenience. just register yourself on www.dhobiwala.com and place a pickup request online whenever you need our service. Clothes for laundry & dry-cleaning services will be carefully inspected and tagged before sending them to our centralised-processing unit where the clothes get processed. The clothes are then carefully packd and transported back to your home in crates to protect them from wrinkles-thus avoiding the usage of any kind of packing materials such as plastic or cardboard boxes.</p>


                                <%-- <p>Whether you're taking a long vacation, working abroad or just looking for something out of the ordinary, with a multi-city ticket from STA Travel, you can travel further and discover more of this amazing planet.</p> 
							<p>Create a trip that is uniquely yours or choose from our sample Round the World and multi-stop routes. Whatever you're looking for, our travel experts can help you create your perfect multi-city adventure. </p>--%>
                                <asp:HyperLink ID="rd1" class="shortcode_button" runat="server" NavigateUrl="#">Read More</asp:HyperLink>
                            </div>
                        </div>
                        <div class="col_img"></div>
                        <div class="clear"></div>
                    </div>
                </div>
                <!-- //section content -->
            </section>

            <section class="page_section" id="services">
                <div class="container block-wrap wow fadeInUp">
                    <div class="row carousel-box">
                        <div class="col-md-3">
                            <div class="control-block bg_black block">
                                <header class="head_section">
                                    <div class="icon-write">
                                        <i class="pe-5x pe-va pe-7s-diamond"></i>
                                    </div>
                                    <h2>Our FEATURED</h2>
                                    SERVICES
                              <div class="separator left"></div>
                                </header>
                                <p>Take a look at some of our favourite multi-stop and Round the World flights.</p>
                                <p>We recommend the following order for journey and services:</p>
                                <div class="customNavigation">
                                    <a class="btn-prev"><i class="fa fa-angle-left"></i></a>
                                    <a class="btn-next"><i class="fa fa-angle-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="owl-carousel">
                                <div class="item-service block">
                                    <img src="images/mal.jpg" alt="">
                                    <div class="cont">
                                        <h4>WHAT IS MULTI-STOP?</h4>
                                        <div class="separator"></div>
                                        <p>If you’re asking whether you’ll disappear into the ether if your ticket doesn’t complete a full circuit of the Earth, then the answer is ‘no’, you’re good.</p>
                                        <asp:HyperLink ID="rd2" class="shortcode_button" runat="server" NavigateUrl="#">Read More</asp:HyperLink>

                                    </div>
                                </div>
                                <div class="item-service block">
                                    <img src="images/goa.jpg" alt="">
                                    <div class="cont">
                                        <h4>CAN I STILL BOOK?</h4>
                                        <div class="separator"></div>
                                        <p>If you’re asking whether you’ll disappear into the ether if your ticket doesn’t complete a full circuit of the Earth, then the answer is ‘no’, you’re good.</p>
                                        <asp:HyperLink ID="rd3" class="shortcode_button" runat="server" NavigateUrl="#">Read More</asp:HyperLink>
                                    </div>
                                </div>
                                <div class="item-service block">
                                    <img src="images/ticket book.jpg" alt="">
                                    <div class="cont">
                                        <h4>FLY AROUND THE WORLD?</h4>
                                        <div class="separator"></div>
                                        <p>If you’re asking whether you’ll disappear into the ether if your ticket doesn’t complete a full circuit of the Earth, then the answer is ‘no’, you’re good.</p>
                                        <asp:HyperLink ID="rd4" class="shortcode_button" runat="server" NavigateUrl="#">Read More</asp:HyperLink>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end .container -->
            </section>

            <section class="page_section" id="pricing">
                <div class="container block-wrap wow fadeInUp">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="contact_form block">
                                <table id="price1" class="booking-item priceTable">
                                    <thead>
                                        <tr>
                                            <th>Item Name</th>
                                            <th>Washing Rate</th>
                                            <th>Iron Rate</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Shirt</td>
                                            <td>20</td>
                                            <td>10</td>
                                        </tr>
                                        <tr>
                                            <td>T-Shirt</td>
                                            <td>20</td>
                                            <td>10</td>
                                        </tr>
                                        <tr>
                                            <td>Jeans / Dress Pant</td>
                                            <td>20</td>
                                            <td>10</td>
                                        </tr>
                                        <tr>
                                            <td>Shalwar Kameez - Simple (Male)</td>
                                            <td>20</td>
                                            <td>10</td>
                                        </tr>
                                        <tr>
                                            <td>Shalwar Kameez - Cotton (Male)</td>
                                            <td>20</td>
                                            <td>10</td>
                                        </tr>
                                        <tr>
                                            <td>Shalwar Kameez 2-Pcs (Female)</td>
                                            <td>20</td>
                                            <td>10</td>
                                        </tr>
                                        <tr>
                                            <td>Undergarments</td>
                                            <td>20</td>
                                            <td>10</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="contact_form block">
                                <table id="price2" class="booking-item priceTable">
                                    <thead>
                                        <tr>
                                            <th>Item Name</th>
                                            <th>Washing Rate</th>
                                            <th>Iron Rate</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Shirt</td>
                                            <td>20</td>
                                            <td>10</td>
                                        </tr>
                                        <tr>
                                            <td>Shirt</td>
                                            <td>20</td>
                                            <td>10</td>
                                        </tr>
                                        <tr>
                                            <td>Shirt</td>
                                            <td>20</td>
                                            <td>10</td>
                                        </tr>
                                        <tr>
                                            <td>Shirt</td>
                                            <td>20</td>
                                            <td>10</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

            <section class="page_section" id="order" runat="server"  >
                <div class="container block-wrap wow fadeInUp"  ng-controller="orderCtrl">
                    <div class="row">
                        {{messages}}
                        <div class="col-md-12 contact_form block">
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div id="notes"><strong>Place </strong>Order</div>
                                </div>
                            </div>
                            <div class="clear"></div>
                            <div id="fieldOrder">
                                <div class="col-md-4 col-sm-4">
                                    <input class="inp" type="text" name="Name" ng-model="Name" placeholder="Name" title="Name">
                                </div>
                                <div class="col-md-4 col-sm-4">
                                    <input class="inp" type="text" name="Email" ng-model="Email" placeholder="Email" title="Email">
                                </div>
                                <div class="col-md-4 col-sm-4">
                                    <input class="inp" type="text" name="Phone" ng-model="Phone" placeholder="Phone" title="Phone">
                                </div>
                                <div class="clear"></div>

                                <div class="col-md-4 col-sm-4">
                                    <input class="inp" type="text" name="Mobile" ng-model="Mobile" placeholder="Mobile Number" title="Mobile Number">
                                </div>
                                <div class="col-md-4 col-sm-4">
                                    <input class="inp" type="password" name="password" ng-model="City" placeholder="City" title="City">
                                </div>
                                <div class="col-md-4 col-sm-4">
                                    <input class="inp" type="password" name="Area" ng-model="Area" placeholder="Area" title="Area">
                                </div>
                                <div class="clear"></div>
                                <div class="col-md-6 col-sm-6">
                                    <textarea class="inp" rows="4" name="address1" ng-model="Address" placeholder="Address" title="Address"></textarea>
                                </div>
                                <div class="col-md-3 col-sm-3" id="accordian">
                                    <div>
                                        <label>Mens</label>
                                        <div>
                                            <span>Pents</span>
                                            <span id="remPend" ng-click="RemoveItems()" style="cursor: pointer; margin-left: 38%; font-size: 27px; font-weight: bold; font-family: monospace; color: red;">-</span>
                                            <span id="addPend" ng-click="AddItems()" style="cursor: pointer; font-size: 27px; font-weight: bold; font-family: monospace; color: green;">+</span>
                                            <input type="text" id="pentCount" value="0" ng-model="count" style="width: 25%; float: right;" class="inp" readonly="readonly" />
                                        </div>
                                        <div>
                                            <span>Shirt</span>
                                            <span ng-click="RemoveItems()" style="cursor: pointer; margin-left: 38%; font-size: 27px; font-weight: bold; font-family: monospace; color: red;">-</span>
                                            <span ng-click="AddItems()" style="cursor: pointer; font-size: 27px; font-weight: bold; font-family: monospace; color: green;">+</span>
                                            <input type="text" value="0" ng-model="count" style="width: 25%; float: right;" class="inp" readonly="readonly" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-3">
                                    <textarea class="inp" rows="4" name="address1" ng-model="Address" placeholder="Address" title="Address"></textarea>
                                </div>

                                <div class="col-md-12">
                                    <input class="shortcode_button" type="button" value="Place Order" ng-click="ConfirmOrder()">
                                </div>
                                 <div ng-show="message" style="color: #20bf04; text-align: center; font-size: 20px; font-weight: 300;">Congrates! Your Order Placed</div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

            <section class="page_section" id="portfolio">
                <header class="head_section center_section">
                    <div class="container">
                        <h2>Our Awesome Services</h2>
                        <div class="separator"></div>
                        <p>Our unique airline partnerships mean you always get the lowest fares around with great flexibility.</p>
                    </div>
                </header>
                <div class="portfolio-block">
                    <div class="container wow fadeInUp">
                        <ul class="portfolio-menu" id="filters">
                            <li class="active"><a data-filter="*">All</a></li>
                            <li><a data-filter=".fly">Jeans</a></li>
                            <li><a data-filter=".hotel">Shorts</a></li>
                            <li><a data-filter=".air">Blankets</a></li>
                            <li><a data-filter=".car">Towels</a></li>
                        </ul>
                        <div class="row portfolio-list image-grid">
                            <div class="item col-md-4 col-sm-4 col-xs-12 fly air car">
                                <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                    <img src="images/gallary/g2.jpg" alt="">
                                    <div class="caption">
                                        <div class="info">
                                            <h4>air fly</h4>
                                            <div class="separator"></div>
                                            <p>Traditional air fly.</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="item col-md-4 col-sm-4 col-xs-12 hotel air">
                                <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                    <img src="images/gallary/g3.jpg" alt="">
                                    <div class="caption">
                                        <div class="info">
                                            <h4>cultur hotel</h4>
                                            <div class="separator"></div>
                                            <p>Traditional cultur hotel.</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="item col-md-4 col-sm-4 col-xs-12 air">
                                <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                    <img src="images/gallary/g4.jpg" alt="">
                                    <div class="caption">
                                        <div class="info">
                                            <h4>Legs fly</h4>
                                            <div class="separator"></div>
                                            <p>Traditional Legs fly.</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="item col-md-4 col-sm-4 col-xs-12 car air">
                                <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                    <img src="images/gallary/g5.jpg" alt="">
                                    <div class="caption">
                                        <div class="info">
                                            <h4>car</h4>
                                            <div class="separator"></div>
                                            <p>car Style Hotels.</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="item col-md-4 col-sm-4 col-xs-12 hotel">
                                <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                    <img src="images/gallary/g6.jpg" alt="">
                                    <div class="caption">
                                        <div class="info">
                                            <h4>cultur hotel</h4>
                                            <div class="separator"></div>
                                            <p>Special cultur hotel</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="item col-md-4 col-sm-4 col-xs-12 fly hotel">
                                <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                    <img src="images/gallary/g7.jpg" alt="">
                                    <div class="caption">
                                        <div class="info">
                                            <h4>Traditional fly</h4>
                                            <div class="separator"></div>
                                            <p>Traditional fly.</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="item col-md-4 col-sm-4 col-xs-12 air hotel">
                                <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                    <img src="images/gallary/g8.jpg" alt="">
                                    <div class="caption">
                                        <div class="info">
                                            <h4>air hotel</h4>
                                            <div class="separator"></div>
                                            <p>Total air hotel.</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="item col-md-4 col-sm-4 col-xs-12 fly car">
                                <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                    <img src="images/gallary/g9.jpg" alt="">
                                    <div class="caption">
                                        <div class="info">
                                            <h4>Traditional fly</h4>
                                            <div class="separator"></div>
                                            <p>Traditional Body fly</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="item col-md-4 col-sm-4 col-xs-12 fly car">
                                <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                    <img src="images/gallary/g10.jpg" alt="">
                                    <div class="caption">
                                        <div class="info">
                                            <h4>Facial Treatment</h4>
                                            <div class="separator"></div>
                                            <p>Full Facial Treatment.</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="app-item"><a class="shortcode_button add-item">Load More</a></div>
                    </div>
                </div>
                <!-- //section content -->
            </section>

            <section class="page_section">
                <div class="container wow fadeInUp">
                    <div class="pricing_block bg_gray">
                        <header class="head_section center_section">
                            <h2>Our Packages</h2>
                            <div class="separator"></div>
                            <p>Indulge in one of our packages and enjoy a stay filled with our most popular Style Hotels.</p>
                        </header>
                        <div class="price-item">
                            <div class="type">One Day Tour Travel Package</div>
                            <div class="pricelist">$120 month</div>
                            <div class="cont">
                                <ul>
                                    <li>Deluxe accommodation</li>
                                    <li>Hot Stones flys</li>
                                    <li>Body Style Hotels</li>
                                    <li>Hydrohotel</li>
                                    <li>Hands & Feet</li>
                                </ul>
                            </div>
                            <a href="#" class="shortcode_button">Buy Now</a>
                        </div>
                        <div class="price-item optimal">
                            <div class="type">Overnight Tour Travel Package</div>
                            <div class="pricelist">$200 month</div>
                            <div class="cont">
                                <ul>
                                    <li>Deluxe accommodation</li>
                                    <li>Hot Stones flys</li>
                                    <li>Body Style Hotels</li>
                                    <li>Hydrohotel</li>
                                    <li>Hands & Feet</li>
                                </ul>
                            </div>
                            <a href="#" class="shortcode_button">Buy Now</a>
                        </div>
                        <div class="price-item">
                            <div class="type">Three Nights Package</div>
                            <div class="pricelist">$300 month</div>
                            <div class="cont">
                                <ul>
                                    <li>Deluxe accommodation</li>
                                    <li>Hot Stones flys</li>
                                    <li>Body Style Hotels</li>
                                    <li>Hydrohotel</li>
                                    <li>Hands & Feet</li>
                                </ul>
                            </div>
                            <a href="#" class="shortcode_button">Buy Now</a>
                        </div>
                    </div>
                </div>
            </section>

            <section class="page_section">
                <div class="container block-wrap wow fadeInUp">
                    <div class="row carousel-box carousel-full">
                        <div class="col-md-3">
                            <div class="control-block bg_black block">
                                <header class="head_section">
                                    <div class="icon-write">
                                        <i class="pe-5x pe-va pe-7s-diamond"></i>
                                    </div>
                                    <h2>Recent</h2>
                                    News
                              <div class="separator left"></div>
                                </header>
                                <p>The Oasis, our Tour Travel guest-only lounge and restaurant, overlooks the beautiful gardens of The Hotel.</p>
                                <div class="customNavigation">
                                    <a class="btn-prev"><i class="fa fa-angle-left"></i></a>
                                    <a class="btn-next"><i class="fa fa-angle-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="owl-carousel">
                                <div class="item-full">
                                    <div class="row">
                                        <div class="col-md-4 col-sm-4">
                                            <div class="img block">
                                                <img src="images/still3.jpg" alt="">
                                            </div>
                                        </div>
                                        <div class="col-md-8 col-sm-8">
                                            <div class="cont block">
                                                <h4>The Oasis</h4>
                                                <div class="separator left"></div>
                                                <p>The Oasis, our Tour Travel guest-only lounge and restaurant, overlooks the beautiful gardens of The Hotel. The buffet at The Oasis is available on an a la carte basis for $20, plus tax and gratuity.</p>
                                                <a href="#" class="shortcode_button">Read More</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item-full">
                                    <div class="row">
                                        <div class="col-md-4 col-sm-4">
                                            <div class="img block">
                                                <img src="images/still2.jpg" alt="">
                                            </div>
                                        </div>
                                        <div class="col-md-8 col-sm-8">
                                            <div class="cont block">
                                                <h4>New Service</h4>
                                                <div class="separator left"></div>
                                                <p>Guests can relax at The Oasis while enjoying a variety of fresh lunch choices and decadent desserts prepared by our award-winning culinary team. . The buffet menu features refreshing juices, salads, and healthy wraps. Also enjoy our selection of cocktails and wines for an additional charge. </p>
                                                <a href="#" class="shortcode_button">Read More</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end .container -->
            </section>

            <section class="page_section" id="contact">
                <div class="container block-wrap wow fadeInUp">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="info-block bg_colored block">
                                <header class="head_section">
                                    <div class="icon-write">
                                        <i class="pe-5x pe-va pe-7s-diamond"></i>
                                    </div>
                                    <h2>WRITE US</h2>
                                    <div class="separator left"></div>
                                </header>
                                <p>We value your opinion regarding our service and facilities. Please feel free to contact us with your thoughts.</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="contact_form block">
                                <div class="row">
                                    <div class="col-md-12 col-sm-12">
                                        <div id="note"></div>
                                    </div>
                                </div>
                                <div id="fields">
                                    <form id="ajax-contact-form" class="row" action="#">
                                        <div class="col-md-6 col-sm-6">
                                            <input class="inp" type="text" name="name" placeholder="Name" title="Name">
                                        </div>
                                        <div class="col-md-6 col-sm-6">
                                            <input class="inp" type="text" name="email" placeholder="Email" title="Email">
                                        </div>
                                        <div class="clear"></div>
                                        <div class="col-md-6 col-sm-6">
                                            <input class="inp" type="text" name="phone" placeholder="Phone" title="Phone">
                                        </div>
                                        <div class="col-md-6 col-sm-6">
                                            <input class="inp" type="text" name="subject" placeholder="Subject" title="Subject">
                                        </div>
                                        <div class="clear"></div>
                                        <div class="col-md-12">
                                            <textarea class="inp" rows="4" name="message" placeholder="Message" title="Message"></textarea>
                                        </div>
                                        <div class="col-md-12">
                                            <input class="shortcode_button" type="submit" value="Send message">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="info-block bg_black block">
                                <header class="head_section">
                                    <div class="icon-write">
                                        <i class="pe-5x pe-va pe-7s-diamond"></i>
                                    </div>
                                    <h2>CONTACT</h2>
                                    DETAILS
                              <div class="separator left"></div>
                                </header>
                                <p>Address: Gaur City 2 10th Avenue</p>
                                <p>Greater Noida west</p>
                                <p>Noida Extension</p>
                                <p>Phone: +1 (800) 447 33 21</p>
                                <p>Fax: +1 (800) 447 33 21</p>
                                <p>Email: info@dhobiwala.com </p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end .container -->
            </section>

            <section class="page_section" id="registration">
                <div class="container block-wrap wow fadeInUp"  ng-controller="rctrl">
                    <div class="row" style="margin-top: 6%;">
                        {{sinupController}}
                        <div class="col-md-12">
                            <div class="contact_form block">
                                <div class="row">
                                    <div class="col-md-12 col-sm-12">
                                        <div id="notes"><strong>Sign  </strong>Up</div>
                                    </div>
                                </div>

                                <div class="clear"></div>
                                <div id="fieldRegistration">
                                    <%--<form id="ajax-contact-forms" class="row" action="#">--%>
                                        <div class="col-md-4 col-sm-4">
                                            <input class="inp" type="text" name="Name" ng-model="Name" placeholder="Name" title="Name">
                                        </div>
                                        <div class="col-md-4 col-sm-4">
                                            <input class="inp" type="text" name="Email" ng-model="Email" placeholder="Email" title="Email">
                                        </div>
                                        <div class="col-md-4 col-sm-4">
                                            <input class="inp" type="text" name="Phone" ng-model="Phone" placeholder="Phone" title="Phone">
                                        </div>
                                        <div class="clear"></div>
                                        <div class="col-md-4 col-sm-4">
                                            <input class="inp" type="text" name="Mobile" ng-model="Mobile" placeholder="Mobile Number" title="Mobile Number">
                                        </div>

                                        <div class="col-md-4 col-sm-4">
                                            <input class="inp" type="password" name="password" ng-model="Password" placeholder="Password" title="Password">
                                        </div>
                                        <div class="col-md-4 col-sm-4">
                                            <input class="inp" type="password" name="confirmPassword" ng-model="confirmPassword" placeholder="Confirm Password" title="Confirm Password">
                                        </div>

                                        <div class="clear"></div>
                                        <div class="col-md-6 col-sm-6">
                                            <textarea class="inp" rows="4" name="address1" ng-model="Address1" placeholder="Address1" title="Address1"></textarea>
                                        </div>
                                        <div class="col-md-6 col-sm-6">
                                            <textarea class="inp" rows="4" name="address2" ng-model="Address2" placeholder="Address2" title="Address2"></textarea>
                                        </div>
                                        <div class="col-md-12">
                                            <input class="shortcode_button" type="button" value="Sign Up" ng-click="Register()">
                                        </div>
                                        <div ng-show="message" style="color: #20bf04; text-align: center; font-size: 20px; font-weight: 300;">Congrates! You have successfully registered</div>
                                    <%--</form>--%>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

            <section class="page_section" id="login">
                <div class="container block-wrap wow fadeInUp" style="margin-top: 4%;">
                    <div class="row">

                        <div class="col-md-6" style="margin-left: 24%;">
                            <div class="contact_form block booking-item">
                                <div class="row">
                                    <div class="col-md-12 col-sm-12">
                                        <div id="logintext"><strong>Log  </strong>In</div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>

                                <div id="fieldLogin">
                                    <div class="row">
                                        <div class="col-md-6 col-sm-6">
                                            <input class="inp" type="text" name="name" placeholder="User Name" title="User Name">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 col-sm-6">
                                            <input class="inp" type="password" name="password" placeholder="Password" title="Password">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                             <input class="shortcode_button" id="btn_login" type="submit" value="Log In" runat="server" onserverclick="btn_login_ServerClick">
                                          <%--  <input class="shortcode_button" id="btn_login" type="button" value="Log In">--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

            <div class="map-canvas">
                <%--   <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d193572.00379171042!2d-73.97800350000001!3d40.70563080000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1s87-89+E+4th+St%2C+New+York%2C+NY+10003%2C+Stati+Uniti!5e0!3m2!1sit!2sit!4v1416499866904">
            </iframe>--%>
            </div>
            <div class="footer">
                <div class="container">

                    <div class="copyright">
                        &copy; Copyright 2016. Laundary Services All Rights Reserved.
                    </div>
                </div>
                <!-- //footer_bottom -->
            </div>
        </div>
        <header class="fixed-menu"></header>
        <script src="Script/jquery.isotope.min.js"></script>
        <script type="text/javascript" src="../Script/sorting.js"></script>
        <script src="../Script/homePopupLoad.js" type="text/javascript"></script>
        <script src="../Script/homePopup.js" type="text/javascript"></script>
        <script type="text/javascript" src="../Script/plugins.js"></script>
        <script type="text/javascript" src="../Script/current.js"></script>
        <script type="text/javascript" src="../Script/wow.min.js"></script>
        <script>
            new WOW().init();
        </script>

    </form>
</body>
</html>
