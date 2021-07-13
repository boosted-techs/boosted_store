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
        <meta name="keywords" content="Boo, Boo store, Boosted Store, Boosted Technologies, DevMate, Tumusiime, Rickie Ashan Tumusiime, boo.store, booo.store, Boosted Technologies Uganda, Ugandan online store, Online boo, Booo store, Betty Happy"/>
        <meta name="description" content="Boo Store is an online store selling physical products across east africa. It is a product of Boosted Technologies. We are your Boosted Partners in boo sales.">
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
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/bootstrap/bootstrap.css" />
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/font-awesome/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/animate.css" />
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/chart-js/dist/Chart.min.css" />
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/style.css" />
    <meta name="theme-color" content="#f23c4d">
    {if isset($user_data)}
        <link href="{$domain.auth}/assets/toggle-btn.css" rel="stylesheet"/>
    {/if}
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-LSC70NT89F"></script>
    <script>
        {literal}
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'G-LSC70NT89F');
        {/literal}
    </script>
</head>
<body>
<div class="container-fluid">
    <div class="container sm-hide">
        <div class="float-right p-2">|
            <a href="//{$smarty.server.SERVER_NAME}/profile/order" class="text-dark"><span class="fa fa-truck">&nbsp; &nbsp;Track order</span></a> |
            <a href="//{$smarty.server.SERVER_NAME}/shop" class="text-dark"><span class="fa fa-shopping-cart">&nbsp; &nbsp;Shop</span></a> |
            <span class="fa fa-user-md">&nbsp;&nbsp;{if $user_info}<a class="text-dark" href="//{$smarty.server.SERVER_NAME}/profile">My account</a>{else}<a class="text-dark" href="{$domain.auth}/app/{$key}?i=4&redirect={$domain.redirect}">SignUp | Login</a>{/if}</span> |
        </div>
        <h6 class="p-2">Welcome to Boo Store</h6>
    </div>
