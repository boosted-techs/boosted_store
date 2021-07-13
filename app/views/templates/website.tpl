{extends file = "index.tpl"}
{block name="meta"}
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/slider/css/jquery.carousel-line-arrow.css"/>
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/slider/css/style.css"/>
    <style>
        {literal}
        .wrapper {
            max-height: 425px !important;
            overflow: auto}
        {/literal}
    </style>
{/block}
{block name="body"}
    {include file="small-bar.tpl"}
    <div class="home-slider">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="menu-list sm-hide">
                        <div class="list-group left-bar-menu-list shadow">
                            <div class="list-group-item bg-light text-danger font-weight-bolder shadow-lg">Shop from category</div>
                            {foreach $categories item=list}
                                <div class="list-group-item"><a class="text-danger" href="//{$smarty.server.SERVER_NAME}/{$list.url}"><span class="fa fa-angle-right float-right"></span> {$list.category}</a></div>
                            {/foreach}
                        </div>
                        <div class="list-group-item left-bar-menu-list bg-danger text-white">
                            <div class="list-group-item p-0 bg-transparent">
                                <a data-toggle="collapse" href="#suppliers" class="text-white">
                                    Shop from suppliers
                                    <span class="float-right"><i class="fa fa-angle-down"></i></span>
                                </a>
                            </div>
                        </div>
                        <div class="list-group left-bar-menu-list collapse" id="suppliers">
                            {foreach $suppliers item=list}
                                <div class="list-group-item"><a class="text-danger" href="//{$smarty.server.SERVER_NAME}/supplier/{$list.url}"><span class="fa fa-angle-right float-right"></span> {$list.supplier}</a></div>
                            {/foreach}
                        </div>
                    </div>
                </div>
                <div class="col-md-8 text-center p-4">
                    <div class="wrapper shadow img-thumbnail">
                        <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" class="slider_menu"/>
                        <div class="your-slider" style="display:none;">
                            <div class="your-slider-item">
                                <img src="//{$smarty.server.SERVER_NAME}/assets/images/others/sell-with-boo.png" class="w-100" />
                            </div>
                            <div class="your-slider-item">
                                <img src="//{$smarty.server.SERVER_NAME}/assets/images/others/boo-cash.png" alt="Img" class="w-100" />
                            </div>
                            <div class="your-slider-item">
                                <img src="//{$smarty.server.SERVER_NAME}/slider_images/peach.jpg" class="w-100" alt="" >
                            </div>
                            <div class="your-slider-item">
                                <img src="//{$smarty.server.SERVER_NAME}/slider_images/peach2.jpg" class="w-100" alt="" >
                            </div>
                        </div>
                    </div>
                    {*<h5>Welcome to Boo Store</h5>*}
                    {*<h1 class="font-weight-bolder">Where every coin</h1>*}
                    {*<h5>shops something</h5>*}
                    {*<h5>Enjoy the best of shopping experiences with the best convenient revised prices that won't hurt your pockets</h5>*}
                    {*<a href="//{$smarty.server.SERVER_NAME}/shop">*}
                        {*<button class="btn btn-danger">SHOP NOW</button>*}
                    {*</a>*}
                </div>
            </div>
        </div>
    </div>
    <div class="horizontal-ad mt-5">
        <div class="container">
            <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/media/banners/add-banner.jpg" alt="Banner" class="w-100" />
        </div>
    </div>
    <div class="container">
        <div class="row pt-5 pb-5">
            <div class="col-md-4 border border-danger rounded p-3">
                {foreach $special_offer item=list name=special_offer}
                    {if $smarty.foreach.special_offer.index == 1}
                        {break}
                    {/if}
                    <div class="float-right badge bg-danger p-2 text-white text-center">
                        <span>Save</span>
                        <h4>{$list.currency_name} {($list.price_2 - $list.price_1)|number_format}</h4>
                    </div>
                    <h4>Special Offer</h4>
                    <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                        <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.feature_photo}" class="w-100" />
                    </a>
                    <div class="special-order-home text-center mt-5">
                        <h4 class="text-danger font-weight">{$list.name}</h4>
                        <h3 class="mt-3 font-weight-bolder">{$list.currency_name} {$list.price_1|number_format}</h3>
                        <h5 class="mt-4">Hurry up before offer ends</h5>
                    </div>
                {/foreach}
            </div>
            <div class="col-md-8">
                <!-- Nav tabs -->
                {*<ul class="nav nav-tabs" role="tablist">*}
                    {*<li class="nav-item">*}
                        {*<a class="nav-link active" data-toggle="tab" href="#home">Featured</a>*}
                    {*</li>*}
                    {*<li class="nav-item">*}
                        {*<a class="nav-link" data-toggle="tab" href="#menu1">Top sale</a>*}
                    {*</li>*}
                    {*<li class="nav-item">*}
                        {*<a class="nav-link" data-toggle="tab" href="#menu2">Top Rated</a>*}
                    {*</li>*}
                {*</ul>*}
                <div class="horizontal-product-display mt-lg-3">
                    <ul class="list-group list-group-horizontal nav-tabs border border-left-0 border-right-0 border-top-0 border-bottom border-danger  slideInLeft" data--duration="2s" data--delay=".3s" role="tablist">
                        <li class="nav-item list-group-item border-0">
                            <a class="nav-link active no-wrap" data-toggle="tab" href="#home">Featured</a>
                        </li>
                        <li class="nav-item list-group-item border-0">
                            <a class="nav-link no-wrap" data-toggle="tab" href="#menu1">Top sale</a>
                        </li>
                        <li class="nav-item list-group-item border-0">
                            <a class="nav-link no-wrap" data-toggle="tab" href="#menu2">Top Rated</a>
                        </li>

                    </ul>
                </div>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div id="home" class="container tab-pane active">
                        <h3>Featured</h3>
                        <div class="row">
                            {foreach $featured_products item=list}
                                <div class="col-6 col-md-4">
                                    <div class="card border-0">
                                        <div class="card-header bg-transparent">
                                            <small class="text-truncate sm-hide">{$list.product_category} <i class="fa fa-arrow-circle-right"></i> {$list.product_sub_category} </small>
                                            <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                                <h6 class="price-text">{$list.name}</h6>
                                            </a>
                                        </div>
                                        <div class="card-body">
                                            <div class="small-container-2">
                                                <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                                    <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.feature_photo}" class="w-100" />
                                                </a>
                                            </div>
                                            <h5 class="mt-2 price-text">{$list.currency_name} {$list.price_1|number_format}</h5>
                                            {if $list.price_2 > 0}
                                                <h6 class="mb-2 text-muted price-text font-weight-light" style="text-decoration: line-through">{$list.currency_name} {$list.price_2|number_format:1}</h6>
                                            {/if}
                                        </div>
                                        <div class="card-footer bg-transparent">
                                            <div class="row">
                                                <div class="col-6 col-md-6 text-center bg-transparent border-0 cursor" onclick="addToWatchlist({$list.id})" title="Add to watchlist">
                                                    <i class="fa fa-heart watchlist-item-{$list.id}"></i><br/><small class="sm-hide">Watchlist</small>
                                                </div>
                                                <div class="col-6 col-md-6 text-center bg-transparent border-0 cursor" onclick="addToCart({$list.id})" title="Add to cart">
                                                    <span class="fa fa-shopping-cart badge-danger p-1 rounded-circle cart-item-{$list.id}" title="add to cart"></span>
                                                    <br/><small class="sm-hide">Shop it</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            {/foreach}
                        </div>
                    </div>
                    <div id="menu1" class="container tab-pane fade"><br>
                        <h3>Top sale</h3>
                        <div class="row">
                            {foreach $most_sold_products item=list}
                                <div class="col-6 col-md-4">
                                    <div class="card border-0">
                                        <div class="card-header bg-transparent">
                                            <small class="text-truncate sm-hide">{$list.product_category} <i class="fa fa-arrow-circle-right"></i> {$list.product_sub_category} </small>
                                            <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                                <h6 class="price-text">{$list.name}</h6>
                                            </a>
                                        </div>
                                        <div class="card-body">
                                            <div class="small-container-2">
                                                <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                                    <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.feature_photo}" class="w-100" />
                                                </a>
                                            </div>
                                            <h5 class="mt-2 mb-2 price-text">{$list.currency_name} {$list.price_1|number_format}</h5>
                                            {if $list.price_2 > 0}
                                                <h6 class="mb-2 text-muted price-text font-weight-light" style="text-decoration: line-through">{$list.currency_name} {$list.price_2|number_format:1}</h6>
                                            {/if}
                                        </div>
                                        <div class="card-footer bg-transparent">
                                            <div class="row">
                                                <div class="col-6 col-md-6 text-center bg-transparent border-0 cursor" onclick="addToWatchlist({$list.id})" title="Add to watchlist">
                                                    <i class="fa fa-heart watchlist-item-{$list.id}"></i><br/><small class="sm-hide">Watchlist</small>
                                                </div>
                                                <div class="col-6 col-md-6 text-center bg-transparent border-0 cursor" onclick="addToCart({$list.id})" title="Add to cart">
                                                    <span class="fa fa-shopping-cart badge-danger p-1 rounded-circle cart-item-{$list.id}" title="add to cart"></span>
                                                    <br/><small class="sm-hide">Shop it</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            {/foreach}
                        </div>
                    </div>
                    <div id="menu2" class="container tab-pane fade"><br>
                        <h3>Top rated products</h3>
                        <div class="row">
                            {foreach $top_rated item=list}
                                <div class="col-6 col-md-4">
                                    <div class="card border-0">
                                        <div class="card-header bg-transparent">
                                            <small class="text-truncate sm-hide">{$list.product_category} <i class="fa fa-arrow-circle-right"></i> {$list.product_sub_category} </small>
                                            <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                                <h6 class="price-text">{$list.name}</h6>
                                            </a>
                                        </div>
                                        <div class="card-body">
                                            <div class="small-container-2">
                                                <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                                    <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.feature_photo}" class="w-100" />
                                                </a>
                                            </div>
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
                                        <div class="card-footer price-text">
                                            <div class="row">
                                                <div class="col-6 col-md-6 text-center bg-transparent border-0 cursor" onclick="addToWatchlist({$list.id})" title="Add to watchlist">
                                                    <i class="fa fa-heart watchlist-item-{$list.id}"></i><br/><small class="sm-hide">Watchlist</small>
                                                </div>
                                                <div class="col-6 col-md-6 text-center bg-transparent border-0 cursor" onclick="addToCart({$list.id})" title="Add to cart">
                                                    <span class="fa fa-shopping-cart badge-danger p-1 rounded-circle cart-item-{$list.id}" title="add to cart"></span>
                                                    <br/><small class="sm-hide">Shop it</small>
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
        </div>
    </div>
    <div class="bg-light col-md-12">
        <div class="container pt-2">
            <div class="horizontal-product-display">
                <div class="list-group list-group-horizontal border border-left-0 border-right-0 border-top-0 border-bottom border-danger  slideInLeft" data--duration="2s" data--delay=".3s">
                    <li class="list-group-item border-0 bg-transparent">Best Deals</li>
                    {foreach $categories item=list name=category_list}
                        {if $smarty.foreach.category_list.index == 4}
                            {break}
                        {/if}
                        <li class="list-group-item border-0 bg-transparent"><a class="text-dark" href="//{$smarty.server.SERVER_NAME}/{$list.url}">{$list.category}</a></>
                    {/foreach}
                </div>
            </div>
            <div class="row pb-3">
                <div class="col-md-3 mt-3">
                    {foreach $best_deal_products item=list key=i name=foo}
                        {if $smarty.foreach.foo.index == 3}
                            {break}
                        {/if}
                        <div class="col-md-12 mt-2 mb-2 slideInUp" data--duration="2s" data--delay=".3s">
                            <div class="card border-0">
                                <div class="card-header bg-transparent">
                                    <small class="text-truncate sm-hide">{$list.product_category} <i class="fa fa-arrow-circle-right"></i> {$list.product_sub_category} </small>
                                    <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                        <h6 class="price-text">{$list.name}</h6>
                                    </a>
                                </div>
                                <div class="card-body">
                                    <div class="small-container-2">
                                        <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                            <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.feature_photo}" class="w-100" />
                                        </a>
                                    </div>
                                    <h5 class="mt-2 mb-2 price-text">{$list.currency_name} {$list.price_1|number_format}</h5>
                                    {if $list.price_2 > 0}
                                        <h6 class="mb-2 text-muted price-text font-weight-light" style="text-decoration: line-through">{$list.currency_name} {$list.price_2|number_format:1}</h6>
                                    {/if}
                                </div>
                                <div class="card-footer bg-transparent">
                                    <div class="row">
                                        <div class="col-6 col-md-6 text-center bg-transparent border-0 cursor" onclick="addToWatchlist({$list.id})" title="Add to watchlist">
                                            <i class="fa fa-heart watchlist-item-{$list.id}"></i><br/><small class="sm-hide">Watchlist</small>
                                        </div>
                                        <div class="col-6 col-md-6 text-center bg-transparent border-0 cursor" onclick="addToCart({$list.id})" title="Add to cart">
                                            <span class="fa fa-shopping-cart badge-danger p-1 rounded-circle cart-item-{$list.id}" title="add to cart"></span>
                                            <br/><small class="sm-hide">Shop it</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    {/foreach}
                </div>
                {foreach $best_deal_products|@array_slice:3:1 item=list}
                    <div class="col-md-6 mt-3  slideInUp" data--duration="2s" data--delay=".3s">
                        <div class="card border-0 bg-transparent">
                            <div class="card-header bg-transparent">
                                <small class="text-truncate sm-hide">{$list.product_category} <i class="fa fa-arrow-circle-right"></i> {$list.product_sub_category} </small>
                                <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                    <h6 class="price-text">{$list.name}</h6>
                                </a>
                            </div>
                            <div class="card-body">
                                <div class="small-container-3">
                                    <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                        <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.feature_photo}" class="w-100" />
                                    </a>
                                </div>
                                <h5 class="mt-2 mb-2 price-text">{$list.currency_name} {$list.price_1|number_format}</h5>
                                {if $list.price_2 > 0}
                                    <h6 class="mb-2 text-muted price-text font-weight-light" style="text-decoration: line-through">{$list.currency_name} {$list.price_2|number_format:1}</h6>
                                {/if}
                            </div>
                            <div class="card-footer bg-transparent">
                                <div class="row">
                                    <div class="col-6 col-md-6 text-center bg-transparent border-0 cursor" onclick="addToWatchlist({$list.id})" title="Add to watchlist">
                                        <i class="fa fa-heart watchlist-item-{$list.id}"></i><br/><small class="sm-hide">Watchlist</small>
                                    </div>
                                    <div class="col-6 col-md-6 text-center bg-transparent border-0 cursor" onclick="addToCart({$list.id})" title="Add to cart">
                                        <span class="fa fa-shopping-cart badge-danger p-1 rounded-circle cart-item-{$list.id}" title="add to cart"></span>
                                        <br/><small class="sm-hide">Shop it</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                {/foreach}
                <div class="col-md-3 mt-3">
                    {foreach $best_deal_products|@array_slice:4:3 item=list}
                        <div class="col-md-12 mt-2 mb-2 slideInUp" data--duration="2s" data--delay=".3s">
                            <div class="card border-0">
                                <div class="card-header bg-transparent">
                                    <small class="text-truncate sm-hide">{$list.product_category} <i class="fa fa-arrow-circle-right"></i> {$list.product_sub_category} </small>
                                    <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                        <h6 class="price-text">{$list.name}</h6>
                                    </a>
                                </div>
                                <div class="card-body">
                                    <div class="small-container-2">
                                        <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                            <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.feature_photo}" class="w-100" />
                                        </a>
                                    </div>
                                    <h5 class="mt-2 mb-2 price-text">{$list.currency_name} {$list.price_1|number_format}</h5>
                                    {if $list.price_2 > 0}
                                        <h6 class="mb-2 text-muted price-text font-weight-light" style="text-decoration: line-through">{$list.currency_name} {$list.price_2|number_format:1}</h6>
                                    {/if}
                                </div>
                                <div class="card-footer bg-transparent">
                                    <div class="row">
                                        <div class="col-6 col-md-6 text-center bg-transparent border-0 cursor" onclick="addToWatchlist({$list.id})" title="Add to watchlist">
                                            <i class="fa fa-heart watchlist-item-{$list.id}"></i><br/><small class="sm-hide">Watchlist</small>
                                        </div>
                                        <div class="col-6 col-md-6 text-center bg-transparent border-0 cursor" onclick="addToCart({$list.id})" title="Add to cart">
                                            <span class="fa fa-shopping-cart badge-danger p-1 rounded-circle cart-item-{$list.id}" title="add to cart"></span>
                                            <br/><small class="sm-hide">Shop it</small>
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
    <div class="horizontal-ad mt-3 mb-3">
        <div class="container  slideInLeft" data--duration="2s" data--delay=".3s">
            <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/media/banners/add-banner.jpg" alt="Banner" class="w-100" />
        </div>
    </div>
    <div class="bg-light">
        <div class="container list-group list-group-horizontal border border-left-0 border-right-0 border-top-0 border-bottom border-danger">
            <li class="list-group-item border-0 bg-transparent">Recently Added</li>
        </div>
        <div class="container pt-2 horizontal-product-display">
            <div class="list-group list-group-horizontal mt-3 mb-3">
                {foreach $recently_added_products item=list}
                    <div class="list-group-item col-md-3  slideInUp" data--duration="2s" data--delay=".3s">
                        <div class="card border-0">
                            <div class="card-header bg-transparent">
                                <small class="text-truncate sm-hide">{$list.product_category} <i class="fa fa-arrow-circle-right"></i> {$list.product_sub_category} </small>
                                <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                    <h6 class="price-text">{$list.name}</h6>
                                </a>
                            </div>
                            <div class="card-body">
                                <div class="small-container-2">
                                    <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                        <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.feature_photo}" class="w-100" />
                                    </a>
                                </div>
                                <h5 class="mt-2 mb-2 price-text">{$list.currency_name} {$list.price_1|number_format}</h5>
                                {if $list.price_2 > 0}
                                    <h6 class="mb-2 text-muted price-text font-weight-light" style="text-decoration: line-through">{$list.currency_name} {$list.price_2|number_format:1}</h6>
                                {/if}
                            </div>
                            <div class="card-footer bg-transparent">
                                <div class="row">
                                    <div class="col-6 col-md-6 text-center bg-transparent border-0 cursor" onclick="addToWatchlist({$list.id})" title="Add to watchlist">
                                        <i class="fa fa-heart watchlist-item-{$list.id}"></i><br/><small class="sm-hide">Watchlist</small>
                                    </div>
                                    <div class="col-6 col-md-6 text-center bg-transparent border-0 cursor" onclick="addToCart({$list.id})" title="Add to cart">
                                        <span class="fa fa-shopping-cart badge-danger p-1 rounded-circle cart-item-{$list.id}" title="add to cart"></span>
                                        <br/><small class="sm-hide">Shop it</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                {/foreach}
            </div>
        </div>
    </div>
    {foreach $get_category_lists item=sub_category_list name=sub_category_list name=foo_bar}
        {if empty($sub_category_list.products)} {continue} {/if}
        <div class="bg-light {if $smarty.foreach.foo_bar.index % 2 == 0}bg-white shadow{/if} mt-2 mb-2">
            <div class="container list-group list-group-horizontal border border-left-0 border-right-0 border-top-0 border-bottom border-danger">
                <li class="list-group-item border-0 bg-transparent"><a href="//{$smarty.server.SERVER_NAME}/sub-category/{$sub_category_list.url}"><span class="text-dark">Shop from</span> {$sub_category_list.category}</a></li>
            </div>
            <div class="container pt-2 horizontal-product-display">
                <div class="list-group list-group-horizontal mt-3 mb-3">
                    {foreach $sub_category_list.products item=list}
                        <div class="list-group-item col-md-3  slideInUp" data--duration="2s" data--delay=".3s">
                            <div class="card border-0">
                                <div class="card-header bg-transparent">
                                    <small class="text-truncate sm-hide">{$list.product_category} <i class="fa fa-arrow-circle-right"></i> {$list.product_sub_category} </small>
                                    <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                        <h6 class="price-text">{$list.name}</h6>
                                    </a>
                                </div>
                                <div class="card-body">
                                    <div class="small-container-2">
                                        <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                            <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.feature_photo}" class="w-100" />
                                        </a>
                                    </div>
                                    <h5 class="mt-2 mb-2 price-text">{$list.currency_name} {$list.price_1|number_format}</h5>
                                    {if $list.price_2 > 0}
                                        <h6 class="mb-2 text-muted price-text font-weight-light" style="text-decoration: line-through">{$list.currency_name} {$list.price_2|number_format:1}</h6>
                                    {/if}
                                </div>
                                <div class="card-footer bg-transparent">
                                    <div class="row">
                                        <div class="col-6 col-md-6 text-center bg-transparent border-0 cursor" onclick="addToWatchlist({$list.id})" title="Add to watchlist">
                                            <i class="fa fa-heart watchlist-item-{$list.id}"></i><br/><small class="sm-hide">Watchlist</small>
                                        </div>
                                        <div class="col-6 col-md-6 text-center bg-transparent border-0 cursor" onclick="addToCart({$list.id})" title="Add to cart">
                                            <span class="fa fa-shopping-cart badge-danger p-1 rounded-circle cart-item-{$list.id}" title="add to cart"></span>
                                            <br/><small class="sm-hide">Shop it</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
    {/foreach}
{/block}
{block name="scripts"}
    <script src="//{$smarty.server.SERVER_NAME}/assets/slider/js/jquery.carousel-line-arrow.js"></script>
    <script src="//{$smarty.server.SERVER_NAME}/assets/slider/js/main.js"></script>
{/block}