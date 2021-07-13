{extends file="index.tpl"}
{block name="meta"}
    {if ! isset($supplier)}
        <title>{$page} -  Boo Store</title>
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
            <DataObject type="action">
                <Attribute name="label" value="Shop now"/>
                <Attribute name="url" value="https://booo.store"/>
                <Attribute name="class" value="download"/>
            </DataObject>
            <DataObject type="publication">
                <Attribute name="author" value="Boosted Technologies"/>
                <Attribute name="date" value="1ST NOV 2020"/>
                <Attribute name="category" value="E-commerce"/>
            </DataObject>
        </PageMap>
    {else}
        {block name="meta_2"}{/block}
    {/if}
{/block}
{block name="body"}
<div class="container" >
    <div class="row">
        <div class="col-md-4">
            <div class="list-group list-group-horizontal">
                <div class="list-group-item border-0 bg-transparent"><a href="//{$smarty.server.SERVER_NAME}">Home</a> <i class="fa fa-angle-right"></i></div>
                <div class="list-group-item border-0 bg-transparent">{$page}</div>
            </div>
        </div>
        <div class="col-md-6 small-bar-2">
            <ul class="list-group list-group-horizontal">
                <ul class="list-group small-bar-list-group list-group-horizontal">
                  {include file="small-bar-menu.tpl"}
                </ul>
            </ul>
        </div>
        <div class="col-md-2 text-center sm-hide">
            <h6>Convenient, simple and reliable</h6>
        </div>
    </div>
</div>
{block name="body2"}{/block}
    <div class="container">
        <div class="row ">
            <div class="col-md-4">
                <div class="small-container-3">
                    <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/media/banners/square-banner.jpg" class="w-100"/>
                </div>
            </div>
            <div class="col-md-8">
                <div class="card border-0">
                    <div class="card-header bg-transparent">
                        <h4 class="font-weight-light">Top Selling in this category</h4>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            {if empty($category_most_sold_products)}
                                <div class="col-md-12 alert alert-warning">Nothing to show you now. But later, we shall have it</div>
                            {else}
                                {foreach $category_most_sold_products item=list}
                                    <div class="col-md-6">
                                        <div class="row">
                                            <div class="col-5 col-md-4 mt-2 mb-2">
                                                <div class="small-container">
                                                    <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                                        <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.feature_photo}" class="w-100"/>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="col-7 col-md-8">
                                                <span class="sm-hide">
                                                    <small class="text-truncate text-muted">{$list.product_category} <i class="fa fa-arrow-circle-right"></i> {$list.product_sub_category} </small>
                                                </span>
                                                <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                                    <h6 class="text-truncate">{$list.name}</h6>
                                                </a>
                                                <h5 class="ext-truncate text-danger price-text">{$list.currency_name} {$list.price_1|number_format}</h5>
                                                {if $list.price_2 > 0}
                                                    <h6 class="mb-2 text-muted price-text font-weight-light" style="text-decoration: line-through">{$list.currency_name} {$list.price_2|number_format:1}</h6>
                                                {/if}
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
                            {/if}
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row mt-4 mb-4">
            <div class="col-md-4">
                <div class="card border-0">
                    <div class="card-header bg-transparent">
                        <h4 class="font-weight-light">Latest Products</h4>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            {foreach $recently_added_products item=list}
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-5 col-md-4 mt-2 mb-2">
                                            <div class="small-container">
                                                <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                                    <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.feature_photo}" class="w-100"/>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-7 col-md-8">
                                            <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                                <h6 class="text-truncate">{$list.name}</h6>
                                            </a>
                                            <div class="rates">
                                                {for $counter=1 to 5}
                                                    <span  class="{if $counter <= $list.total_rates}text-danger{/if}">
                                                        <i class="fa fa-star"></i>
                                                    </span>
                                                {/for}
                                            </div>
                                            <h6 class="text-dark font-weight-bolder price-text">{$list.currency_name} {$list.price_1|number_format}</h6>
                                            {if $list.price_2 > 0}
                                                <h6 class="mb-2 text-muted price-text font-weight-light" style="text-decoration: line-through">{$list.currency_name} {$list.price_2|number_format:1}</h6>
                                            {/if}
                                        </div>
                                    </div>
                                </div>
                            {/foreach}
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="card border-0">
                    <div class="card-header bg-transparent">
                        <h4 class="font-weight-light">Top rated in this category</h4>
                    </div>
                    <div class="card-body">
                        {if empty($category_top_rated)}
                            <div class="alert alert-warning text-center">No data to show now</div>
                        {else}
                            <div class="row">
                                {foreach $category_top_rated|@array_slice:0:6 item=list}
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-5 col-md-4 mt-2 mb-2">
                                                <div class="small-container-2">
                                                    <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                                        <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.feature_photo}" class="w-100"/>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="col-7 col-md-8">
                                                <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                                    <h6 class="text-truncate">{$list.name}</h6>
                                                </a>
                                                <div class="rates">
                                                    {for $counter=1 to 5}
                                                        <span  class="{if $counter <= $list.total_rates}text-danger{/if}">
                                                            <i class="fa fa-star"></i>
                                                        </span>
                                                    {/for}
                                                </div>
                                                <h6 class="text-dark font-weight-bolder price-text">{$list.currency_name} {$list.price_1|number_format}</h6>
                                                {if $list.price_2 > 0}
                                                    <h6 class="mb-2 text-muted price-text font-weight-light" style="text-decoration: line-through">{$list.currency_name} {$list.price_2|number_format:1}</h6>
                                                {/if}
                                            </div>
                                        </div>
                                    </div>
                                {/foreach}
                            </div>
                        {/if}
                    </div>
                </div>
            </div>
        </div>
    </div>
{/block}