</div>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top">
        <div class="container">
            <div class="col-md-12">
                <div class="row sm-hide">
                    <div class="col-md-3">
                        <a href="//{$smarty.server.SERVER_NAME}">
                            <img src="//{$smarty.server.SERVER_NAME}/assets/images/logo/logo-white.png" class="rounded-0" alt="Logo"/>
                        </a>
                    </div>
                    <div class="col-md-6 search-sm">
                        <form action="//{$smarty.server.SERVER_NAME}/search/products" method="get">
                            <div class="input-group">
                                <input type="text" class="form-control search-rounded" name="q" value="{if isset($smarty.get.q)} {$smarty.get.q} {/if}" placeholder="Search products"/>
                                <button class="btn btn-danger"><i class="fa fa-search"></i></button>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-3 text-white">
                        <span class="p-3">
                            <a href="//{$smarty.server.SERVER_NAME}/watchlist" class="text-white" >
                                <i class="fa fa-heart-o nav-fa" title="Watchlist"></i> <span class="sm-hide watchlist" style="position: relative; top:-15px; ">0</span>
                            </a>
                        </span>
                        <span class="p-3">
                            <a href="//{$smarty.server.SERVER_NAME}/cart" class="text-white" >
                                <i class="fa fa-shopping-cart pt-2 nav-fa"></i> <span class="sm-hide cart" style="position: relative; top:-15px;">0</span>
                            </a>
                        </span>
                    </div>
                </div>
                <!-- Begin Small screen -->
                <div class="row bg-hide"">
                    <button class="btn btn-danger bg-transparent float-left border-0" style="font-size: 40px;" onclick="SideMenu()"><i class="fa fa-bars"></i></button>
                    <a href="//{$smarty.server.SERVER_NAME}">
                        <img src="//{$smarty.server.SERVER_NAME}/assets/images/logo/logo-white.png"  class="rounded-0 sm-logo" alt="Logo"/>
                    </a>
                    <div class="float-right mt-3">
                        <i class="fa fa-search pt-2 nav-fa text-white ml-4" onclick="ShowSearchInput(this)" style="font-size: 25px;"></i>
                        <a href="//{$smarty.server.SERVER_NAME}/profile" class="text-white" >
                            <i class="fa fa-user pt-2 nav-fa text-white ml-4" style="font-size: 25px;"></i>
                        </a>
                        <a href="//{$smarty.server.SERVER_NAME}/cart" class="text-white" >
                            <i class="fa fa-shopping-cart pt-2 nav-fa text-white ml-4" style="font-size: 25px;"></i><small style="position: absolute; top:10px; right: 3px; z-index: 1" class="text-truncate cart"></small>
                        </a>
                    </div>
                </div>
                <div class="small-menu bg-hide shadow">
                    <div class="shadow pt-3 pb-3 pl-3">
                        <button class="float-right btn border-0" onclick="CloseSideMenu()">Close <i class="fa fa-times-circle"></i></button>
                        <h5>Menu</h5>
                    </div>
                    <div class="search-duplicate">
                        <div class="input-group mt-3 mb-3 p-0">
                            <form action="//{$smarty.server.SERVER_NAME}/search/products" method="get">
                                <div class="input-group col-md-12">
                                    <input type="text" class="form-control" name="q" value="{if isset($smarty.get.q)} {$smarty.get.q} {/if}" placeholder="Search products"/>
                                    <button class="btn btn-danger"><i class="fa fa-search"></i></button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="small-menu-list"></div>
                </div>
                <!-- Small search bar is put here via js -->
                <div class="search-input-show"></div>
                <!-- small search bar-->
                <!-- End Small screen menu-->
            </div>
        </div>
    </nav>
{block name="body"}{/block}
<div class="container">
    <div class="col-md-12 pt-2 pb-2 border border-danger border-left-0 border-right-0 partner-logo-container">
        <div class="list-group list-group-horizontal  zoomInLeft" data--duration="2s" data--delay=".3s">
            <div class="list-group-item border-0 ">
                <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="https://www.boostedtechs.com/assets/uploads/ckwel.jpg"  class="partner-logo" alt="logo"/>
            </div>
            <div class="list-group-item border-0">
                <img  src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="https://www.boostedtechs.com/assets/images/logos/logo-square.png" class="partner-logo"  style="width:50px;" alt="logo"/>
            </div>
            <div class="list-group-item border-0">
                <img  src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="https://www.boostedtechs.com/assets/uploads/the-zaks.png" class="partner-logo" alt="logo"/>
            </div>
            <div class="list-group-item border-0">
                <img  src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="https://www.boostedtechs.com/assets/uploads/kia.png" class="partner-logo" alt="logo"/>
            </div>
            <div class="list-group-item border-0">
                <img  src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="https://www.boostedtechs.com/assets/uploads/elohim.png" class="partner-logo" alt="logo"/>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-4 card border-0" data--duration="2s" data--delay=".3s">
            <div class="card-header bg-transparent">
                Featured Products
            </div>
            <div class="row">
                {foreach $featured_products|@array_slice:0:5 item=list}
                    <div class="col-6 col-md-12">
                        <div class="card border-0">
                            <div class="row">
                                <div class="col-md-4 mt-2 mb-2 small-container-2">
                                    <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                        <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif"  lsrc="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.feature_photo}" class="w-100"/>
                                    </a>
                                </div>
                                <div class="col-md-8 mt-2 mb-2">
                                    <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                        <h6 class="text-truncate">{$list.name}</h6>
                                    </a>
                                    <h5 class="mt-2 mb-2 price-text">{$list.currency_name} {$list.price_1|number_format}</h5>
                                    {if $list.price_2 > 0}
                                        <h6 class="mb-2 text-muted price-text font-weight-light" style="text-decoration: line-through">{$list.currency_name} {$list.price_2|number_format:1}</h6>
                                    {/if}
                                </div>
                            </div>
                        </div>
                    </div>
                {/foreach}
            </div>
        </div>
        <div class="col-md-4 card border-0  slideInUp" data--duration="2s" data--delay=".3s">
            <div class="card-header bg-transparent">
                Best deals
            </div>
            <div class="row">
                {foreach $best_deal_products|@array_slice:0:5 item=list}
                    <div class="col-6 col-md-12">
                        <div class="card border-0">
                            <div class="row">
                                <div class="col-md-4 mt-2 mb-2 small-container-2">
                                    <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                        <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif"  lsrc="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.feature_photo}" class="w-100"/>
                                    </a>
                                </div>
                                <div class="col-md-8 mt-2 mb-2">
                                    <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                        <h6 class="text-truncate">{$list.name}</h6>
                                    </a>
                                    <h5 class="mt-2 mb-2 price-text">{$list.currency_name} {$list.price_1|number_format}</h5>
                                    {if $list.price_2 > 0}
                                        <h6 class="mb-2 text-muted price-text font-weight-light" style="text-decoration: line-through">{$list.currency_name} {$list.price_2|number_format:1}</h6>
                                    {/if}
                                </div>
                            </div>
                        </div>
                    </div>
                {/foreach}
            </div>
        </div>
        <div class="col-md-4 card border-0  slideInUp" data--duration="2s" data--delay=".3s">
            <div class="card-header bg-transparent">
                Top rated Products
            </div>
            <div class="row">
                {foreach $top_rated|@array_slice:0:5 item=list}
                    <div class="col-6 col-md-12">
                        <div class="card border-0">
                            <div class="row">
                                <div class="col-md-4 mt-2 mb-2 small-container-2">
                                    <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                        <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif"  lsrc="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.feature_photo}" class="w-100"/>
                                    </a>
                                </div>
                                <div class="col-md-8 mt-2 mb-2">
                                    <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                        <h6 class="text-truncate">{$list.name}</h6>
                                    </a>
                                    <h5 class="mt-2 mb-2 price-text">{$list.currency_name} {$list.price_1|number_format}</h5>
                                    {if $list.price_2 > 0}
                                        <h6 class="mb-2 text-muted price-text font-weight-light" style="text-decoration: line-through">{$list.currency_name} {$list.price_2|number_format:1}</h6>
                                    {/if}
                                    <div class="rates">
                                        {for $counter=1 to 5}
                                            <span  class="{if $counter <= $list.total_rates}text-danger{/if}">
                                                        <i class="fa fa-star small-star"></i>
                                                    </span>
                                        {/for}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                {/foreach}
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="subscription text-white">
        <div class="container  slideInUp" data--duration="2s" data--delay=".3s">
            <div class="row pt-3 pb-3">
                <div class="col-6 col-md-4">
                    <h5>
                        <i class="fa fa-sign-in"></i> Sign up to our news later
                    </h5>
                </div>
                <div class="col-6 col-md-4">
                    .... and receive unlimited deals in real time as we receive them
                </div>
                <div class="col-md-4">
                    <div class="input-group" id="subscription">
                        <input type="text" class="form-control p-3 email-subscription" placeholder="Enter your email address" style="border-top-left-radius: 25px; border-bottom-left-radius: 25px;"/>
                        <button class="btn btn-dark input-group-prepend" onclick="mailSubscription(this)" style="border-top-left-radius: 0; border-bottom-left-radius: 0; border-top-right-radius: 25px; border-bottom-right-radius: 25px;">Sign Up</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="bg-secondary footer-margin">
        <div class="container footer-bg-photo">
            <div class="row mt-4 mb-4">
                <div class="col-md-3  slideInUp text-white pt-2" data--duration="2s" data--delay=".3s">
                    <a href="//{$smarty.server.SERVER_NAME}">
                        <img src="//{$smarty.server.SERVER_NAME}/assets/images/logo/logo-red.png" style="width:150px" class="rounded-0" alt="Logo"/>
                    </a>
                    <p><i class="fa fa-question-circle badge badge-pill"> </i>Got questions ? call us 24/7</p>
                    <h6><i class="fa fa-phone"></i> +256 757074590, +256 788 018846</h6>
                    <p><i class="fa fa-envelope"></i> office@boostedtechs.com</p>
                    <h5>Contact info</h5>
                    <p>Head Office : Bwaise - Kampala</p>
                    <div class="bg-hide">
                        <a href="https://www.facebook.com/boostedtechnologies/">
                            <span class="fa fa-facebook-square text-white" style="font-size:25px;"></span>
                        </a>
                        <a href="https://twitter.com/boosted_techs">
                            <span class="fa fa-twitter-square text-white" style="font-size:25px;"></span>
                        </a>
                        <a href="https://www.youtube.com/channel/UCkPS3FIVUrSKPrdxo6xN8tg">
                            <span class="fa fa-youtube-square text-white" style="font-size:25px;"></span>
                        </a>
                        <a href="https://www.instagram.com/boosted_technologies?r=nametag">
                            <span class="fa fa-instagram text-white" style="font-size:25px;"></span>
                        </a>
                        <a href="https://www.linkedin.com/company/boosted-technologies-ug-ltd/">
                            <span class="fa fa-linkedin text-white" style="font-size:25px;"></span>
                        </a>
                        <a href="tel:+256788018846">
                            <span class="fa fa-phone-square text-white" style="font-size:25px;"></span>
                        </a>
                    </div>
                </div>
                <div class="col-md-3 mt-2  slideInUp" data--duration="2s" data--delay=".3s">
                    <h6 class="p-3 font-weight-bolder text-white">Find it fast</h6>
                    <div class="list-group mt-3">
                        {foreach $categories item=list name=footer_category}
                            {if $smarty.foreach.footer_category.index == 4}
                                {break}
                            {/if}
                            <div class="list-group-item border-0 bg-transparent"> <a href="//{$smarty.server.SERVER_NAME}/{$list.url}" class="text-white"><span class="fa fa-angle-right float-right"></span> {$list.category}</a></div>
                        {/foreach}
                    </div>
                </div>
                <div class="col-md-3 mt-2  slideInUp" data--duration="2s" data--delay=".3s">
                    <h6 class="p-3  font-weight-bolder text-white">Important links</h6>
                    <ul class="list-group mt-3 footer-important-links">
                        {include file="small-bar-menu.tpl"}
                    </ul>
                </div>
                <div class="col-md-3 mt-2  slideInUp" data--duration="2s" data--delay=".3s">
                    <h6 class="p-3  font-weight-bolder text-white">Customer care</h6>
                    <div class="list-group mt-3">
                        <div class="list-group-item border-0 bg-transparent"><a class="text-white" href="//{$smarty.server.SERVER_NAME}/profile">My account</a></div>
                        <div class="list-group-item border-0 bg-transparent"><a class="text-white" href="//{$smarty.server.SERVER_NAME}/profile/order">Track my order</a></div>
                        <div class="list-group-item border-0 bg-transparent"><a class="text-white" href="mailto:support@booo.store">Customer service</a></div>
                        <div class="list-group-item border-0 bg-transparent"><a class="text-white" href="mailto:support@booo.store">Product support</a></div>
                        <div class="list-group-item border-0 bg-transparent"><a class="text-white" href="//{$smarty.server.SERVER_NAME}/terms">Terms and Conditions</a></div>
                        <div class="list-group-item border-0 bg-transparent"><a class="text-white" href="//{$smarty.server.SERVER_NAME}/privacy">Privacy Policy</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="bg-dark footer-margin">
        <div class="float-right pt-3 pb-2 pr-5  zoomInUp sm-hide" data--duration="2s" data--delay=".3s">
            <a href="https://www.facebook.com/boostedtechnologies/">
                <span class="fa fa-facebook-square text-white" style="font-size:25px;"></span>
            </a>
            <a href="https://twitter.com/boosted_techs">
                <span class="fa fa-twitter-square text-white" style="font-size:25px;"></span>
            </a>
            <a href="https://www.youtube.com/channel/UCkPS3FIVUrSKPrdxo6xN8tg">
                <span class="fa fa-youtube-square text-white" style="font-size:25px;"></span>
            </a>
            <a href="https://www.instagram.com/boosted_technologies?r=nametag">
                <span class="fa fa-instagram text-white" style="font-size:25px;"></span>
            </a>
            <a href="https://www.linkedin.com/company/boosted-technologies-ug-ltd/">
                <span class="fa fa-linkedin text-white" style="font-size:25px;"></span>
            </a>
            <a href="tel:+256788018846">
                <span class="fa fa-phone-square text-white" style="font-size:25px;"></span>
            </a>
        </div>
        <div class="container text-white">
            <p class="p-4">
                <a class="text-white" href="https://boostedtechs.com"><b>Boosted Technologies</b></a> - All rights reserved |  A <a class="text-white" href="https://devmate.boostedtechs.com">DevMate product</a>
            </p>
        </div>
    </div>

