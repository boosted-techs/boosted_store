{extends file="products/index.tpl"}
{block name="body2"}
    <div class="col-md-8 mx-auto mt-4 mb-4">
        <div class="card">
            <div class="card-header">
                <h4>Search results for <b>{$smarty.get.q}</b></h4>
            </div>
            <div class="card-body">
                <div class="p-4">
                    {if empty($search_results)}
                        <div class="col-md-12 text-center">
                            <h4>No results found for <b>{$smarty.get.q}</b></h4>
                            <p>Be the first to know when {$smarty.get.q} is available. <a href="#subscription">Subscribe</a></p>
                            <a href="//{$smarty.server.SERVER_NAME}/shop">
                                <button class="btn btn-danger rounded-0">Continue shopping</button>
                            </a>
                        </div>
                    {else}
                        <div class="row">
                            {foreach $search_results item=product}
                                <div class="col-md-4">
                                    <div class="card border-0">
                                        <div class="card-header bg-transparent">
                                            <span class="sm-hide">
                                                <small class="price-text">{$product.product_category}</small>
                                            </span>
                                            <a href="//{$smarty.server.SERVER_NAME}/product/{$product.url}">
                                                <h6 class="price-text">
                                                    {$product.name}
                                                </h6>
                                            </a>
                                            <br/>
                                            {if $user_info}
                                                {*For this page to display, the user should be an admin.*}
                                                {if $user_info.0.role == 1}
                                                    <a href="//{$smarty.server.SERVER_NAME}/dashboard/{$product.url}">
                                                        <button class="btn btn-danger">View in admin</button>
                                                    </a>
                                                {/if}
                                            {/if}
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
                    {/if}
                </div>
            </div>
            <div class="card-footer">
                <a href="//{$smarty.server.SERVER_NAME}/search/products?page={if isset($smarty.get.page) and $smarty.get.page > 1}{$smarty.get.page - 1}{else}2{/if}&q={$smarty.get.q}">
                    <button class="btn btn-dark">Back</button>
                </a>
                <a href="//{$smarty.server.SERVER_NAME}/search/products?page={if isset($smarty.get.page)}{$smarty.get.page + 1}{else}2{/if}&q={$smarty.get.q}">
                    <button class="btn btn-dark">Next</button>
                </a>
            </div>
        </div>
    </div>
{/block}