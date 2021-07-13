{extends file="product_index.tpl"}
{block name="meta"}
    {if ! empty($product.product_info) }
        <title>{$product.product_info.name} @{$product.product_info.currency_name}-{$product.product_info.price_1}</title>
        <meta name="keywords" content="{$product.product_info.name}, {$product.product_info.keywords|strip_tags}, boo, boo store, booo store" />
        <meta name="description" content="{$product.product_info.summary|strip_tags}, buy from boo store"/>
        <meta property="og:title" content="{$product.product_info.name} @{$product.product_info.currency_name}-{$product.product_info.price_1}">
        <meta property="og:site_name" content="{$product.product_info.name} @{$product.product_info.currency_name}-{$product.product_info.price_1}">
        <meta property="og:description" content="{$product.product_info.summary|strip_tags}">
        <meta name="og:type" content="website" />
        <meta property="og:image" content="https://{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$product.product_info.feature_photo}">
        {foreach $product.thumbnails item=list}
            {if $list.status == 0}
                {continue}
            {/if}
            <meta property="og:image" content="https://{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.photo}">
        {/foreach}
        <meta property="og:type" content="website">
        <PageMap>
            <DataObject type="thumbnail">
                <Attribute name="src" value="https://{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$product.product_info.feature_photo}"/>
                <Attribute name="width" value="100"/>
            </DataObject>
        </PageMap>
    {/if}
    <link rel="stylesheet" href="//{$smarty.server.SERVER_NAME}/assets/zoom/css/image-zoom.css" />
{/block}
{block name="body2"}
    <div class="container">
        <div class="row">
            {include file="products/left-bar.tpl"}
            <div class="col-md-8 p-4">
                {if ! empty($product.product_info)}
                    {$product_info = $product.product_info}
                    {$product_thumbnails = $product.thumbnails}
                    <div class="row">
                        <div class="col-md-5  mt-4 mb-4">
                            <div class="mb-2">
                                <img src="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$product_info.feature_photo}" id="imageZoomExtra" class="w-100"/>
                            </div>
                            {foreach $product_thumbnails item=list}
                                {if $list.status == 0}
                                    {continue}
                                {/if}
                                <a href="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.photo}">
                                    <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif"  lsrc="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.photo}" style="width: 80px;" class="img-thumbnail ml-2 mr-2 mt-2 mb-2"/>
                                </a>
                            {/foreach}
                        </div>
                        <div class="col-md-7">
                            <small class="text-muted"><a href="//{$smarty.server.SERVER_NAME}/supplier/{$product_info.supplier_url}">{$product_info.supplier_name}</a></small>
                            <h3 class="font-weight-bolder">{$product_info.name}</h3>
                            <small class="text-info">{if $product_info.in_stock == 1}Available{else}Out of stock{/if}</small>
                            <div class="card">
                                <div class="card-header">
                                    <a data-toggle="collapse" href="#product-features" class="text-dark">
                                        Features
                                        <span class="float-right"><i class="fa fa-angle-down"></i></span>
                                    </a>
                                </div>
                                <div class="card-body collapse" id="product-features">
                                    <div class="text-muted">
                                        {$product_info.description}
                                    </div>
                                </div>
                            </div>
                            <h2 class="mt-2 mb-2">
                                {$product_info.currency_name} {$product_info.price_1|number_format}
                            </h2>
                            {if $product_info.price_2 > 0}
                                <h6 class="mb-2 text-muted price-text font-weight-light" style="text-decoration: line-through">{$product_info.currency_name} {$product_info.price_2|number_format:1}</h6>
                            {/if}
                            {if $product_info.in_stock == 1}
                                <div class="row">
                                    <div class="col-md-12 p-4 bg-light">
                                        {if ! empty($product_attributes.colors)}
                                            <div>
                                                <h6 class="font-weight-bolder">Available in color</h6>
                                                {foreach $product_attributes.colors item=color name=foo}
                                                    {*<input type="radio" {if $smarty.foreach.foo.index == 0} checked {/if} name="color" value="{$color.id}" /> *}
                                                    {$color.color}
                                                    <br/>
                                                {/foreach}
                                            </div>
                                        {/if}
                                        {if ! empty($product_attributes.sizes)}
                                            <div>
                                                <h6 class="font-weight-bolder">Available in size</h6>
                                                {foreach $product_attributes.sizes item=size name=foobar}
                                                    {*<input type="radio" name="size" {if $smarty.foreach.foobar.index == 0} checked {/if} value="{$size.id}" /> *}
                                                    {$size.size} <br/>
                                                {/foreach}
                                            </div>
                                        {/if}
                                    </div>
                                    <div class="col-md-6 mt-3">
                                        <button class="btn btn-danger form-control" style=" border-radius: 25px; " onclick="addToCart({$product_info.id})"><i class="fa fa-shopping-cart"></i> Add to cart</button>
                                    </div>
                                    <div class="col-md-6 mt-3">
                                        <a href="//{$smarty.server.SERVER_NAME}/cart">
                                            <button class="btn btn-warning form-control" style=" border-radius: 25px; "><i class="fa fa-angle-double-right"></i> Proceed to cart<i class="fa fa-angle-double-right"></i></button>
                                        </a>
                                    </div>
                                    <div class="col-md-12 p-2">
                                        <!-- AddToAny BEGIN -->
                                        <div class="a2a_kit a2a_kit_size_32 a2a_default_style">
                                            <a class="a2a_dd" href="https://www.addtoany.com/share"></a>
                                            <a class="a2a_button_facebook"></a>
                                            <a class="a2a_button_whatsapp"></a>
                                            <a class="a2a_button_twitter"></a>
                                            <a class="a2a_button_email"></a>
                                            <a class="a2a_button_telegram"></a>
                                            <a class="a2a_button_linkedin"></a>
                                        </div>
                                        <script>
                                            var a2a_config = a2a_config || {};
                                            a2a_config.onclick = 1;
                                            a2a_config.num_services = 4;
                                        </script>
                                        <script async src="https://static.addtoany.com/menu/page.js"></script>
                                        <!-- AddToAny END -->
                                    </div>
                                </div>
                            {/if}
                        </div>
                    </div>
                {else}
                    <div class="col-md-12">
                        <div class="alert alert-danger text-center">
                            <h1><i class="fa fa-exclamation-triangle"></i><br/>Oooooops</h1>
                            <h4>Product not found.</h4>
                            <a href="//{$smarty.server.SERVER_NAME}/shop">
                                <button class="btn btn-danger rounded-0">Shop other items</button>
                            </a>
                        </div>
                    </div>
                {/if}
            </div>
        </div>
    </div>
{/block}
{block name="scripts"}
    <script src="//{$smarty.server.SERVER_NAME}/assets/zoom/js/image-zoom.js" type="text/javascript"></script>
    <script>
        {literal}
            $('#imageZoomExtra').imageZoom({zoom : 300});
        {/literal}
    </script>
{/block}