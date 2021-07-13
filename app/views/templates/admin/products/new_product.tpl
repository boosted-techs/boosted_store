{extends file="admin/index.tpl"}
{block name="body"}
    <h4 class="p-4 text-center">Add a new Product</h4>

    <div class="card">
        <div class="card-header">
            <h5>New product</h5>
        </div>
        <div class="card-body">
            <form action="//{$smarty.server.SERVER_NAME}/products/add_new_product" method="post">
                <label>Product Name</label>
                <input type="text" class="form-control mt-2 mb-2 rounded-0" required placeholder="eg Sony max 2" name="product"/>
                <div class="mt-2 mb-2">
                    <label>Keywords</label>
                    <br/>
                    <textarea class="form-control rounded-0" name="keywords" placeholder="Keywords for search engine optimisation"></textarea>
                </div>
                <div class="mt-2 mb-2">
                    <label>Size</label>
                    <br/>
                    {foreach $sizes item=list}
                        <input type="checkbox" name="sizes[]" value="{$list.id}" {if $list.status == 0} disabled{/if} > <b>{$list.size}</b>
                    {/foreach}
                </div>
                <div class="mt-2 mb-2">
                    <label>Color</label>
                    <br/>
                    {foreach $colors item=list}
                        <input type="checkbox" {if $list.status == 0} disabled{/if} value="{$list.id}" name="color[]" /> <b>{$list.color}</b>
                    {/foreach}
                </div>
                <label>Currency</label>
                <select name="currency" class="form-control mt-2 mb-2 rounded-0" required>
                    {foreach $currencies item=list}
                        <option value="{$list.id}" {if $list.status == 0} disabled{/if}>{$list.currency}</option>
                    {/foreach}
                </select>
                <label>Measurements</label>
                <select name="measurement" class="form-control mt-2 mb-2 rounded-0" required>
                    {foreach $metrics item=list}
                        <option value="{$list.id}" {if $list.status == 0} disabled{/if}>{$list.metric}</option>
                    {/foreach}
                </select>
                <label>Category</label>
                <select name="category" class="form-control mt-2 mb-2 rounded-0" required>
                    {foreach $categories item=list}
                        <option value="{$list.id}" {if $list.status == 0} disabled{/if}>{$list.category}</option>
                    {/foreach}
                </select>
                <label>Sub Category</label>
                <select name="sub-category" class="form-control mt-2 mb-2 rounded-0" required>
                    {foreach $sub_categories item=list}
                        <option value="{$list.id}" {if $list.status == 0} disabled{/if}>{$list.category}</option>
                    {/foreach}
                </select>
                <label>Suppliers</label>
                <select name="supplier" class="form-control mt-2 mb-2 rounded-0" required>
                    {foreach $suppliers item=list}
                        <option value="{$list.id}" {if $list.status == 0} disabled{/if}>{$list.supplier}</option>
                    {/foreach}
                </select>
                <label>New Price</label>
                <input type="number" class="form-control mt-2 mb-2 rounded-0" required  name="price_one"  placeholder="New price"/>
                <label>Old Price</label>
                <input type="number" class="form-control mt-2 mb-2 rounded-0" required name="price_two" placeholder="Old price" />
                <label>Product summary</label>
                <textarea class="form-control mb-2 mt-2 rounded-0"  name="summary" placeholder="Short description to the product"></textarea>
                <label>Product description</label>
                <textarea class="form-control mb-2 mt-2 rounded-0"  name="description" placeholder="Product description"></textarea>
                <button class="btn btn-info mt-2 mb-2 rounded-0 form-control">SAVE</button>
            </form>
        </div>
    </div>
{/block}