{extends file="product_index.tpl"}
{block name="body2"}
    <div class="container">
        <div class="row">
            {include file="products/left-bar.tpl"}
            <div class="col-md-8 p-4">
                <div class="row">
                    {foreach $category_picks item=list}
                        {if empty($list.products)} {continue} {/if}
                        <div class="col-md-12 border mt-2 mb-2 border-light shadow-sm p-2">
                            <h5>Shop from <a href="//{$smarty.server.SERVER_NAME}/{$list.url}">{$list.category}</a></h5>
                            <div class="row">
                                {foreach $list.products item=product}
                                    <div class="col-6 col-md-4">
                                        <div class="card border-0">
                                            <div class="card-header bg-transparent">
                                                <small class="text-truncate sm-hide">{$product.product_category} <i class="fa fa-arrow-circle-right"></i> {$product.product_sub_category} </small>
                                                <a href="//{$smarty.server.SERVER_NAME}/product/{$product.url}">
                                                    <h6 class="text-truncate">
                                                        {$product.name}
                                                    </h6>
                                                </a>
                                            </div>
                                            <div class="card-body">
                                                <div class="small-container-2">
                                                    <a href="//{$smarty.server.SERVER_NAME}/product/{$product.url}">
                                                        <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$product.feature_photo}" class="w-100"/>
                                                    </a>
                                                </div>
                                                <h5 class="mt-2 mb-2 price-text">{$product.currency_name} {$product.price_1|number_format}</h5>
                                                {if $product.price_2 > 0}
                                                    <h6 class="mb-2 text-muted price-text font-weight-light" style="text-decoration: line-through">{$product.currency_name} {$product.price_2|number_format:1}</h6>
                                                {/if}
                                            </div>
                                            <div class="card-footer bg-transparent">
                                                <div class="row">
                                                    <div class="col-6 col-md-6 text-center bg-transparent border-0 cursor" onclick="addToWatchlist({$product.id})" title="Add to watchlist">
                                                        <i class="fa fa-heart watchlist-item-{$product.id}"></i><br/><small class="sm-hide">Watchlist</small>
                                                    </div>
                                                    <div class="col-6 col-md-6 text-center bg-transparent border-0 cursor" onclick="addToCart({$product.id})" title="Add to cart">
                                                        <span class="fa fa-shopping-cart badge-danger p-1 rounded-circle cart-item-{$product.id}" title="add to cart"></span>
                                                        <br/><small class="sm-hide">Shop it</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                {/foreach}
                            </div>
                        </div>
                        {$category_products = $list.products}
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
{/block}