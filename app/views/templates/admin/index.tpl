<!doctype html>
<html>
<head>
    <title>Boosted Store</title>
    <meta name="refresh" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300&family=Open+Sans:wght@300&family=Montserrat:wght@600&display=swap" rel="stylesheet">
    <meta name="description" content="We are you Boosted store">
    <!-- For IE 9 and below. ICO should be 32x32 pixels in size -->
    <link rel="shortcut icon" href="//{$smarty.server.SERVER_NAME}/assets/favicon_io/favicon.ico">
    <!-- IE 10+ "Metro" Tiles - 144x144 pixels in size icon should be transparent -->
    <!-- Touch Icons - iOS and Android 2.1+ 152x152 pixels in size. -->
    <link rel="apple-touch-icon-precomposed" href="//{$smarty.server.SERVER_NAME}/assets/favicon_io/android-chrome-512x512.png">

    <!-- Firefox, Chrome, Safari, IE 11+ and Opera. 96x96 pixels in size. -->
    <link rel="icon" href="//{$smarty.server.SERVER_NAME}/assets/favicon_io/android-chrome-192x192.png">
    <meta name="copyright" content="Boosted Technologies https://boostedtechs.com">
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/bootstrap/bootstrap.css" />
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/font-awesome/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/animate.css" />
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/style.css" />
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/chart-js/dist/Chart.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.10.20/b-1.6.1/b-html5-1.6.1/b-print-1.6.1/fh-3.1.6/kt-2.5.1/r-2.2.3/sc-2.0.1/sp-1.0.1/datatables.min.css"/>
    <meta name="theme-color" content="#f23c4d">
    {block name="meta"}{/block}
    {if isset($user_data)}
        <link href="{$domain.auth}/assets/toggle-btn.css" rel="stylesheet"/>
    {/if}
    <script src="https://cdn.tiny.cloud/1/qwxhf4gxdthwi250xiui8mpjvipnb10nheoaoogwbbodg8zx/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    <script>{literal}tinymce.init({selector:'textarea'});{/literal}</script>
</head>
<body>
<div class="container-fluid">
    <div class="container sm-hide">
        <div class="float-right p-2">|
            <a href="//{$smarty.server.SERVER_NAME}/profile/order" class="text-dark"><span class="fa fa-truck">&nbsp; &nbsp;Track order</span></a> |
            <a href="//{$smarty.server.SERVER_NAME}/shop" class="text-dark"><span class="fa fa-shopping-cart">&nbsp; &nbsp;Shop</span></a> |
            <span class="fa fa-user-md">&nbsp;&nbsp;{if $user_info}<a class="text-dark" href="//{$smarty.server.SERVER_NAME}/profile">My account</a>{else}<a class="text-dark" href="{$domain.auth}/app/{$key}?i=4&redirect={$domain.redirect}">SignUp | Login</a>{/if}</span> |
        </div>
        <h6 class="p-2">Boo store administrator</h6>
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
                <div class="input-group mt-3 mb-3 p-4">
                    <form action="//{$smarty.server.SERVER_NAME}/search/products" method="get">
                        <div class="input-group">
                            <input type="text" class="form-control search-rounded" name="q" value="{if isset($smarty.get.q)} {$smarty.get.q} {/if}" placeholder="Search products"/>
                            <button class="btn btn-danger"><i class="fa fa-search"></i></button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="p-4 small-menu-list"></div>
        </div>
        <!-- Small search bar is put here via js -->
        <div class="search-input-show"></div>
        <!-- small search bar-->
        <!-- End Small screen menu-->
    </div>
    </div>
