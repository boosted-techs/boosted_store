<!doctype html>
<html>
<head>
    <link rel="shortcut icon" href="//{$smarty.server.SERVER_NAME}/assets/favicon_io/favicon.ico">
    <!-- IE 10+ "Metro" Tiles - 144x144 pixels in size icon should be transparent -->
    <!-- Touch Icons - iOS and Android 2.1+ 152x152 pixels in size. -->
    <link rel="apple-touch-icon-precomposed" href="//{$smarty.server.SERVER_NAME}/assets/favicon_io/android-chrome-512x512.png">

    <!-- Firefox, Chrome, Safari, IE 11+ and Opera. 96x96 pixels in size. -->
    <link rel="icon" href="//{$smarty.server.SERVER_NAME}/assets/favicon_io/android-chrome-192x192.png">
    {block name="meta"}{/block}
    {*<meta name="robots" content="noindex" />*}
    {if isset($website)}
        <title>Boo Store - online shopping, groceries, electronics, fashion wear etc</title>
        <meta name="keywords" content="Boo, Boo store, Boosted Store, Boosted Technologies, DevMate, boo.store, booo.store, Boosted Technologies Uganda, Ugandan online store, Online boo, Booo store"/>
        <meta name="description" content="Buy anything from Millions of Vendors accross the globe from your favorite vendors">
        <meta name="contact" content="office[at]boostedtechs[dot]com" />
        <meta name="author" content="DevMate <https://devmate.boostedtechs.com>" />
        <meta name="copyright" content="Boosted Technologies" />
        <meta Name="rating" content="General"/>
        <meta property="og:site_name" content="Boo Store ">
        <meta property="og:description" content="Boo Store is an online store selling physical products across east africa. It is a product of Boosted Technologies. We are your Boosted Partners in boo sales.">
        <meta property="og:image" content="//{$smarty.server.SERVER_NAME}/media/boosted-thumbnail.jpg">
        <PageMap>
            <DataObject type="thumbnail">
                <Attribute name="src" value="//{$smarty.server.SERVER_NAME}/media/boosted-thumbnail.jpg"/>
                <Attribute name="width" value="100"/>
            </DataObject>
        </PageMap>
    {/if}
    <!-- For IE 9 and below. ICO should be 32x32 pixels in size -->
    <meta name="refresh" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300&family=Open+Sans:wght@300&family=Montserrat:wght@600&display=swap" rel="stylesheet">
    <meta name="copyright" content="Boosted Technologies https://boostedtechs.com">
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/css/animate.min.css">
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/css/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/css/jquery-ui.min.css">
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/css/nice-select.css">
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/css/jarallax.css">
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/css/flaticon.css">
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/css/slick.css">
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/css/default.css">
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/css/style.css">
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/css/responsive.css">
    <meta name="theme-color" content="#f23c4d">
    {if isset($user_data)}
        <link href="{$domain.auth}/assets/toggle-btn.css" rel="stylesheet"/>
    {/if}
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-LSC70NT89F"></script>
    <script>
        {literal}
        // window.dataLayer = window.dataLayer || [];
        // function gtag(){dataLayer.push(arguments);}
        // gtag('js', new Date());
        //
        // gtag('config', 'G-LSC70NT89F');
        {/literal}
    </script>
