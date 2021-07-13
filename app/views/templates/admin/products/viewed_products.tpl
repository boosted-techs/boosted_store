{extends file="admin/index.tpl"}
{block name="body"}
    <h4 class="p-4 text-center">Viewed Products</h4>
    <div class="dropdown float-right">
        <button type="button" class="btn btn-dark rounded-0 dropdown-toggle" data-toggle="dropdown">
            Choose action
        </button>
        <div class="dropdown-menu">
            <a class="dropdown-item active" href="javascript:activateFunction('products', 1)">Activate</a>
            <a class="dropdown-item" href="javascript:activateFunction('products', 2)">De activate</a>
            <a class="dropdown-item" href="javascript:addToSpecialCategory('products_special_offers', 1)">Add to Special offers</a>
            <a class="dropdown-item" href="javascript:addToSpecialCategory('products_special_offers', 2)">Remove from Special offers</a>
            <a class="dropdown-item" href="javascript:addToSpecialCategory('products_featured', 1)">Add to featured products</a>
            <a class="dropdown-item" href="javascript:addToSpecialCategory('products_featured', 2)">Remove from featured products</a>
            <a class="dropdown-item" href="javascript:addToSpecialCategory('products_best_deals', 1)">Add to best deal products</a>
            <a class="dropdown-item" href="javascript:addToSpecialCategory('products_best_deals', 2)">Remove from best deal products</a>
        </div>
    </div>
    <a href="//{$smarty.server.SERVER_NAME}/products/viewed">
        <button class="btn btn-primary rounded-0 float-right mb-2">Viewed Products</button>
    </a>
    <a href="//{$smarty.server.SERVER_NAME}/product/new">
        <button class="btn btn-info rounded-0 float-right mb-2">Add new product</button>
    </a>
    <table class="table table-responsive">
        <thead>
        <tr>
            <th></th>
            <th></th>
            <th></th>
            <th>Product</th>
            <th>Category</th>
            <th>Date created</th>
            <th>Date Updated</th>
            <th>Status</th>
            <th>Views</th>
        </tr>
        </thead>
        <tbody>
        {$i = 1}
        {foreach $products item=list}
            <tr class="{if $list.status == 0} alert alert-danger{/if}">
                <td>{$i++}</td>
                <td><input type="checkbox" class="checkbox" value="{$list.product}"/></td>
                <td>{if $list.feature_photo} <img src="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.feature_photo}" class="img-thumbnail" style="width:200px;"/>{else}<b>No photo</b>{/if}</b></td>
                <td>
                    <a href="//{$smarty.server.SERVER_NAME}/dashboard/{$list.url}">{$list.name}</a>
                <br/>
                    <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                        <button class="btn btn-sm btn-dark">view <br/> On store</button> </a>
                </td>
                <td>{$list.product_category} <i class="fa fa-angle-right"></i> {$list.product_sub_category}</td>
                <td>{$list.date_added}</td>
                <td>{$list.date_updated}</td>
                <td>{if $list.status == 0} Inactive {else}Active{/if}</td>
                <td>{$list.views}</td>
            </tr>
        {/foreach}
        </tbody>
    </table>
    <div class="dropdown float-right">
        <button type="button" class="btn btn-dark rounded-0 dropdown-toggle" data-toggle="dropdown">
            Choose action
        </button>
        <div class="dropdown-menu">
            <a class="dropdown-item active" href="javascript:activateFunction('products', 1)">Activate</a>
            <a class="dropdown-item" href="javascript:activateFunction('products', 2)">De activate</a>
        </div>
    </div>
{/block}