</nav>
{if $user_info}
    {*For this page to display, the user should be an admin.*}
    {if $user_info.0.role == 1}
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="shadow pb-2">
                    <div class="menu-list sm-hide">
                        <div class="list-group mt-4">
                            <div class="list-group-item dashboard border-0"><a href="//{$smarty.server.SERVER_NAME}/dashboard">Home</a></div>
                            <div class="list-group-item orders border-0"><a href="//{$smarty.server.SERVER_NAME}/dashboard/orders">Orders</a></div>
                            <div class="list-group-item users border-0"><a href="//{$smarty.server.SERVER_NAME}/dashboard/users">Users</a></div>
                            <div class="list-group-item categories border-0"><a href="//{$smarty.server.SERVER_NAME}/dashboard/categories">Categories</a></div>
                            <div class="list-group-item sub-categories border-0"><a href="//{$smarty.server.SERVER_NAME}/dashboard/sub_cats">Sub categories</a></div>
                            <div class="list-group-item metrics border-0"><a href="//{$smarty.server.SERVER_NAME}/dashboard/metrics">Metrics</a></div>
                            <div class="list-group-item currency border-0"><a href="//{$smarty.server.SERVER_NAME}/dashboard/currency">Currency</a></div>
                            <div class="list-group-item products border-0"><a href="//{$smarty.server.SERVER_NAME}/dashboard/products">Products</a></div>
                            <div class="list-group-item suppliers border-0"><a href="//{$smarty.server.SERVER_NAME}/dashboard/suppliers">Suppliers</a></div>
                            <div class="list-group-item product-size border-0"><a href="//{$smarty.server.SERVER_NAME}/dashboard/sizes">Product sizes</a></div>
                            <div class="list-group-item product-color border-0"><a href="//{$smarty.server.SERVER_NAME}/dashboard/colors">Product Colors</a></div>
                            <div class="list-group-item affiliates border-0"><a href="//{$smarty.server.SERVER_NAME}/dashboard/affiliates">affiliates</a></div>
                            <div class="list-group-item applications border-0"><a href="//{$smarty.server.SERVER_NAME}/dashboard/applications">Supplier applications</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                {block name="body"}{/block}
            </div>
        </div>
    </div>
    {else}
        <script>
            window.location = "//" + window.location.host + "/profile"
        </script>
    {/if}
{else}
    <h6 class="p-5 text-center">You are not logged in.</h6>
    <a class="text-dark" href="{$domain.auth}/app/{$key}?i=4&redirect={$domain.redirect}">
        <h4 class="p-5 text-center">Click to login</h4>
    </a>
{/if}
<div class="bottom-pop-up-overlay p-3 alert alert-success text-center font-weight-bolder"></div>
<div class="custom-modal">
    <div class="card custom-modal-content">
        <div class="col-4 col-md-3 float-right">
            <button class="btn btn-dark rounded-0 mt-2 mb-2" onclick="$('.custom-modal').fadeOut('slow')">Close</button>
        </div>
        <div class="card-body modal-content-fill"></div>
    </div>
</div>
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
<script src="//{$smarty.server.SERVER_NAME}/assets/jquery/jquery.3.4.1.js"></script>
<script src="//{$smarty.server.SERVER_NAME}/assets/jquery/popper.min.js"></script>
<script src="//{$smarty.server.SERVER_NAME}/assets/bootstrap/bootstrap.js"></script>
<script src="//{$smarty.server.SERVER_NAME}/assets/wow.min.js"></script>
<script src="//{$smarty.server.SERVER_NAME}/assets/chart-js/dist/Chart.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.10.20/b-1.6.1/b-html5-1.6.1/b-print-1.6.1/fh-3.1.6/kt-2.5.1/r-2.2.3/sc-2.0.1/sp-1.0.1/datatables.min.js"></script>
<script src="//{$smarty.server.SERVER_NAME}/assets/scripts.js"></script>
{block name="scripts"}{/block}
<script>
    {literal}
    $('img').each(function(){ $(this).attr('src', $(this).attr('lsrc')); });
    {/literal}
    // new WOW().init();
    $(document).ready(function() {
        let currentPage = {if isset($current_page)}{$current_page|json_encode}{else}'xx'{/if};
        $("."+currentPage).addClass("active");
        $('.table').DataTable({
            dom: 'Bfrtip',
            responsive: true,
            fixedHeader: false,
            buttons: [
                'copyHtml5',
                'excelHtml5',
                'csvHtml5',
                'pdfHtml5'
            ]
        });
        $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
            $($.fn.dataTable.tables(true)).DataTable()
                .columns.adjust()
                .responsive.recalc();
        });
    } );
</script>
</body>
</html>