</head>
<body>
    <!-- preloader  -->
    <div id="preloader">
        <div id="ctn-preloader" class="ctn-preloader">
            <div class="animation-preloader">
                <div class="spinner"></div>
            </div>
            <div class="loader">
                <div class="row">
                    <div class="col-3 loader-section section-left">
                        <div class="bg"></div>
                    </div>
                    <div class="col-3 loader-section section-left">
                        <div class="bg"></div>
                    </div>
                    <div class="col-3 loader-section section-right">
                        <div class="bg"></div>
                    </div>
                    <div class="col-3 loader-section section-right">
                        <div class="bg"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- preloader end -->


    <!-- Scroll-top -->
    <button class="scroll-top scroll-to-target" data-target="html">
        <i class="fas fa-angle-up"></i>
    </button>
    <!-- Scroll-top-end-->

    <!-- header-area -->
    <header class="header-style-six">
        <div class="header-top-wrap d-none d-md-block">
            <div class="container custom-container-two">
                <div class="row align-items-center justify-content-center">
                    <div class="col-sm-6">
                        <div class="header-top-link">
                            <ul>
                                <li>
                                   {if $user_info}<a href="//{$smarty.server.SERVER_NAME}/profile">My account</a>{else}<a href="{$domain.auth}/app/{$key}?i=4&redirect={$domain.redirect}">Login</a>{/if}
                                </li>
                                <li><a href="#">FAQS</a></li>
                                <li><a href="tel:256759800742">UG +256 759 800742</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="header-top-right">
                            <div class="lang">
                                <select name="select">
                                    <option value="en">English</option>
                                </select>
                            </div>
                            <div class="currency">
                                <form action="#">
                                    <select name="select">
                                        <option value="UGX">UGX</option>
                                        <option value="KES">KES</option>
                                        <option value="USD">USD</option>
                                    </select>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="sticky-header" class="main-header menu-area transparent-header">
            <div class="container custom-container-two">
                <div class="row">
                    <div class="col-12">
                        <div class="mobile-nav-toggler"><i class="fas fa-bars"></i></div>
                        <div class="menu-wrap">
                            <nav class="menu-nav show">
                                <div class="logo">
                                    <a href="index.html"><img src="//{$smarty.server.SERVER_NAME}/assets/img/logo/logo.png" alt="Logo"></a>
                                </div>
                                <div class="navbar-wrap main-menu d-none d-lg-flex">
                                    <ul class="navigation">
                                        <li class="active"><a href="//{$smarty.server.SERVER_NAME}">Home</a>

                                        </li>
                                        <li class="has--mega--menu"><a href="#">Shop</a>
                                            <ul class="mega-menu">
                                                <li class="mega-menu-wrap">
                                                    <ul class="mega-menu-col">
                                                        <li class="mega-title"><a href="shop.html">SHOP PAGES</a></li>
                                                        <li><a href="shop-sidebar.html">Right Sidebar</a></li>
                                                        <li><a href="shop-sidebar.html">Left Sidebar</a></li>
                                                        <li><a href="shop.html">Hidden sidebar</a></li>
                                                        <li><a href="shop.html">Filters area</a></li>
                                                        <li><a href="shop-details.html">Shop Details</a></li>
                                                        <li><a href="cart.html">Cart Page</a></li>
                                                        <li><a href="checkout.html">Checkout Page</a></li>
                                                    </ul>
                                                    <ul class="mega-menu-col">
                                                        <li class="mega-title"><a href="#">FEATURES</a></li>
                                                        <li><a href="shop-sidebar.html">Variable Product</a></li>
                                                        <li><a href="shop-sidebar.html">External Product</a></li>
                                                        <li><a href="shop-sidebar.html">Other Shop Pages</a></li>
                                                        <li><a href="shop-sidebar.html">Categories</a></li>
                                                        <li><a href="shop-sidebar.html">Collection</a></li>
                                                        <li><a href="shop-sidebar.html">LookBook</a></li>
                                                        <li><a href="cart.html">Shopping Cart</a></li>
                                                    </ul>
                                                    <ul class="mega-menu-col sub-cat-post">
                                                        <li>
                                                            <a href="shop-sidebar.html">
                                                                <img src="img/product/sub_menu_img01.jpg" alt="">
                                                                <span class="btn">Man Shop</span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                    <ul class="mega-menu-col sub-cat-post">
                                                        <li>
                                                            <a href="shop-sidebar.html">
                                                                <img src="img/product/sub_menu_img02.jpg" alt="">
                                                                <span class="btn">Women’s Shop</span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="about-us.html">About Us</a></li>
                                        <li class="menu-item-has-children"><a href="#">blog</a>
                                            <ul class="submenu">
                                                <li><a href="blog.html">Our Blog</a></li>
                                                <li><a href="blog-details.html">Blog Details</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="contact.html">Contact Us</a></li>
                                    </ul>
                                </div>
                                <div class="header-action d-none d-md-block">
                                    <ul>
                                        <li class="header-search"><a href="#" data-toggle="modal"
                                                                     data-target="#search-modal"><i class="flaticon-search"></i></a></li>
                                        <li class="header-profile"><a href="#"><i class="flaticon-user"></i></a></li>
                                        <li class="header-wishlist"><a href="#"><i class="flaticon-heart-shape-outline"></i></a></li>
                                        <li class="header-shop-cart"><a href="#"><i class="flaticon-shopping-bag"></i><span>0</span></a>
                                            <ul class="minicart">
                                                <li class="d-flex align-items-start">
                                                    <div class="cart-img">
                                                        <a href="#"><img src="img/product/cart_p01.jpg" alt=""></a>
                                                    </div>
                                                    <div class="cart-content">
                                                        <h4><a href="#">Exclusive Winter Jackets</a></h4>
                                                        <div class="cart-price">
                                                            <span class="new">$229.9</span>
                                                            <span><del>$229.9</del></span>
                                                        </div>
                                                    </div>
                                                    <div class="del-icon">
                                                        <a href="#"><i class="far fa-trash-alt"></i></a>
                                                    </div>
                                                </li>
                                                <li class="d-flex align-items-start">
                                                    <div class="cart-img">
                                                        <a href="#"><img src="img/product/cart_p02.jpg" alt=""></a>
                                                    </div>
                                                    <div class="cart-content">
                                                        <h4><a href="#">Winter Jackets For Women</a></h4>
                                                        <div class="cart-price">
                                                            <span class="new">$229.9</span>
                                                            <span><del>$229.9</del></span>
                                                        </div>
                                                    </div>
                                                    <div class="del-icon">
                                                        <a href="#"><i class="far fa-trash-alt"></i></a>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="total-price">
                                                        <span class="f-left">Total:</span>
                                                        <span class="f-right">$239.9</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="checkout-link">
                                                        <a href="#">Shopping Cart</a>
                                                        <a class="black-color" href="#">Checkout</a>
                                                    </div>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="sidebar-toggle-btn"><a href="#" class="navSidebar-button"><i class="flaticon-menu-button-of-three-horizontal-lines"></i></a></li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                        <!-- Mobile Menu  -->
                        <div class="mobile-menu">
                            <div class="close-btn"><i class="flaticon-targeting-cross"></i></div>
                            <nav class="menu-box">
                                <div class="nav-logo"><a href="index.html"><img src="img/logo/logo.png" alt="" title=""></a>
                                </div>
                                <div class="menu-outer">
                                    <ul class="navigation">
                                        <li class="active menu-item-has-children"><a href="#">Home</a>
                                            <ul class="submenu">
                                                <li><a href="index.html">Home One</a></li>
                                                <li><a href="index-2.html">Home Two</a></li>
                                                <li><a href="index-3.html">Home Three</a></li>
                                                <li><a href="index-4.html">Home Four</a></li>
                                                <li><a href="index-5.html">Home Five</a></li>
                                                <li><a href="index-6.html">Home Six</a></li>
                                                <li class="active"><a href="index-7.html">Home Seven</a></li>
                                                <li><a href="index-8.html">Home Eight</a></li>
                                                <li><a href="index-9.html">Home Nine</a></li>
                                            </ul>
                                        </li>
                                        <li class="menu-item-has-children"><a href="#">Shop</a>
                                            <ul class="submenu">
                                                <li><a href="shop.html">Shop Page</a></li>
                                                <li><a href="shop-sidebar.html">Shop Sidebar</a></li>
                                                <li><a href="shop-details.html">Shop Details</a></li>
                                                <li><a href="cart.html">Cart Page</a></li>
                                                <li><a href="cart.html">Checkout Page</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="about-us.html">About Us</a></li>
                                        <li class="menu-item-has-children"><a href="#">blog</a>
                                            <ul class="submenu">
                                                <li><a href="blog.html">Our Blog</a></li>
                                                <li><a href="blog-details.html">Blog Details</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="contact.html">Contact Us</a></li>
                                    </ul>
                                </div>
                                <div class="social-links">
                                    <ul class="clearfix">
                                        <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                                        <li><a href="#"><span class="fab fa-facebook-square"></span></a></li>
                                        <li><a href="#"><span class="fab fa-pinterest-p"></span></a></li>
                                        <li><a href="#"><span class="fab fa-instagram"></span></a></li>
                                        <li><a href="#"><span class="fab fa-youtube"></span></a></li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                        <div class="menu-backdrop"></div>
                        <!-- End Mobile Menu -->
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Search -->
        <div class="modal fade" id="search-modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form>
                        <input type="text" placeholder="Search here...">
                        <button><i class="flaticon-search"></i></button>
                    </form>
                </div>
            </div>
        </div>
        <!-- Modal Search-end -->

        <!-- off-canvas-start -->
        <div class="sidebar-off-canvas info-group">
            <div class="off-canvas-overlay"></div>
            <div class="off-canvas-widget scroll">
                <div class="sidebar-widget-container">
                    <div class="off-canvas-heading">
                        <a href="#" class="close-side-widget">
                            <span class="flaticon-targeting-cross"></span>
                        </a>
                    </div>
                    <div class="sidebar-textwidget">
                        <div class="sidebar-info-contents">
                            <div class="content-inner">
                                <div class="logo mb-30">
                                    <a href="index.html"><img src="img/logo/logo.png" alt=""></a>
                                </div>
                                <div class="content-box">
                                    <p>Shop, Save and Sale with Boo Store. Enjoy Unique quality products from different suppliers.</p>
                                </div>
                                <div class="contact-info">
                                    <h4 class="title">CONTACT US</h4>
                                    <ul>
                                        <li><span class="flaticon-phone-call"></span><a href="tel:256759800742">+256 759 800742</a></li>
                                        <li><span class="flaticon-email"></span><a
                                                    href="mailto:adara@info.com">sales@booo.store</a></li>
                                        <li><span class="flaticon-place"></span>S.A Fridaus Plaza - Bwaise - Kampala (UG)</li>
                                    </ul>
                                </div>
                                <div class="oc-newsletter">
                                    <h4 class="title">NEWSLETTER</h4>
                                    <p>Fill your email below to subscribe to my newsletter</p>
                                    <form action="#">
                                        <input type="email" placeholder="Email...">
                                        <button class="btn">Subscribe</button>
                                    </form>
                                </div>
                                <div class="oc-social">
                                    <ul>
                                        <li><a href="https://www.facebook.com/boostedtechnologies"><i class="fab fa-facebook-f"></i></a></li>
                                        <li><a href="https://twitter.com/boosted_techs"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="https://www.youtube.com/channel/UCkPS3FIVUrSKPrdxo6xN8tg"><i class="fab fa-youtube"></i></a></li>
                                        <li><a href="https://www.instagram.com/boosted_technologies?r=nametag"><i class="fab fa-instagram"></i></a></li>
                                        <li><a href="https://www.linkedin.com/company/boosted-technologies-ug-ltd/"><i class="fab fa-linkedin-in"></i></a></li>
                                        <li><a href="https://www.google.co.ug/search?hl=en-GB&_ga=2.58569960.371287489.1634834774-2113196131.1634662578&q=Boosted+Technologies+LTD&ludocid=2368282426987557381&lsig=AB86z5XdFJVUsk83zujXbI6QyRSI"><i class="fab fa-google"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- off-canvas-end -->

    </header>
    <!-- header-area-end -->

    <main>
        {block name="body"}{/block}
    </main>
    <!-- footer-area -->
    <footer class="footer-style-two pt-75">
        <div class="container">
            <div class="footer-top-wrap">
                <div class="row">
                    <div class="col-12">
                        <div class="footer-logo">
                            <a href="index.html"><img src="//{$smarty.server.SERVER_NAME}/assets/img/logo/logo.png" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-middle-wrap pt-45 pb-20">
                <div class="row">
                    <div class="col-lg-3 col-sm-6">
                        <div class="footer-widget mb-50">
                            <h4 class="fw-title">COMPANY</h4>
                            <div class="fw-link">
                                <ul>
                                    <li><a  href="//{$smarty.server.SERVER_NAME}/profile">My account</a></li>
                                    <li><a  href="//{$smarty.server.SERVER_NAME}/profile/order">Track my order</a></li>
                                    <li><a  href="mailto:support@booo.store">Customer service</a></li>
                                    <li><a  href="mailto:support@booo.store">Product support</a></li>
                                    <li><a href="//{$smarty.server.SERVER_NAME}/terms">Terms and Conditions</a></li>
                                    <li><a href="//{$smarty.server.SERVER_NAME}/privacy">Privacy Policy</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="footer-widget mb-50">
                            <h4 class="fw-title">Quick Links</h4>
                            <div class="fw-link">
                                <ul>
                                    {include file="small-bar-menu.tpl"}
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="footer-widget mb-50">
                            <h4 class="fw-title">Category</h4>
                            <div class="fw-link">
                                <ul>
                                    {foreach $categories item=list name=footer_category}
                                        {if $smarty.foreach.footer_category.index == 4}
                                            {break}
                                        {/if}
                                        <li> <a href="//{$smarty.server.SERVER_NAME}/{$list.url}"><span class="fa fa-angle-right pull-right"></span> {$list.category}</a></li>
                                    {/foreach}
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="footer-widget mb-50">
                            <h4 class="fw-title">FOLLOW US</h4>
                            <div class="footer-text">
                                <p>Get Free Shipping on all your orders!</p>
                                <div class="footer-social">
                                    <ul>
                                        <li><a href="https://www.facebook.com/boostedtechnologies"><i class="fab fa-facebook-f"></i></a></li>
                                        <li><a href="https://twitter.com/boosted_techs"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="https://www.youtube.com/channel/UCkPS3FIVUrSKPrdxo6xN8tg"><i class="fab fa-youtube"></i></a></li>
                                        <li><a href="https://www.instagram.com/boosted_technologies?r=nametag"><i class="fab fa-instagram"></i></a></li>
                                        <li><a href="https://www.linkedin.com/company/boosted-technologies-ug-ltd/"><i class="fab fa-linkedin-in"></i></a></li>
                                        <li><a href="https://www.google.co.ug/search?hl=en-GB&_ga=2.58569960.371287489.1634834774-2113196131.1634662578&q=Boosted+Technologies+LTD&ludocid=2368282426987557381&lsig=AB86z5XdFJVUsk83zujXbI6QyRSI"><i class="fab fa-google"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-wrap gray-light-bg">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="copyright-text">
                            <p>&copy; {$smarty.now|date_format:'%Y'} <a href="https://www.boostedtechs.com">BOOSTED TECHNOLOGIES LTD</a>. All Rights Reserved | UG (+256) 759 800742</p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="pay-method-img">
                            <img src="//{$smarty.server.SERVER_NAME}/assets/img/images/payment_method_img.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer-area-end -->
    <!-- JS here -->
    <script src="//{$smarty.server.SERVER_NAME}/assets/js/vendor/jquery-3.5.0.min.js"></script>
    <script src="//{$smarty.server.SERVER_NAME}/assets/js/popper.min.js"></script>
    <script src="//{$smarty.server.SERVER_NAME}/assets/js/bootstrap.min.js"></script>
    <script src="//{$smarty.server.SERVER_NAME}/assets/js/isotope.pkgd.min.js"></script>
    <script src="//{$smarty.server.SERVER_NAME}/assets/js/imagesloaded.pkgd.min.js"></script>
    <script src="//{$smarty.server.SERVER_NAME}/assets/js/jquery.magnific-popup.min.js"></script>
    <script src="//{$smarty.server.SERVER_NAME}/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="//{$smarty.server.SERVER_NAME}/assets/js/bootstrap-datepicker.min.js"></script>
    <script src="//{$smarty.server.SERVER_NAME}/assets/js/jquery.nice-select.min.js"></script>
    <script src="//{$smarty.server.SERVER_NAME}/assets/js/jquery.countdown.min.js"></script>
    <script src="//{$smarty.server.SERVER_NAME}/assets/js/swiper-bundle.min.js"></script>
    <script src="//{$smarty.server.SERVER_NAME}/assets/js/jarallax.min.js"></script>
    <script src="//{$smarty.server.SERVER_NAME}/assets/js/slick.min.js"></script>
    <script src="//{$smarty.server.SERVER_NAME}/assets/js/wow.min.js"></script>
    <script src="//{$smarty.server.SERVER_NAME}/assets/js/nav-tool.js"></script>
    <script src="//{$smarty.server.SERVER_NAME}/assets/js/plugins.js"></script>
    <script src="//{$smarty.server.SERVER_NAME}/assets/js/main.js"></script>
    <script src="//{$smarty.server.SERVER_NAME}/assets//assets/scripts.js"></script>
    <script>
    // window.onload = function(){
    //     alert("Window loaded");
    // }
    document.addEventListener("DOMContentLoaded", function() {
        $(".slider_menu").hide();
        $(".your-slider").show();
        {literal}
        $('img').each(function(){ $(this).attr('src', $(this).attr('lsrc')); });
        {/literal}
        //console.log(3);
    });
</script>
<script type="text/javascript">
    {literal}
    // var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
    // (function(){
    //     var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
    //     s1.async=true;
    //     s1.src='https://embed.tawk.to/5fc4ece0a1d54c18d8eed211/default';
    //     s1.charset='UTF-8';
    //     s1.setAttribute('crossorigin','*');
    //     s0.parentNode.insertBefore(s1,s0);
    // })();
    {/literal}
</script>
<script>
    //new ().init();
    $(document).ready(() =>{
        $.post("//" + window.location.host + "/get_cart", (data) => {
            let items = JSON.parse(data);
            $(".cart").html(items.cart);
            $(".watchlist").html(items.watchlist);
        });
    });
</script>
{if $user_info}
    {if isset($smarty.get.account_creation)}
        <script>
            bottomPopUp("You have successfully logged in Boo Store. To manage your shipping address, go to your profile ");
        </script>
    {/if}
{/if}
{block name="scripts"}{/block}
</body>
</html>