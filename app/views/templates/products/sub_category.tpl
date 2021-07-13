{extends file="product_index.tpl"}
{block name="body2"}
    <div class="container">
        <div class="row">
            {include file="products/left-bar.tpl"}
            <div class="col-md-8 text-center p-4">
                <div class="row">
                    {if ! empty($category_products)}
                        {foreach $category_products item=list}
                            <div class="col-6 col-md-6 border border-left-0 border-top-0 border-bottom-0 mt-4 mb-4">
                                <div class="small-container-2">
                                    <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                        <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.feature_photo}" class="w-100 img-responsive"/>
                                    </a>
                                </div>
                                <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                    <h6 class="pt-2 3 pb-3 text-center price-text">{$list.name}</h6>

                                </a>
                                <h5 class="price-text">{$list.currency_name} {$list.price_1|number_format}</h5>
                            </div>
                        {/foreach}
                        <div class="col-md-12">
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="//{$smarty.server.SERVER_NAME}/{$page|strtolower}?page={if isset($smarty.get.page) and $smarty.get.page > 1}{$smarty.get.page - 1}{else}2{/if}">Previous</a></li>
                                <li class="page-item"><a class="page-link" href="//{$smarty.server.SERVER_NAME}/{$page|strtolower}?page={if isset($smarty.get.page)}{$smarty.get.page + 1}{else}2{/if}">Next</a></li>
                            </ul>
                        </div>
                    {else}
                        <div class="col-md-12 p-3 text-center alert alert-warning">
                            <p class="">No content to display right now.</p>
                        </div>
                    {/if}
                </div>
            </div>
        </div>
    </div>
{/block}