</div>
<div class="cart-holder  text-center p-0 text-white">
    <a href="//{$smarty.server.SERVER_NAME}/cart">
        <button class="btn btn-danger rounded-0 rounded-right"><i class="fa fa-shopping-cart"></i> Cart</button>
    </a>
</div>
<div class="bottom-pop-up-overlay p-3 alert alert-success text-center font-weight-bolder"></div>
<div class="custom-modal">
    <div class="card custom-modal-content">
        <div class="col-4 col-md-3 float-right">
            <button class="btn btn-dark rounded-0 mt-2 mb-2" onclick="$('.custom-modal').fadeOut('slow')">Close</button>
        </div>
        <div class="card-body modal-content-fill"></div>
    </div>
</div>
{*{if ! $user_info}*}
    {*{if ! isset($website)}*}
        {*<div class="login-overlay">*}
            {*<div class="col-md-5 mx-auto">*}
                {*<div class="card mt-5 border-0">*}
                    {*<div class="card-header border-0 bg-danger text-white">*}
                        {*<h4>Sign Up / LOGIN</h4>*}
                    {*</div>*}
                    {*<div class="card-body">*}

                        {*<div class="text-center border-bottom mb-2 p-3">*}
                            {*<a href="//{$smarty.server.SERVER_NAME}">*}
                                {*<img style="width: 100px;" src="//{$smarty.server.SERVER_NAME}/assets/images/logo/logo-red.png" class="rounded-0" alt="Logo"/>*}
                            {*</a>*}
                        {*</div>*}
                        {*<h6 class="mt-4 mb-4">Take a few seconds of your time to sign up at <b>Boosted Auth</b> to enjoy smooth shopping with <b>Boo Store</b>.</h6>*}
                        {*<p class="bg-warning p-2 mt-4 mb-4">By clicking on Sign Up , you will be redirected to <b>https://auth.boostedtechs.com</b> where you will either create an account if new user or login if existing user to access all Boosted Technologies products.</p>*}
                        {*<a class="text-dark" href="{$domain.auth}/app/{$key}?i=4&redirect={$domain.redirect}">*}
                            {*<button class="btn btn-danger rounded-0 mt-3 mb-3 form-control">SIGNUP / IN</button>*}
                        {*</a>*}
                    {*</div>*}
                {*</div>*}
            {*</div>*}
        {*</div>*}
    {*{/if}*}
{*{else}*}
{*{/if}*}
<script src="//{$smarty.server.SERVER_NAME}/assets/jquery/jquery.3.4.1.js"></script>
<script src="//{$smarty.server.SERVER_NAME}/assets/jquery/popper.min.js"></script>
<script src="//{$smarty.server.SERVER_NAME}/assets/bootstrap/bootstrap.js"></script>
{*<script src="//{$smarty.server.SERVER_NAME}/assets/.min.js"></script>*}
<script src="//{$smarty.server.SERVER_NAME}/assets/chart-js/dist/Chart.min.js"></script>
<script src="//{$smarty.server.SERVER_NAME}/assets/scripts.js"></script>
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
    var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
    (function(){
        var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
        s1.async=true;
        s1.src='https://embed.tawk.to/5fc4ece0a1d54c18d8eed211/default';
        s1.charset='UTF-8';
        s1.setAttribute('crossorigin','*');
        s0.parentNode.insertBefore(s1,s0);
    })();
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