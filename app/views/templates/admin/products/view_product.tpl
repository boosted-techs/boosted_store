{extends file="admin/index.tpl"}
{block name="body"}
    <!-- Nav tabs -->
    <div class="mt-5">
        <a href="//{$smarty.server.SERVER_NAME}/product/new">
            <button class="btn btn-info rounded-0 float-right mb-2">Add new product</button>
        </a>
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#home">Product summary</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#menu1">Product information</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#menu2">Photos</a>
            </li>
        </ul>
        <div class="tab-content">
            <div id="home" class="container tab-pane active {if $product.product_info.status == 0} bg-danger text-white p-3{/if}">
                <h3>Product summary</h3>
                <a href="//{$smarty.server.SERVER_NAME}/duplicate/{$product.product_info.id}" title="Duplicate item" class="btn btn-dark float-right"><i class="fa fa-copy text-white"></i></a>
                {if $product.product_info.feature_photo != null}
                    <div class="text-center">
                        <a href="//{$smarty.server.SERVER_NAME}/product/{$product.product_info.url}">
                            <img src="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$product.product_info.feature_photo}" class="img-thumbnail" style="width:150px;"/>
                        </a>
                    </div>
                {/if}
                <div class="text-center mt-2">
                    <a class="btn btn-danger rounded-0" href="//{$smarty.server.SERVER_NAME}/product/{$product.product_info.url}">View product on store</a>
                </div>
            </div>
            <div id="menu1" class="container tab-pane fade"><br>
                <h3>Product description</h3>
                <div class="card">
                    <div class="card-header">
                        <h5>New product</h5>
                    </div>
                    <div class="card-body">
                        <form action="//{$smarty.server.SERVER_NAME}/products/update_product" method="post">
                            <label>Product Name</label>
                            <input type="hidden" value="{$product.product_info.id}" name="id"/>
                            <input type="text" class="form-control mt-2 mb-2 rounded-0" required placeholder="eg Sony max 2" value="{$product.product_info.name}" name="product"/>
                            <div class="mt-2 mb-2">
                                <label>Key words</label>
                                <br/>
                                <textarea class="form-control rounded-0" name="keywords" placeholder="Keywords for search engine optimisation">{$product.product_info.keywords}</textarea>
                            </div>
                            <div class="mt-2 mb-2">
                                <label>Size</label>
                                <br/>
                                {foreach $sizes item=list}
                                    <input type="checkbox" onclick="updateProductSizeAttr({$list.id}, {$product.product_info.id}, this) " {if $list.id|in_array:$product.sizes} checked {/if} name="sizes[]" value="{$list.id}" {if $list.status == 0} disabled{/if} > <b>{$list.size}</b>
                                {/foreach}
                            </div>
                            <div class="mt-2 mb-2">
                                <label>Color</label>
                                <br/>
                                {foreach $colors item=list}
                                    <input type="checkbox" onclick="updateProductColorAttr({$list.id}, {$product.product_info.id}, this) " {if $list.id|in_array:$product.colors} checked {/if}{if $list.status == 0} disabled{/if} value="{$list.id}" /> <b>{$list.color}</b>
                                {/foreach}
                            </div>
                            <label>Currency</label>
                            <select name="currency" class="form-control mt-2 mb-2 rounded-0" required >
                                {foreach $currencies item=list}
                                    <option value="{$list.id}" {if $product.product_info.currency == $list.id} selected {/if}{if $list.status == 0} disabled{/if}>{$list.currency}</option>
                                {/foreach}
                            </select>
                            <label>Measurements</label>
                            <select name="measurement" class="form-control mt-2 mb-2 rounded-0" required >
                                {foreach $metrics item=list}
                                    <option value="{$list.id}" {if $product.product_info.metric == $list.id} selected {/if} {if $list.status == 0} disabled{/if}>{$list.metric}</option>
                                {/foreach}
                            </select>
                            <label>Category</label>
                            <select name="category" class="form-control mt-2 mb-2 rounded-0" required >
                                {foreach $categories item=list}
                                    <option value="{$list.id}" {if $product.product_info.category == $list.id} selected {/if} {if $list.status == 0} disabled{/if}>{$list.category}</option>
                                {/foreach}
                            </select>
                            <label>Sub Category</label>
                            <select name="sub-category" class="form-control mt-2 mb-2 rounded-0" required >
                                {foreach $sub_categories item=list}
                                    <option value="{$list.id}" {if $product.product_info.sub_category == $list.id} selected {/if} {if $list.status == 0} disabled{/if}>{$list.category}</option>
                                {/foreach}
                            </select>
                            <label>Suppliers</label>
                            <select name="supplier" class="form-control mt-2 mb-2 rounded-0" required >
                                {foreach $suppliers item=list}
                                    <option value="{$list.id}" {if $product.product_info.supplier == $list.id} selected {/if} {if $list.status == 0} disabled{/if}>{$list.supplier}</option>
                                {/foreach}
                            </select>
                            <label>New Price</label>
                            <input type="number" class="form-control mt-2 mb-2 rounded-0" value="{$product.product_info.price_1}" required  name="price_one"  placeholder="New price"/>
                            <label>Old Price</label>
                            <input type="number" class="form-control mt-2 mb-2 rounded-0" value="{$product.product_info.price_2}" required name="price_two" placeholder="Old price" />
                            <label>Product summary</label>
                            <textarea class="form-control mb-2 mt-2 rounded-0" name="summary" placeholder="Short description to the product">{$product.product_info.summary}</textarea>
                            <label>Product description</label>
                            <textarea class="form-control mb-2 mt-2 rounded-0" name="description" placeholder="Product description">{$product.product_info.description}</textarea>
                            <button class="btn btn-info mt-2 mb-2 rounded-0">Update</button>
                        </form>
                    </div>
                </div>

            </div>
            <div id="menu2" class="container tab-pane fade"><br>
                <div class="dropdown float-right">
                    <button type="button" class="btn btn-dark rounded-0 dropdown-toggle" data-toggle="dropdown">
                        Choose action
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item active" href="javascript:activateFunction('product_images', 1)">Activate</a>
                        <a class="dropdown-item" href="javascript:activateFunction('product_images', 2)">De activate</a>
                    </div>
                </div>
                <button class="btn btn-info float-right rounded-0" onclick="addThumbnail({$product.product_info.id})">Add image</button>
                <button class="btn btn-danger float-right rounded-0" onclick="addThumbnailUrl({$product.product_info.id})">Add image Url <i class="fa fa-link"></i></button>
                <h3>Thumbnails</h3>
                <table class="table table-responsive">
                    <thead>
                    <tr>
                        <th></th>
                        <th></th>
                        <th>Photo</th>
                        <th>Feature Photo</th>
                        <th>Link</th>
                        <th>Date created</th>
                        <th>Status</th>
                        <th>Added by</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    {$i = 1}
                    {foreach $product.thumbnails item=list}
                        <tr class="{if $list.status == 0}  alert alert-danger{/if}">
                            <td>{$i++}</td>
                            <td><input class="checkbox" type="checkbox" value="{$list.id}"/></td>
                            <td>
                                <a href="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.photo}">
                                    <img src="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.photo}" style="width:100px;"/>
                                </a>
                            </td>
                            <td>
                                {if $list.feature_photo == 1}
                                    <a href="//{$smarty.server.SERVER_NAME}/thumbnail/make_feature/{$list.id}/{$list.product}?i=1">Remove feature photo</a>
                                {else}
                                    <a href="//{$smarty.server.SERVER_NAME}/thumbnail/make_feature/{$list.id}/{$list.product}?i=2">
                                        Make feature photo
                                    </a>
                                {/if}
                            </td>
                            <td>
                                {$list.photo}
                            </td>
                            <td>
                                {$list.date_created}
                            </td>
                            <td>
                                {if $list.status == 1} Active {else} Inactive {/if}
                            </td>
                            <td>
                                {$list.names}
                            </td>
                            <td>
                                <a href="//{$smarty.server.SERVER_NAME}/delete_pic?i={$list.photo}">Delete</a>
                            </td>
                        </tr>
                    {/foreach}
                    </tbody>
                </table>
                <div class="dropdown float-right">
                    <button type="button" class="btn btn-dark rounded-0 dropdown-toggle" data-toggle="dropdown">
                        Choose action
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item active" href="javascript:activateFunction('product_images', 1)">Activate</a>
                        <a class="dropdown-item" href="javascript:activateFunction('product_images', 2)">De activate</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
{/block}